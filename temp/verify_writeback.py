# -*- coding: utf-8 -*-
"""写回文件校验:冲突标记 + 括号平衡抽查"""
import subprocess, glob, os

# 用 -z 获取工作区修改清单(准确解析含空格路径)
r2 = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
raw = r2.stdout.decode('utf-8', errors='ignore')
files = []
for item in raw.split('\x00'):
    if not item.strip():
        continue
    st = item[:2]
    if st == ' M' or st == 'M ':
        files.append(item[3:])

conflict = []
for f in files:
    try:
        data = open(f, 'r', encoding='utf-8', errors='ignore').read()
    except OSError:
        continue
    if '<<<<<<<' in data or '>>>>>>>' in data or ('=======' in data and '<<<<<<<' in data):
        conflict.append(f)
print('含冲突标记的文件:', conflict if conflict else '无')

# 括号平衡抽查:大文件
checks = [
    'history/countries/PTF - Patriot Front.txt',
    'history/countries/PRC - ComChina.txt',
    'common/decisions/TFR_RD_PRC-cultrue.txt',
    'common/decisions/TFR_decisions_PTF.txt',
    'common/ideas/TFR_ideas_PRC.txt',
    'common/ideas/TFR_RD_ideas_PTF.txt',
    'common/national_focus/TFR_national_focus_PRC.txt',
    'common/scripted_guis/RD_TFR_states_decisions_GUI.txt',
]
for f in checks:
    if not os.path.isfile(f):
        continue
    data = open(f, 'r', encoding='utf-8', errors='ignore').read()
    o = data.count('{')
    c = data.count('}')
    mark = 'OK' if o == c else '!!! 不平衡'
    print(f'  {o}:{c} {mark} {f}')

# 统计写回与HEAD的 diff 规模
print('\n== 写回改动规模(top 变动最大的10个,行数):')
d = subprocess.run(['git', 'diff', '--shortstat'], capture_output=True, text=True)
print(d.stdout.strip())
