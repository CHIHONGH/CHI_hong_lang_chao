# -*- coding: utf-8 -*-
import subprocess, json, os, glob, datetime
from urllib.parse import unquote

# 用户 VSCode 编辑过的文件集
base = os.path.join(os.environ['APPDATA'], 'Code', 'User', 'History')
user_edited = {}
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
        if 'mod/' in u:
            rel = u.split('mod/')[1]
            if '/' in rel:
                rel = rel.split('/', 1)[1]
            cur = user_edited.get(rel, 0)
            if mx > cur:
                user_edited[rel] = mx
    except Exception:
        pass

# 当前剩余冲突
r = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
raw = r.stdout.decode('utf-8', errors='ignore')
remain = []
for item in raw.split('\x00'):
    if not item.strip():
        continue
    st = item[:2]
    if st in ('UU', 'AA', 'DD', 'AU', 'UA', 'DU', 'UD'):
        remain.append((st, item[3:]))

remain_user = [(s, p) for s, p in remain if p in user_edited]
print('剩余冲突:', len(remain), '其中你VSCode改过:', len(remain_user))
for s, p in sorted(remain_user):
    t = datetime.datetime.fromtimestamp(user_edited[p] / 1000).strftime('%m-%d %H:%M')
    print(f'  {s} {t}  {p}')
