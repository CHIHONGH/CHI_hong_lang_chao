# -*- coding: utf-8 -*-
import subprocess, os, difflib

def head_file(path):
    r = subprocess.run(['git', 'show', 'HEAD:' + path], capture_output=True)
    return r.stdout.decode('utf-8', errors='ignore') if r.returncode == 0 else None

def tb_file(path):
    r = subprocess.run(['git', 'show', 'origin/test-branch:' + path], capture_output=True)
    return r.stdout.decode('utf-8', errors='ignore') if r.returncode == 0 else None

def snap_file(name):
    p = os.path.join('temp/recovered_all_uniq', name)
    return open(p, encoding='utf-8', errors='ignore').read() if os.path.isfile(p) else None

def ratio(a, b):
    if a is None or b is None:
        return None
    sm = difflib.SequenceMatcher(None, a, b)
    return round(sm.ratio(), 3)

cases = [
    ('taiwan_war', 'common_national_focus_TFR_national_focus_PRC_taiwan_war.txt',
     'common/national_focus/TFR_national_focus_PRC_taiwan_war.txt',
     'common/national_focus/TFR_RD_national_focus_PRC_taiwan_war.txt'),
    ('PTF loc', 'localisation_simp_chinese_PTF_l_simp_chinese.yml',
     'localisation/simp_chinese/PTF_l_simp_chinese.yml',
     'localisation/simp_chinese/RD_country_localisation_PTF_l_simp_chinese.yml'),
    ('PLA_nl_tech', 'common_technologies_PLA_nl_tech.txt',
     'common/technologies/PLA_nl_tech.txt', None),
]
for label, snap, tb_p, head_p in cases:
    s = snap_file(snap)
    t = tb_file(tb_p)
    h = head_file(head_p) if head_p else None
    print(f'== {label}')
    print(f'   快照 vs test-branch: {ratio(s, t)}')
    print(f'   快照 vs HEAD({head_p}): {ratio(s, h)}')
    if t and h:
        print(f'   test-branch vs HEAD: {ratio(t, h)}')
    print(f'   快照大小={len(s) if s else 0}  tb={len(t) if t else 0}  head={len(h) if h else 0}')

# PLA_nl_tech 在其他 beta 文件里有没有等价科技
s = snap_file('common_technologies_PLA_nl_tech.txt')
if s:
    import re
    ids = re.findall(r'^[\t ]*([a-zA-Z0-9_]+)\s*=\s*\{', s, re.M)
    print('\nPLA_nl_tech.txt 中定义的技术id:', ids[:20])
    for tech in ids[:10]:
        r = subprocess.run(['git', 'grep', '-l', tech, 'HEAD', '--', 'common/technologies/'],
                           capture_output=True, text=True)
        print(f'   {tech}: beta technologies 中出现={bool(r.stdout.strip())}')
