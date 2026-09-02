# -*- coding: utf-8 -*-
# 从 VSCode 本地历史把 09-03 编辑过的全部快照复制到 temp/recovered/,按"文件夹_快照名"保存
import os, json, glob, urllib.parse, datetime, re, shutil
ap = os.environ['APPDATA']
base = os.path.join(ap, 'Code', 'User', 'History')
out = os.path.join('temp', 'recovered')
os.makedirs(out, exist_ok=True)

def get_resource(ef):
    try:
        d = json.load(open(ef, encoding='utf-8', errors='ignore'))
        res = d.get('resource', '')
        if res.startswith('file:///'):
            path = urllib.parse.unquote(res[len('file:///'):])
            path = re.sub(r'^([A-Za-z])%3A', r'\1:', path)
            return path
    except Exception:
        pass
    return None

copied = 0
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
                rel = res.split('RedDaw_beta')[-1].lstrip('/').replace('/', '_')
                dst = os.path.join(out, f'{dt.strftime("%H%M%S")}_{rel}')
                shutil.copyfile(snap, dst)
                copied += 1
print(f'已复制 {copied} 个快照 → {out}')
