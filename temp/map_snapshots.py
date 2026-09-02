# -*- coding: utf-8 -*-
import os, json, glob, urllib.parse, datetime, re
ap = os.environ['APPDATA']
base = os.path.join(ap, 'Code', 'User', 'History')

def get_resource(ef):
    try:
        d = json.load(open(ef, encoding='utf-8', errors='ignore'))
        res = d.get('resource', '')
        if res.startswith('file:///'):
            # file:///d%3A/... -> d:/...
            path = res[len('file:///'):]
            path = urllib.parse.unquote(path)
            path = re.sub(r'^([A-Za-z])%3A', r'\1:', path)
            return path
    except Exception:
        pass
    return None

print('=== 09-03 编辑文件映射(时间 | 文件路径 | 快照文件) ===')
rows = []
for ef in glob.glob(os.path.join(base, '*', 'entries.json')):
    res = get_resource(ef)
    if not res or 'RedDaw_beta' not in res:
        continue
    d = os.path.dirname(ef)
    for snap in glob.glob(os.path.join(d, '*')):
        if os.path.isfile(snap) and 'entries' not in snap:
            ts = os.path.getmtime(snap)
            dt = datetime.datetime.fromtimestamp(ts)
            if dt.strftime('%m-%d') == '09-03':
                rows.append((ts, res, os.path.basename(snap)))
rows.sort(reverse=True)
for ts, res, snap in rows:
    print(datetime.datetime.fromtimestamp(ts).strftime('%m-%d %H:%M:%S'), '|', res.split('RedDaw_beta')[-1], '|', snap)
