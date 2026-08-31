# -*- coding: utf-8 -*-
import io, re

p = 'common/decisions/TFR_decisions_PRC.txt'
t = io.open(p, encoding='utf-8').read()
lines = t.split('\n')

names = ['PRC_improve_the_environmental_friendliness_of_military_factories',
         'PRC_improve_the_environmental_friendliness_of_civilian_factories',
         'PRC_improve_the_environmental_friendliness_of_military_factories_2',
         'PRC_improve_the_environmental_friendliness_of_civilian_factories_2']

# 找每个决议块起始行(1 tab 缩进 + 名字 = {)
starts = {}
for i, ln in enumerate(lines):
    m = re.match(r'^\t([a-zA-Z_][a-zA-Z0-9_]*) = \{', ln)
    if m and m.group(1) in names:
        starts[m.group(1)] = i

# 块边界:到下一个 1-tab 决议行或与名字匹配的下一处
order = sorted(starts.items(), key=lambda kv: kv[1])
bounds = []
for idx, (nm, s) in enumerate(order):
    e = order[idx+1][1] if idx+1 < len(order) else len(lines)
    bounds.append((nm, s, e))

changed = 0
for nm, s, e in bounds:
    seg = lines[s:e]
    # 找到 ai_will_do 块:ai_will_do = { ... base = N ... }
    for i, ln in enumerate(seg):
        if re.match(r'^\t+ai_will_do = \{', ln):
            for j in range(i, len(seg)):
                m = re.match(r'^(\t+)base = (\d+)', seg[j])
                if m:
                    seg[j] = m.group(1) + 'base = 0'
                    changed += 1
                    break
            break
    lines[s:e] = seg

io.open(p, 'w', encoding='utf-8').write('\n'.join(lines))
print('changed:', changed)