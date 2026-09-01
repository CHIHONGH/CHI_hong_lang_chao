# 脚本化 GUI(Scripted GUIs)

脚本化 GUI 可用于向游戏中添加可修改的界面(GUI)。

示例:
```
scripted_gui = {
	scripted_gui_name = {

		# 界面类型,必须是以下之一:
		# player_context # 作用域为玩家
		# selected_country_context # 右键点击国家时,作用域为目标国家
		# selected_state_context # 左键点击州时,作用域为目标国家
		# diplomacy_target_context # 界面附加到外交窗口,目标为当前选中国家
		# decision_category # 界面附加到特定决策类别(在类别中添加 scripted_gui = scripted_gui_name)。作用域为玩家
		# diplomatic_action # 界面附加到外交行动。参见脚本化外交行动
		# national_focus_context # 界面附加到目标国家的国策视图,即拥有该国策视图的国家
		# country_mapicon # 每个国家显示一个地图图标。作用域为该国家
		# state_mapicon # 每个州显示一个地图图标。作用域为该州
		context_type = player_context

		# 在某个 GUI 文件下定义的容器名称
		window_name = "container_name"

		# 默认情况下界面附加到主窗口(除非上下文覆盖)
		# 你可以指定一个 token 或窗口来覆盖

		# token 必须是以下之一:
		# top_bar, decision_tab, technology_tab, trade_tab, construction_tab, production_tab, deployment_tab, logistics_tab, diplomacy_tab, national_focus, politics_tab, selected_country_view, selected_state_view, selected_country_view_info, selected_country_view_diplomacy, army_ledger, navy_ledger, civilian_ledger, air_ledger, tech_infantry_folder, tech_support_folder, tech_armor_folder, tech_artillery_folder, tech_land_doctrine_folder, tech_naval_folder, tech_naval_doctrine_folder, tech_air_techs_folder, tech_air_doctrine_folder, tech_electronics_folder, tech_industry_folder
		parent_window_token = top_bar

		# 如果没有可用的 token,改用容器名称。此时游戏会搜索所有界面并附加到同名界面
		# 可能不生效
		parent_window_window = "container_name"

		# 你也可以将脚本化 GUI 附加到另一个脚本化 GUI
		parent_scripted_gui = "container_name"

		# 若只想在特定地图模式显示界面,添加此项
		map_mode = map_mode_name

		# 仅用于地图图标类脚本化 GUI。使用与决议类似的定位代码
		# mapicon_targets = {
		#   #.. 类似定向决议的定位代码
		# }

		# 返回 true 则界面可见
		visible = {
			always = yes
		}

		# 效果可以通过按钮名称附加到按钮。可以添加 right、alt、control 和 shift(button_name_alt_right_click)以在特定组合下执行效果
		effects = {
			button_name_click = {
			}
		}

		# 触发器可用于禁用/隐藏界面元素
		triggers = {
			button_name_click_enabled = {
			}
			icon_name_visible = {
			}
		}

		# 属性可用于修改图标纹理和元素界面位置
		properties = {
			icon_name = {
				image = "scripted_loc"
				frame = 1 # 变量
			}
			gui_element_name = {
				x = 100 # 变量
				y = 200 # 变量
			}
		}

		# 动态列表可用于使用数组填充元素列表
		# 使用此脚本化 GUI 的效果与触发器
		dynamic_lists = {
			list_name = {
				array = array_name # 为数组中的每个元素创建一个 GUI 元素
				value = val_name # 构建元素 GUI 时,将数组当前值存入此变量(默认 v)
				index = index_name # 构建元素 GUI 时,将数组当前索引存入此变量(默认 i)
				change_scope = yes # 若为 yes,构建子元素时游戏会切换作用域到数组中的元素

				# 用以下选项选择条目容器(均为 scripted loc)
				entry_container = "container_name"
				country_scope_entry_container = "container_name"
				country_scope_entry_container = "container_name"

				# 如需编写 AI,添加此项
				ai_weights = {
				}
			}
			gui_element_name = {
				x = 100 # 变量
				y = 200 # 变量
			}
		}

		# 默认界面每 tick 更新一次
		# 可以使用变量名,强制游戏仅在变量变化时才更新界面
		# 例如在效果中调用 add_to_variable = { var_name = 1 } 即可强制更新界面
		dirty = var_name

		# AI

		# ai_enabled 只检查一次,若为 false,AI 整局忽略此界面(只检查 tag/original_tag 之类)
		ai_enabled = { always = yes }

		# AI 测试间隔与浮动,单位为小时
		ai_test_interval = 24
		ai_test_variance = 24

		# ai_check 对每个 AI 每个界面检查一次。若为 false,该 tick 内 AI 忽略此界面
		ai_check = { always = yes }

		# 对于目标型界面,需指定 AI 检查哪些国家(若不指定,则检查所有)
		# 可选值:
		#test_self_country, test_enemy_countries, test_ally_countries, test_neighbouring_countries, test_neighbouring_ally_countries, test_neighbouring_enemy_countries, test_self_owned_states, test_enemy_owned_states, test_ally_owned_states, test_self_controlled_states, test_enemy_controlled_states, test_ally_controlled_states, test_neighbouring_states, test_neighbouring_enemy_states, test_neighbouring_ally_states, test_our_neighbouring_states, test_our_neighbouring_states_against_allies, test_our_neighbouring_states_against_enemies, test_contesded_states, test_if_only_major, test_if_only_coastal
		可添加多个
		ai_test_scopes = test_self_country

		# 对每个目标检查。若为 false,AI 忽略该目标
		ai_check_scope  = { always = yes }

		ai_weights = {
			button_name_click = {
				ai_will_do = {
					base = 10
					modifier = {
						tag = GER

						add = 50
					}
				}
				ignore_lower_weights = yes # 若为 yes,AI 不会调用权重低于此的选项
				weight = 50 # 该选项的权重
			}
		}
		ai_max_weight_taken_per_test = 100 # AI 只点击按钮直到达到此权重
	}
}
```