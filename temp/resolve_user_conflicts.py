# -*- coding: utf-8 -*-
import subprocess

files = """common/ai_equipment/generic_naval.txt
common/ai_templates/templates_PTF.txt
common/decisions/TFR_decisions_PTF_ai_strategy.txt
common/military_industrial_organization/organizations/TFR_organizations_PRC.txt
common/scripted_effects/TFR_RD_PTF_scripted_effects.txt
common/scripted_guis/RD_TFR_states_decisions_GUI.txt
common/technologies/TFR_RD_more_tech.txt
common/technologies/ballistic_missiles_tech.txt
common/technologies/land_doctrine.txt
common/units/equipment/ballistic_missiles.txt
common/units/equipment/guided_missiles.txt
common/units/equipment/modules/00_plane_modules.txt
common/units/equipment/modules/00_ship_modules.txt
common/units/infantry.txt
events/TFR_PDTO_difficulty_choose.txt
interface/RD_PRC_mio.gfx
interface/RD_PTF_ideas.gfx
interface/missile_equipment.gfx
interface/space_force_unit.gfx
localisation/simp_chinese/TFR_RD_PTFextended_l_simp_chinese.yml
common/ideas/TFR_RD_ideas_PTF.txt
common/ideas/TFR_ideas_PRC.txt
common/national_focus/TFR_national_focus_PRC_taiwan_war.txt
descriptor.mod
history/units/PTF_2020.txt
interface/New_left_super_event/PRC_eventpictures.gfx
localisation/simp_chinese/RD_decisions_nl_l_simp_chinese.yml""".splitlines()

ok, fail = [], []
for f in files:
    r = subprocess.run(['git', 'checkout', '--ours', '--', f], capture_output=True, text=True)
    if r.returncode != 0:
        fail.append((f, r.stderr.strip()))
    else:
        r2 = subprocess.run(['git', 'add', '--', f], capture_output=True, text=True)
        if r2.returncode != 0:
            fail.append((f, r2.stderr.strip()))
        else:
            ok.append(f)
print('成功(ours+add):', len(ok))
for f in fail:
    print('  失败:', f[0], '|', f[1][:150])

# 剩余冲突统计
r = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
raw = r.stdout.decode('utf-8', errors='ignore')
remain = [item[:2] for item in raw.split('\x00') if item.strip()]
from collections import Counter
print('剩余冲突:', sum(1 for s in remain if s in ('UU','AA','DD','AU','UA','DU','UD')),
      dict(Counter(s for s in remain if s in ('UU','AA','DD','AU','UA','DU','UD'))))
