# WORKLOG：RedDaw_beta（整合版，原 CHI_hong_lang_chao）

> 会话交接日志：会话结束前更新，新会话开始前先读。
> 铁律：唯一上传远程的库（GitHub CHIHONGH 名下，分支 RedDaw_beta）；不得触碰 CHI_HONGzhengshiban 分支。

## 项目定位

烈焰升腾：红色黎明 整合版（依赖 TFR），整合 TFR_中蒙谈判 / TFR_中俄谈判 / space force 等子项目内容，对外发布的完整 HOI4 mod。

## 会话记录

| 日期 | 会话任务 | 改动文件 | 状态 |
|---|---|---|---|
| 2026-08-17 | 增量同步中俄谈判新提交（冲突修正图标去原版化：TFR_CRN_prc_buff/sov_debuff 自建图标 2 PNG + TFR_CRN_modifiers.gfx 注册 + dynamic_modifiers 改用自有 GFX、战斗修正本地化统一为"边境冲突"，提交 6be56ae）；当日发现并回滚另一会话误提交的本地化 key 小写化改动（36549b3，yml 改小写但代码引用仍大写，大小写不匹配会导致游戏内显示原始 key） | TFR_CRN_conflict_modifiers.txt、TFR_CRN_modifiers.gfx（新）、TFR_CRN_prc_buff/sov_debuff.png（新）、TFR_CRN_l_simp_chinese.yml；另回滚 4 个 yml | 完成 |
| 2026-08-18 | 同步中俄谈判 3 新提交（提交 e0631a6）：冲突修正命名去黑话（frontline_initiative/enemy_exhaustion）、清理调试决议+删孤儿 key、冲突线 AI 化（PRC 自主推进）、修复 debug 谈判不可见（红系判定 communist+5 处脚本本地化改名+categories visible 放开） | 6 文件 | 完成 |
| 2026-08-18 | 同步 space force（提交 ea73db2）：space force 工作区未提交改动一并带入——科技改名（PRC_nuclear_ship_engine→nuclear_ship_engine / PRC_xuanwu_armor→molin_armor，旧名无残留）、PTF 天命 idea 与 build_cost 调整、AI 策略（is_ai=yes / AI 模板加 PRC / TFR_ai_strategy_PRC 等 8 个新增文件与 beta 原有一致无需另带）、经济法律 ideas 对齐 | 15 文件 | 完成 |
| 2026-08-18 | 同步 space force（提交 20309da）：**三军军改动态精神化**（PLA_pla_army/plan_navy/plaaf_air 动态修正变量绑定 + 31 假精神增量，dummy 链 53 处 swap 替换，删旧 idea 定义与 17 处冗余 tooltip）+ debug 决议经验奖励（无人机/合成营/武库舰）+ 本地化；上轮 e53b314 内容一并落地 | 10 文件（7 改 + 3 新） | 完成 |
| 2026-08-18 | **权威全量同步（提交 c0d1cab）**：新增工具 `../sync_to_beta.sh`（基于 git 跟踪清单：复制/更新子项目全部游戏文件 + 删除子项目已删的残留 + 保留 RedDaw_beta 独有）。space force 复制 209（含平衡调整 a6d25fe：发射场 8→10 / 导弹联队规模 / 直升机科技类别）+ 删残留 126（temp_icon 临时图标目录等）；中俄谈判复制 25 + 删旧修正图标 2（换 enemy_exhaustion / frontline_initiative）；中蒙谈判复制 18；复查 252/252 与子项目一致 | 19 文件（+15/-4） | 完成 |
| 2026-08-18 | 同步 space force（提交 3487a96）：假精神 tooltip 方案回退（删 PRC_plan_tremendous_power + 3 个 MIO dummy，org 恢复 custom_effect_tooltip，国策改 PRC_tremendous_power_tt）、电网投资门槛 custom_trigger_tooltip（1/3/5/8）+ 本地化 4 条、新增反舰巡航导弹 2/3 图标（鹰击-18/21）与 sprite 注册、导弹装备/科技细节更新 | 12 文件（+78/-39） | 完成 |
| 2026-08-19 | 同步 space force（提交 6d5b49f）：天河工程×OSS 联动（国策前置三阶段完成 + OSS 五按钮模块 flag 启用 + 描述提示）、舰船导弹发射器模块图标注册（launcher1/2 → ship_missile_launcher_mod，heavy_ship_rocket/ship_secondaries 类别图标）、无人机模块限制扩展（轻/中/重型机 count<0 禁用）、合成营装备需求简化、天河决策优先级 100→50；**用户手动删除独有文件 `TFR_states_GUI_l_simp_chinese.yml`**（171 key：153 已由 RD_OSS_GUI 等覆盖，15 死 key，3 船体名 key `ship_hull_super_heavy_1/2/3` 武库舰 I/II/III 型仍被装备定义引用但暂无本地化，待用户确认是否补回） | 16 文件（+164/-347） | 完成 |
| 2026-08-17 | 同步 space force 用户修正（提交 71804f5）：ship_rocket 模块分类落地（2 模块 category 改为 ship_rocket，配合船体槽位）、决议/国策船体细节修复；清理本地化残留大写死 key（Tremendous_power/Mountain_Warfare/Urban_Warfare_Kit/Tide_of_Iron，小写版已生效） | 5 文件（+21/-25） | 完成 |
| 2026-08-17 | 同步 space force（提交 2630971）：完成本地化 key 小写化（由本会话补齐最后 2 处 Tremendous_power 残留大写，Mountain_Warfare_Enhancement_System / Urban_Warfare_Kit / Tide_of_Iron / Tremendous_power 四系列科技/MIO/决议/国策/事件/历史/本地化全对齐小写）+ ASBM_launcher 改名 + 057 驱逐舰/台北舰模板 + 无人机模块限制 + 舰船火箭槽 + 本地化微调 | 15 文件（+3012/-2994） | 完成 |
| 2026-08-17 | 同步 space force 本地化解耦：天河工程块迁入独立文件 `TFR_space_militarization_l_simp_chinese.yml`（51 个 key） | 2 文件（提交 d2faf16） | 完成 |
| 2026-08-17 | 同步 space force 进度条 phase3 重画（补齐边框与槽位分隔线，样式与其他阶段一致） | 1 文件（提交 b4b2848） | 完成 |
| 2026-08-17 | 同步 space force：天军动态精神介绍（新增 desc 文案 + 504x184 横幅占位图 sprite 注册）+ 进度条 frame 索引修复（5 处 `count+1`→`count`）+ 空间站 GUI 标题居中（left→center ×2） | 5 文件（提交 d717a26） | 完成（待游戏内验收） |
| 2026-08-17 | 同步三个子项目至先遣版：space force（天河工程动态修正、天军假民族精神 tooltip、国家电网 MIO 修复、合成营/巡天舱/电力装备图标、land_doctrine 陆战学说重制）、TFR_中俄谈判（冲突机制重构：施压上限 100/满压自动全面战争/边境战争结算、新增冲突决议与效果脚本）、TFR_中蒙谈判（军管区图标、战后决议/动态修正更新） | 49 文件（+4830/-213，提交 92c9e49）；有意排除：`TFR_national_focus_PRC - 副本.txt`（备份残留，会致国策重复定义）、`.mimosa`（工具残留） | 完成 |
| 2026-08-16 | git 重组：提交 space force 最新成果（8398d38）、分支改名 TFR-CMRN → RedDaw_beta、文件夹改名进行中 | 14 文件（决议/空间站/GUI/图标素材）+ .gitignore | 完成 |
| 2026-08-16 | 同步 space force 太空军事化与空间站系统（f7d6951）；同步 decision_research/PRC_test（a59951e）；F 组同步（d8d46f1） | TFR_RD_space_militarization、TFR_space_station 全套、难度事件链修复版、space_force_unit.gfx 等 | 完成 |
| 2026-08-15 | 同步 CRN 中俄谈判（c5b8c6e、0d7f839）；同步 CMRN 多轮（5a1c1e9~36f7480） | TFR_CRN_*、TFR_CMRN_* | 完成 |

## 待办 / 注意

- 文件夹改名 `CHI_hong_lang_chao` → `RedDaw_beta` 曾被占用中断，待用户确认无进程占用后完成
- 太空军师模板创建已从「三子归边」国策移除（随 space force 重构），后续接入方式待定
- 本地领先远程若干提交，推送前需更新 remote（仓库改名后）
