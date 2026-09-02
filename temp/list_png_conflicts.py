# -*- coding: utf-8 -*-
import subprocess
from collections import Counter

r = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
raw = r.stdout.decode('utf-8', errors='ignore')
pngs = []
for item in raw.split('\x00'):
    if not item.strip():
        continue
    st = item[:2]
    if st in ('UU', 'AA', 'DD', 'AU', 'UA', 'DU', 'UD'):
        p = item[3:]
        if p.lower().endswith('.png'):
            pngs.append((st, p))
print('冲突 PNG 总数:', len(pngs))
print('类型分布:', dict(Counter(s for s, _ in pngs)))
print()
for st, p in pngs:
    print(f'{st}  {p}')
