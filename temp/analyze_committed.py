# -*- coding: utf-8 -*-
"""66 个提交文件:快照 vs test-branch 同路径 相似度,找非手写(纯合并态带入)文件"""
import subprocess, difflib, json, os

# 从 b33142b 拿提交清单
r = subprocess.run(['git', 'show', '--name-only', '--format=', 'b33142b'], capture_output=True, text=True)
committed = [x for x in r.stdout.splitlines() if x.strip()]

snap_map = json.load(open('temp/snap_mapping.json', encoding='utf-8'))

def blob(ref, path):
    rr = subprocess.run(['git', 'show', ref + ':' + path], capture_output=True)
    return rr.stdout if rr.returncode == 0 else None

def snap_for(path):
    key = path.replace('/', '_')
    fn = snap_map.get(key, '')
    if not fn:
        return None
    return open('temp/recovered_all_uniq/' + key, 'rb').read()

rows = []
for p in committed:
    s = snap_for(p)
    if s is None:
        rows.append((p, None, None))
        continue
    tb = blob('origin/test-branch', p)
    head = blob('HEAD', p)
    # 相似度(文本)
    try:
        st, tt, ht = s.decode('utf-8', 'ignore'), (tb or b'').decode('utf-8', 'ignore'), (head or b'').decode('utf-8', 'ignore')
        sim_tb = round(difflib.SequenceMatcher(None, st, tt).ratio(), 3) if tb is not None else None
        sim_head = round(difflib.SequenceMatcher(None, st, ht).ratio(), 3) if head is not None else None
    except Exception:
        sim_tb = sim_head = None
    rows.append((p, sim_tb, sim_head))

print(f'{"文件":<75} {"vsTB":>6} {"vsHEAD":>7}')
rows.sort(key=lambda x: (-(x[1] if x[1] is not None else -1)))
for p, a, b in rows:
    sa = f'{a:.2f}' if a is not None else '  -'
    sb = f'{b:.2f}' if b is not None else '  -'
    print(f'{p:<75} {sa:>6} {sb:>7}')

# 分组:vsTB>=0.999 判定"快照==test-branch 原版"
print('\n== 快照 == test-branch(用户未见手写痕迹):')
print('\n'.join(p for p, a, b in rows if a is not None and a >= 0.999))
print('\n== 快照 == HEAD(写回无实际差异):')
print('\n'.join(p for p, a, b in rows if b is not None and b >= 0.999 and (a is None or a < 0.999)))
