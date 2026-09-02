# -*- coding: utf-8 -*-
import json, glob, os
base = os.path.join(os.environ['APPDATA'], 'Code', 'User', 'History')
count = 0
paths = []
for f in glob.glob(os.path.join(base, '*', 'entries.json')):
    try:
        d = json.load(open(f, encoding='utf-8', errors='ignore'))
        for e in d.get('entries', []):
            p = e.get('resource', '').replace('\\\\', '/')
            if 'RedDaw_beta' in p:
                count += 1
                if len(paths) < 40:
                    paths.append(p.split('mod/')[-1])
    except Exception:
        pass
print('RedDaw_beta 历史快照文件总数:', count)
for p in paths:
    print('  ', p)
