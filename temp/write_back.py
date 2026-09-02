# -*- coding: utf-8 -*-
"""从 temp/recovered_all_uniq 写回 87 个快照到工作区(排除最后编辑的 4 个)"""
import json, os, shutil

m = json.load(open('temp/snap_mapping.json', encoding='utf-8'))

EXCLUDE = [
    'common_military_industrial_organization_organizations_TFR_organizations_PRC.txt',
    'interface_New_left_super_event_PRC_eventpictures.gfx',
    'interface_RD_PRC_mio.gfx',
    'interface_RD_PTF_ideas.gfx',
]

written, skipped = [], []
for snap, path in sorted(m.items()):
    if snap in EXCLUDE:
        skipped.append(path)
        continue
    src = os.path.join('temp/recovered_all_uniq', snap)
    shutil.copyfile(src, path)
    written.append(path)

print('写回:', len(written))
print('跳过:', len(skipped))
for p in skipped:
    print('  跳过', p)
