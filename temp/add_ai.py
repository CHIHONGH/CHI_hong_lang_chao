# -*- coding: utf-8 -*-
import io, re, os

FILES = [
 'common/decisions/TFR_RD_PRC-cultrue.txt',
 'common/decisions/TFR_RD_decision_research.txt',
 'common/decisions/TFR_RD_PLA-new_left.txt',
 'common/decisions/TFR_RD_space_militarization.txt',
 'common/decisions/TFR_RD_PRC_elec_warfare.txt',
 'common/decisions/TFR_decisions_PRC.txt',
]

# 计时器/开关/状态机:不加
def is_timerish(name, body):
    n = name.lower()
    if 'toogle' in n or 'toggle' in n:
        return True
    if '_timer' in n or 'countdown' in n or 'jingjicd' in n or 'seize_factory' in n:
        return True
    if 'selectable_mission = no' in body and 'mission_timeout' in body:
        return True
    if 'days_remove' in body and 'mission' in n:
        return True
    return False

def split_decisions(path):
    t = io.open(path, encoding='utf-8').read()
    lines = t.split('\n')
    indent = None
    for ln in lines:
        if ln.startswith('\t') and not ln.startswith('\t\t'):
            indent = '\t'; break
        if ln.startswith('    ') and not ln.startswith('        '):
            indent = '    '; break
    if indent is None:
        return [], None
    res = []
    i = 0
    while i < len(lines):
        ln = lines[i]
        if ln.startswith(indent) and not ln.startswith(indent + indent):
            s = ln.strip()
            m = re.match(r'^([a-zA-Z_][a-zA-Z0-9_]*) = \{', s)
            if m:
                name = m.group(1)
                j = i + 1
                while j < len(lines):
                    ns = lines[j]
                    if ns.startswith(indent) and not ns.startswith(indent + indent) and re.match(r'^[a-zA-Z_][a-zA-Z0-9_]* = \{', ns.strip()):
                        break
                    j += 1
                res.append((name, i, j))
                i = j
                continue
        i += 1
    return res, indent

total_added = 0
for p in FILES:
    rows, indent = split_decisions(p)
    if indent is None:
        print('!! 无法识别缩进: %s' % p); continue
    t = io.open(p, encoding='utf-8').read()
    lines = t.split('\n')
    # 从后往前插入,避免行号偏移
    to_insert = []
    for name, i, j in rows:
        body = '\n'.join(lines[i:j])
        if 'ai_will_do' in body:
            continue
        if is_timerish(name, body):
            continue
        ai_block = indent + 'ai_will_do = {' + '\n' + indent + indent + 'base = 100' + '\n' + indent + '}' + '\n'
        to_insert.append((i, ai_block))
    inserted = 0
    for i, block in sorted(to_insert, reverse=True):
        lines.insert(i, block)
        inserted += 1
    io.open(p, 'w', encoding='utf-8').write('\n'.join(lines))
    print('%s: +%d ai_will_do' % (os.path.basename(p), inserted))
    total_added += inserted
print('TOTAL:', total_added)