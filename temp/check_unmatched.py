# -*- coding: utf-8 -*-
import json, os, subprocess, datetime
from urllib.parse import unquote

# 1) 3 个未匹配快照的时间戳
base = os.path.join(os.environ['APPDATA'], 'Code', 'User', 'History')
targets = ['national_focus_PRC_taiwan_war', 'PLA_nl_tech', 'PTF_l_simp_chinese.yml']
found = {}
for d in os.listdir(base):
    ef = os.path.join(base, d, 'entries.json')
    if not os.path.isfile(ef):
        continue
    try:
        dd = json.load(open(ef, encoding='utf-8', errors='ignore'))
        res = dd.get('resource', '')
        if 'RedDaw_beta' not in res:
            continue
        ents = dd.get('entries', [])
        if not ents:
            continue
        mx = max(e.get('timestamp', 0) for e in ents)
        u = unquote(res).replace('file:///', '').replace('\\', '/')
        name = u.split('mod/')[-1].replace('/', '_')
        for t in targets:
            if t in name:
                found.setdefault(name, []).append((mx, res))
    except Exception:
        pass
print('== 3 个未匹配快照的最后编辑时间:')
for name, lst in sorted(found.items()):
    ts, res = max(lst)
    print(' ', datetime.datetime.fromtimestamp(ts / 1000).strftime('%m-%d %H:%M:%S'), name)

# 2) HEAD 树的对应文件与 test-branch 树对应文件内容差异判断是否同名改写
def git_tree_file(ref, path):
    r = subprocess.run(['git', 'show', ref + ':' + path], capture_output=True)
    return r.stdout if r.returncode == 0 else None

pairs = [
    ('common/national_focus/TFR_national_focus_PRC_taiwan_war.txt',
     'common/national_focus/TFR_RD_national_focus_PRC_taiwan_war.txt'),
    ('localisation/simp_chinese/PTF_l_simp_chinese.yml',
     'localisation/simp_chinese/RD_country_localisation_PTF_l_simp_chinese.yml'),
]
print('\n== HEAD 版本 vs test-branch 版本 是否同一文件(相似度):')
for tb, head in pairs:
    a = git_tree_file('origin/test-branch', tb)
    b = git_tree_file('HEAD', head)
    if a is None or b is None:
        print(' ', tb, '-> 缺失, tb:', a is not None, 'head:', b is not None)
        continue
    same = a == b
    print(f'  {tb}: 字节 tb={len(a)} head={len(b)} 完全相同={same}')

# 3) beta 是否有 PLA_nl_tech 等价物
r = subprocess.run(['git', 'ls-tree', '-r', 'HEAD', '--name-only'],
                   capture_output=True, text=True)
pl = [p for p in r.stdout.splitlines() if 'nl_tech' in p.lower() or 'PLA_nl' in p]
print('\n== HEAD 中含 nl_tech 的文件:', pl)
