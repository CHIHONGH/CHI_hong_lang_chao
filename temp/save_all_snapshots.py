# -*- coding: utf-8 -*-
# 全量扫描:09-03 任何 mod 路径下的编辑快照(不限 RedDaw_beta),多版本取最新
import os, json, glob, urllib.parse, datetime, re, shutil
ap = os.environ['APPDATA']
base = os.path.join(ap, 'Code', 'User', 'History')
out = os.path.join('temp', 'recovered')
os.makedirs(out, exist_ok=True)

MOD_ROOT = 'Documents/Paradox Interactive/Hearts of Iron IV/mod'

def get_resource(ef):
    try:
        d = json.load(open(ef, encoding='utf-8', errors='ignore'))
        res = d.get('resource', '')
        if res.startswith('file:///'):
            path = urllib.parse.unquote(res[len('file:///'):])
            path = re.sub(r'^([A-Za-z])%3A', r'\1:', path)
            return path.replace('\\', '/')
    except Exception:
        pass
    return None

rows = []
for ef in glob.glob(os.path.join(base, '*', 'entries.json')):
    res = get_resource(ef)
    if not res or MOD_ROOT not in res:
        continue
    d = os.path.dirname(ef)
    for snap in glob.glob(os.path.join(d, '*')):
        if os.path.isfile(snap) and 'entries' not in snap:
            ts = os.path.getmtime(snap)
            rows.append((ts, res, os.path.basename(snap)))

rows.sort()
print(f'总快照数(09 起全部时间): {len(rows)}')

# 按 resource 分组,每文件保留多个版本(带时间戳命名)
groups = {}
for ts, res, snap in rows:
    groups.setdefault(res, []).append((ts, snap))

copied = 0
for res, snaps in groups.items():
    snaps.sort()
    for ts, snap in snaps:
        dt = datetime.datetime.fromtimestamp(ts)
        rel = res.split('mod/')[-1].replace('/', '_')
        dst = os.path.join(out, f'{dt.strftime("%Y%m%d_%H%M%S")}_{rel}')
        shutil.copyfile(os.path.join(os.path.dirname(snap), snap), dst)
        copied += 1
print(f'已复制 {copied} 份 到 {out}')
