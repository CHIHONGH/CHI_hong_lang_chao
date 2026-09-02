# -*- coding: utf-8 -*-
import json, glob, os, datetime
from urllib.parse import unquote

base = os.path.join(os.environ['APPDATA'], 'Code', 'User', 'History')
rows = []
for f in glob.glob(os.path.join(base, '*', 'entries.json')):
    try:
        d = json.load(open(f, encoding='utf-8', errors='ignore'))
        res = d.get('resource', '')
        if 'RedDaw_beta' not in res:
            continue
        ents = d.get('entries', [])
        if not ents:
            continue
        max_ts = max(e.get('timestamp', 0) for e in ents)
        u = unquote(res).replace('file:///', '').replace('\\', '/')
        name = u.split('mod/')[-1].replace('/', '_')
        rows.append((max_ts, name))
    except Exception:
        pass

rows.sort()
print('RedDaw_beta 资源数:', len(rows))
print('== 最后编辑时间(最晚在前,显示前 16):')
for ts, n in reversed(rows[-16:]):
    t = datetime.datetime.fromtimestamp(ts / 1000).strftime('%m-%d %H:%M:%S')
    print(f'  {t}  {n}')
