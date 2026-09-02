# -*- coding: utf-8 -*-
"""验证 recovered_all_uniq 中的快照是否与 VSCode History 原始最新快照一致"""
import json, os, hashlib
from urllib.parse import unquote

base = os.path.join(os.environ['APPDATA'], 'Code', 'User', 'History')
targets = [
    'history/countries/PTF - Patriot Front.txt',
    'history/countries/PRC - ComChina.txt',
    'common/national_focus/TFR_national_focus_PRC.txt',
]
for t in targets:
    want = t.replace('/', '_')
    snap_path = os.path.join('temp/recovered_all_uniq', want)
    if not os.path.isfile(snap_path):
        print(f'{want}: 未找到快照')
        continue
    snap_hash = hashlib.md5(open(snap_path, 'rb').read()).hexdigest()[:12]
    # 在 History 中找该 resource 的最新条目
    best = None
    for d in os.listdir(base):
        ef = os.path.join(base, d, 'entries.json')
        if not os.path.isfile(ef):
            continue
        try:
            dd = json.load(open(ef, encoding='utf-8', errors='ignore'))
            res = unquote(dd.get('resource', '')).replace('file:///', '').replace('\\', '/')
            if res.endswith('/RedDaw_beta/' + t) or res.endswith('RedDaw_beta/' + t):
                ents = dd.get('entries', [])
                if ents:
                    ent = max(ents, key=lambda e: e.get('timestamp', 0))
                    best = (ent['id'], ent.get('timestamp', 0), ef)
        except Exception:
            pass
    if best is None:
        print(f'{want}: 未找到 History 记录')
        continue
    eid, ts, ef = best
    snap_file = os.path.join(base, os.path.dirname(ef), eid)
    if not os.path.isfile(snap_file):
        print(f'{want}: 快照文件缺失 {snap_file}')
        continue
    raw_hash = hashlib.md5(open(snap_file, 'rb').read()).hexdigest()[:12]
    same = '一致' if snap_hash == raw_hash else '!!! 不一致'
    print(f'{t}: 恢复={snap_hash} 原始={raw_hash} {same}')
