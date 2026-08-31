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

def split_decisions(path):
    t = io.open(path, encoding='utf-8').read()
    lines = t.split('\n')
    res = []
    for i, ln in enumerate(lines):
        if ln.startswith('    ') and not ln.startswith('        '):
            s = ln.strip()
            m = re.match(r'^([a-zA-Z_][a-zA-Z0-9_]*) = \{', s)
            if m and ('Mission' in m.group(1) or 'mission' in m.group(1) or m.group(1).endswith('_timer')):
                continue
            if m:
                nm = m.group(1)
                j = i + 1
                while j < len(lines):
                    ns = lines[j].strip()
                    if lines[j].startswith('    ') and not lines[j].startswith('        ') and re.match(r'^[a-zA-Z_][a-zA-Z0-9_]* = \{', ns):
                        break
                    j += 1
                body = '\n'.join(lines[i:j])
                has_ai = 'ai_will_do' in body
                # 计时器/状态机判定:文件名是 culture/decision_research 时按内容特征
                res.append((nm, has_ai, i+1, body))
    return res

def is_timerish(nm, body):
    # 命名特征:Toogle/_toggle/切换/计数键 jingjiCd/people_seize/状态机
    if 'Toogle' in nm or 'toogle' in nm:
        return True
    if re.search(r'jingji[Cc]d\d|jingji\d+_d\d', nm):
        return True
    if re.search(r'people_seize_factory\d', nm):
        return True
    if 'mission' in nm.lower() or '_timer' in nm:
        return True
    if re.search(r'days_mission_timeout|selectable_mission|days_remove = \d+', body):
        return True
    return False

out = []
for p in FILES:
    rows = split_decisions(p)
    miss = [(n, L, b) for (n, h, L, b) in rows if not h]
    timers = [(n, L) for (n, L, b) in miss if is_timerish(n, b)]
    normal = [(n, L) for (n, L, b) in miss if not is_timerish(n, b)]
    out.append('## %s (决议%d 缺ai%d, 计时器类%d, 待加%d)' % (os.path.basename(p), len(rows), len(miss), len(timers), len(normal)))
    if timers:
        out.append('  [计时器类·不加] ' + ', '.join(n for n,_ in timers))
    if normal:
        out.append('  [待加] ' + ', '.join(n for n,_ in normal))

io.open('temp/classify_out.txt','w',encoding='utf-8').write('\n'.join(out))
print('ok')