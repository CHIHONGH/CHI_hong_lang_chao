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

# 计时器/开关/状态机:不给 ai_will_do
def is_timerish(name, body):
    n = name.lower()
    if 'toogle' in n or 'toggle' in n:
        return True
    if '_timer' in n or 'countdown' in n or n.endswith('_cd') or 'jingjicd' in n or 'seize_factory' in n:
        return True
    if 'selectable_mission = no' in body and ('days_mission_timeout' in body or 'mission_timeout' in body):
        return True
    if 'days_remove' in body and 'mission' in n:
        return True
    return False

def split_decisions(path):
    t = io.open(path, encoding='utf-8').read()
    lines = t.split('\n')
    # 检测缩进风格:决议行缩进 = 1 tab 或 4 空格
    indent = None
    for ln in lines:
        if ln.startswith('\t') and not ln.startswith('\t\t'):
            indent = '\t'; break
        if ln.startswith('    ') and not ln.startswith('        '):
            indent = '    '; break
    if indent is None:
        return []
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
                body = '\n'.join(lines[i:j])
                res.append((name, body, i))
                i = j
                continue
        i += 1
    return res

out = []
for p in FILES:
    rows = split_decisions(p)
    missing = [(n, b) for n, b, _ in rows if 'ai_will_do' not in b]
    timers = [(n, b) for n, b in missing if is_timerish(n, b)]
    normal = [(n, b) for n, b in missing if not is_timerish(n, b)]
    out.append('## %s (总%d 缺ai%d 计时/开关%d 待加%d)' % (
        os.path.basename(p), len(rows), len(missing), len(timers), len(normal)))
    if timers:
        out.append('  [排除·计时器/开关] ' + ', '.join(n for n, _ in timers))
    if normal:
        out.append('  [待加] ' + ', '.join(n for n, _ in normal))

io.open('temp/classify_out2.txt', 'w', encoding='utf-8').write('\n'.join(out))
print('ok')