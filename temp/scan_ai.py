# -*- coding: utf-8 -*-
import io, os, re, glob

DEC_DIR = 'common/decisions'
files = sorted(glob.glob(os.path.join(DEC_DIR, '*.txt')))
# 只保留中国(PRC)相关:文件名含 PRC / PLA / 中俄谈判 CRN / 中蒙 CMRN / 文化 cultrue / 革命 revolution / 太空 militarization / 电子战 elec / 研究 research
keep = []
for f in files:
    base = os.path.basename(f)
    if any(k in base for k in ('PRC','PLA','CMRN','CRN','cultrue','revolution','militarization','elec','research','NAX')):
        keep.append(f)

def split_decisions(path):
    """按顶层类别块内 1-tab 决议行拆块;返回 [(decision_id, has_ai, lines区间)]"""
    t = io.open(path, encoding='utf-8').read()
    lines = t.split('\n')
    # 找"1 tab 缩进且形如 xxx = {"的行=决议起点;决策在顶层类别块内
    # 简易:1 tab 缩进且行首非空格、以 = { 结尾、不属关键字
    KW = {'visible','available','complete_effect','remove_effect','hidden_effect','ai_will_do',
          'fire_only_once','days_remove','cancel_trigger','cancel_decision','effect_tooltip',
          'select_effect','allowed','available_when_in_danger','cost','icon','targeted_modifier',
          'modifier','random_hours','show_decision','is_debug','days','value','type','limit','trigger'}
    starts = []
    for i, ln in enumerate(lines):
        if ln.startswith('\t') and not ln.startswith('\t\t'):
            s = ln.strip()
            m = re.match(r'^([a-zA-Z_][a-zA-Z0-9_]*) = \{', s)
            if m:
                name = m.group(1)
                if name not in KW and not s.startswith('#') and s.endswith('{'):
                    # 排除顶层类别(无缩进)已被上面条件排除
                    starts.append((i, name))
    res = []
    for idx, (i, name) in enumerate(starts):
        end = starts[idx+1][0] if idx+1 < len(starts) else len(lines)
        body = '\n'.join(lines[i:end])
        has_ai = ('ai_will_do' in body)
        res.append((name, has_ai))
    return res

out = []
for f in keep:
    rows = split_decisions(f)
    missing = [(n, h) for n, h in rows if not h]
    out.append('## %s (共%d, 缺ai_will_do=%d)' % (os.path.basename(f), len(rows), len(missing)))
    for n, h in missing:
        out.append('   - %s' % n)

io.open('temp/scan_ai_out.txt','w',encoding='utf-8').write('\n'.join(out))
print('files:', len(keep), 'total decisions scanned')