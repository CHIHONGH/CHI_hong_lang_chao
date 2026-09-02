# -*- coding: utf-8 -*-
import json, glob, os, datetime
from urllib.parse import unquote

base = os.path.join(os.environ['APPDATA'], 'Code', 'User', 'History')
targets = ['zzz_RD_TFR_peace', 'script_enums', 'TFR_RD_PTF_scripted_effects',
           'RD_TFR_states_decisions_GUI', 'TFR_organizations_PRC', 'PRC_eventpictures',
           'RD_PRC_mio', 'RD_PTF_ideas', 'space_force_unit']
found = {}
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
        name = u.split('mod/')[-1].replace('/', '_')
        for t in targets:
            if t in name:
                found.setdefault(t, []).append((mx, name))
    except Exception:
        pass
for t in targets:
    lst = sorted(found.get(t, []))
    if lst:
        ts, n = lst[-1]
        print(datetime.datetime.fromtimestamp(ts / 1000).strftime('%m-%d %H:%M:%S'), n)
    else:
        print('未找到:', t)
