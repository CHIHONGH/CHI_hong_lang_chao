# -*- coding: utf-8 -*-
"""冲突文件归属清单:哪些用户改过(VSCode 历史有记录),哪些是 test-branch 独有"""
import json, os, subprocess, glob, datetime
from urllib.parse import unquote
from collections import defaultdict

# 1) VSCode 历史:用户 09-01~09-03 编辑过的文件(按 resource 顶层)
base = os.path.join(os.environ['APPDATA'], 'Code', 'User', 'History')
user_edited = {}  # path -> 最后一次编辑时间
for f in glob.glob(os.path.join(base, '*', 'entries.json')):
    try:
        d = json.load(open(f, encoding='utf-8', errors='ignore'))
        res = d.get('resource', '')
        if 'RedDaw_beta' not in res:
            continue
        ents = d.get('entries', [])
        if not ents:
            continue
        mx = max(e.get('timestamp', 0) for e in ents)
        u = unquote(res).replace('file:///', '').replace('\\', '/')
        # 剥掉 mod/RedDaw_beta/ 前缀
        if 'mod/' in u:
            u = u.split('mod/')[1]
        if '/' in u:
            u = u.split('/', 1)[1]
        if not u.startswith('RedDaw_beta'):
            rel = u
        else:
            rel = u.split('/', 1)[1] if '/' in u else u
        cur = user_edited.get(rel, 0)
        if mx > cur:
            user_edited[rel] = mx
    except Exception:
        pass

# 2) 当前合并冲突清单
r = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
raw = r.stdout.decode('utf-8', errors='ignore')
conflicts = []
for item in raw.split('\x00'):
    if not item.strip():
        continue
    st = item[:2]
    if st in ('UU', 'AA', 'DD', 'AU', 'UA', 'DU', 'UD'):
        conflicts.append((st, item[3:]))

# 3) test-branch 独有(不在 HEAD 存在)
r = subprocess.run(['git', 'ls-tree', '-r', 'HEAD', '--name-only'], capture_output=True, text=True)
head_files = set(r.stdout.splitlines())
r = subprocess.run(['git', 'ls-tree', '-r', 'origin/test-branch', '--name-only'], capture_output=True, text=True)
tb_files = set(r.stdout.splitlines())

# 4) 输出
print(f'共 {len(conflicts)} 个冲突文件')
print(f'VSCode 历史中用户编辑过: {len(user_edited)} 个')
print('\n{}  {}  {}'.format('状态', '用户改过?', '文件'))
print('- ' * 60)

edited_list = []
tb_only_list = []
both_list = []
for st, p in conflicts:
    if p in user_edited:
        edited_list.append((st, p))
    elif p not in head_files:  # test-branch 新增
        tb_only_list.append((st, p))
    else:
        both_list.append((st, p))

print(f'\n【A 类】你 VSCode 改过的({len(edited_list)} 个)——取舍看你的版本:')
for st, p in sorted(edited_list):
    t = datetime.datetime.fromtimestamp(user_edited[p] / 1000).strftime('%m-%d %H:%M')
    print(f'  {st} {t}  {p}')

print(f'\n【B 类】test-branch 新增、你历史里没有({len(tb_only_list)} 个)——这些是你没碰过的文件:')
for st, p in sorted(tb_only_list):
    print(f'  {st}  {p}')

print(f'\n【C 类】两边都改过、你 VSCode 历史没记录({len(both_list)} 个):')
for st, p in sorted(both_list):
    print(f'  {st}  {p}')

# 存文件
with open('temp/merge_conflicts_categorized.txt', 'w', encoding='utf-8') as fh:
    fh.write(f'冲突总数 {len(conflicts)}\n')
    fh.write(f'\n【A 类】VSCode 用户改过 {len(edited_list)}:\n')
    for st, p in sorted(edited_list):
        fh.write(f'  {st}  {p}\n')
    fh.write(f'\n【B 类】test-branch 新增 {len(tb_only_list)}:\n')
    for st, p in sorted(tb_only_list):
        fh.write(f'  {st}  {p}\n')
    fh.write(f'\n【C 类】两边都改 {len(both_list)}:\n')
    for st, p in sorted(both_list):
        fh.write(f'  {st}  {p}\n')
print('\n已存 temp/merge_conflicts_categorized.txt')
