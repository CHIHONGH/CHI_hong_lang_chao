# AI策略的使用示例与文档
请尽量保持本文件的及时更新。

-------------------------

## 可用策略标记列表
（2024-11更新）

### 与外交相关
- `alliance`追求AI以与某个国家结盟，如果可能的话加入同一阵营。
	ai_strategy = {
		type = alliance
		id = USA
		value = -100
	}
- `antagonize` 追求AI来激怒某个国家，拒绝与其进行大多数外交行动。
	ai_strategy = {
		type = antagonize
		id = USA
		value = -100
	}
- `avoid_starting_wars` 避免与指定国家开战
	ai_strategy = { #没指定就是全都会避免
		type = avoid_starting_wars
		value = -400
	}
	ai_strategy = {
		type = avoid_starting_wars
		id = SWE
		value = 200
	}
- `asking_foreign_garrison` 追踪AI请求外国人力以完成驻军任务，如果指定国家的话。如果没有明确说明，则适用于所有其他国家。
	ai_strategy = {
		type = asking_foreign_garrison
		id = USA
		value = 100
	}
- `befriend` 追求AI以结交一个国家，接受大多数外交行动。
	ai_strategy = {
		type = befriend
		id = USA
		value = 100
	}
- `conquer` 追求AI征服一个国家，更可能宣战并合理化战争目标。这并不改变AI在与该国交战时如何控制前线。
	ai_strategy = {
		type = conquer
		id = USA
		value = 100
	}
- `consider_weak` AI会认为该国家更弱，减少宣战犹豫或减少结盟可能性。
	ai_strategy = {
		type = consider_weak
		id = USA
		value = 100
	}
- `contain` 追求AI以遏制一个国家，保护任何可能被其对抗或入侵的国家。
	ai_strategy = {
		type = contain
		id = USA
		value = 100
	}
- `declare_war` 如果一个国家已经存在战争目标，那么ai将会对其宣战
	ai_strategy = {
		type = declare_war
		id = USA
		value = 100
	}
- `diplo_action_acceptance` 如果其他国家请求，他会追求AI接受外交行动。AI不太可能提出相关外交行动。外交行动的名称通常可以通过用于标题的本地化键找到，但并不总是在/Hearts of Iron IV/localisation/english/diplomacy_l_english.yml文件中：意味着派遣志愿军的外交行动名称是。DIPLOMACY_SEND_VOLUNTEERS_TITLE:0 "Send Volunteers"send_volunteers
	ai_strategy = {
		type = diplo_action_acceptance
		id = USA
		value = 100
		target = join_allies
	}
- `diplo_action_desire` 使AI请求对指定国家采取外交行动。如果有人提议，AI也不会更愿意接受该外交行动。外交行动的名称通常可以通过用于标题的本地化键找到，但并不总是在/Hearts of Iron IV/localisation/english/diplomacy_l_english.yml文件中：意味着派遣志愿者的外交行动名称是。DIPLOMACY_SEND_VOLUNTEERS_TITLE:0 "Send Volunteers"send_volunteers
	ai_strategy = {
		type = diplo_action_desire
		id = USA
		value = 100
		target = call_allies
	}
- `dont_join_wars_with` 追求人工智能以减少与特定国家联合对抗特定国家的战争。这并不意味着人工智能更不可能与另一个国家联合起来对抗target_country，即使这会导致与指定国家target_country联合作战。
	ai_strategy = {
		type = dont_join_wars_with
		id = USA
		value = 100
		target_country = BHR
	}
- `ignore` 追求人工智能以减少接受或渴望与该国进行任何外交行动的可能性。
	ai_strategy = {
		type = ignore
		id = USA
		value = 100
	}
- `ignore_claim` 追求AI忽视其对指定国家的任何主张。value为布尔值，只能设为0或者1。
	ai_strategy = {
		type = ignore_claim
		id = USA
		value = 1
	}
- `influence` 追求AI来保护某个国家，保证该国家或加入同一阵营。如果总值负（考虑所有AI策略），AI永远无法保证该国家。
	ai_strategy = {
		type = protect
		id = USA
		value = 100
	}
- `prepare_for_war`
- `protect`
- `send_lend_lease_desire`
- `send_volunteers_desire`
- `support`

### 与前线和军队相关
- `area_priority`
- `dont_defend_ally_borders`
- `force_defend_ally_borders`
- `force_concentration_front_factor`
- `force_concentration_factor`
- `force_concentration_target_weight`
- `front_armor_score`: 使拥有 `role = armor` 或 `front_role_override = offence` 的师更有可能被分配到前线
- `front_control`
- `front_unit_request`
- `garrison`
- `garrison_reinforcement_priority`
- `ignore_army_incompetence`
- `invasion_unit_request`
- `invade`
- `occupation_policy`
- `put_unit_buffers`
- `scorched_earth_prio`
- `spare_unit_factor`
- `theatre_distribution_demand_increase`

### 与海军相关
- `naval_avoid_region`
- `naval_convoy_raid_region`
- `naval_invasion_focus`
- `naval_invasion_dominance_weight`
- `naval_mission_threshold`
- `strike_force_home_base`
- `naval_dominance`
- `convoy_raiding_target`

### 与情报相关
- `activate_crypto`
- `agency_ai_base_num_factories_factor`
- `agency_ai_per_upgrade_factories_factor`
- `decrypt_target`
- `intelligence_agency_branch_desire_factor`
- `intelligence_agency_usable_factories`
- `operation_equipment_priority`
- `operative_mission`
- `operative_operation`
- `become_spymaster`

### 与生产和资源相关
- `added_military_to_civilian_factory_ratio`
- `air_factory_balance`
- `build_airplane`
- `build_army`
- `build_building`
- `build_ship`
- `building_target`
- `convoy_efficiency_to_cancel_trades`
- `dockyard_to_military_factory_ratio`
- `equipment_production_factor`
- `equipment_variant_production_factor`
- `equipment_production_surplus_management`
- `equipment_production_min_factories`
- `equipment_production_min_factories_archetype`
- `equipment_stockpile_surplus_ratio`
- `equipment_market_spend_factories`
- `equipment_market_for_sale_threshold`
- `equipment_market_for_sale_factor`
- `equipment_market_max_for_sale`
- `equipment_market_min_for_sale`
- `equipment_market_buying_threshold`
- `equipment_market_buy`
- `equipment_market_trade_desire`
- `factory_build_score_factor`
- `force_build_armies`
- `fuel_buffer`
- `min_convoy_efficiency_factor_for_war_support_hit`
- `production_upgrade_desire_offset`
- `railway_gun_divisions_ratio`
- `research_tech`
- `research_weight_factor`
- `role_ratio`
- `save_equipment`
- `template_prio`
- `unit_ratio`
- `land_xp_spend_priority`
- `air_xp_spend_priority`
- `navy_xp_spend_priority`
- `pp_spend_amount`
- `pp_spend_priority`
- `min_wanted_supply_trucks`
- `wanted_supply_trucks`
- `min_wanted_supply_trains`
- `wanted_supply_trains`
- `ai_wanted_divisions_factor`

### 与空军相关
- `strategic_air_importance`

### 与袭击相关
- `raid_target_country`

-------------------------


## 单位比例（UNIT RATIOS）

### 空军
对于空军类型，unit_ratio 策略值表现为权重。如果未设置则默认为0。如果某飞机类型被DLC锁定，则其设定比例会被忽略并视为0。

陆基与航母飞机类型完全分开处理。

首先计算AI想要生产的飞机总数：

**陆基飞机**:
- 累加所有空军基地容量（不包括航母），乘以`WANTED_LAND_PLANES_PER_BASE_CAPACITY_FACTOR`.
- 加上AI想要的师数量乘以 `WANTED_LAND_PLANES_PER_DIVISION`.
- 减去空军联队中的飞机数量。
- 将结果限制在0和想要的师数量乘以`WANTED_LAND_PLANES_TOTAL_MAX_PER_DIVISION`.
- 最终结果再乘以硬编码值 `AI_FOCUS_AVIATION`, 而该值又会先乘以修正值 `ai_focus_aviation_factor`.

**航母飞机**:
- 累加所有航母甲板容量，乘以 `WANTED_CARRIER_PLANES_PER_CARRIER_CAPACITY_FACTOR`.
- 累加生产中的航母甲板容量（航母将在 `CARRIER_CAPACITY_IN_PRODUCTION_MAX_DAYS_LEFT_TO_INCLUDE_FACTOR` 天内完工），乘以 `WANTED_CARRIER_PLANES_PER_CARRIER_CAPACITY_IN_PRODUCTION_FACTOR`.
- 减去空军联队中的航母飞机数量
- 结果最小为0
- T最终结果再乘以硬编码值 `AI_FOCUS_NAVAL_AIR`, 而该值又会先乘以修正值 `ai_focus_naval_air_factor`.

**最后计算并设置 build_airplane 策略值**:
- 对每种陆基类型，将其 `unit_ratio`, 除以所有陆基 `unit_ratio` 之和，再乘以上面计算出的想要的陆基飞机数量。
- 航母飞机同理。

### 除空军外的所有单位
单位比例以100为基数加上策略中指定的值。例如，单位类型比例为-40，则只会设置为目标数量的60%。AI如何达成目标还会受其他因素影响。

### 装备生产系数
同上，按策略增加满足需求所需工厂的百分比。


-------------------------

## AI策略用法示例

AI策略的一般结构如下
```
name_of_strategy = {

    # 该AI策略允许用于哪些国家？作为第一步过滤，避免昂贵的触发器。
    allowed = {  # 国家作用域
        original_tag = ENG
    }

    # 在什么条件下激活该AI策略？
    enable = {  # 国家作用域
        date > 1938.1.1
    }

    # 在什么条件下停用该AI策略？
    # 虽然可选，但强烈建议总是包含`abort`或`abort_when_not_enabled`语句。
    # 极少数情况下AI策略确实永不应停用，可用`abort = { always = no }`明确声明。
    abort = {  # 国家作用域
        num_of_military_factories > 30
    }
    # abort_when_not_enabled = yes  # 若启用，则一旦`enable`不再为真即停用

    # 该AI策略激活时生效的任意数量ai_strategy条目。
    ai_strategy = { <...> }
    ai_strategy = { <...> }
}
```

### `avoid_starting_wars`
```
ai_strategy = {
    type = avoid_starting_wars
    # 这个不需要id
    value = -200  # 该值与'conquer'策略叠加，并且无目标。仅用于非常特定的情况，不应广泛使用。
}

ai_strategy = {
    type = conquer
    id = GER
    value = 200  # 这样会与上面的值叠加，对德国的征服权重为0，对其他所有人为-200。
}
```

### `protect`
负值会让AI不再保障目标国家的独立。
```
ai_strategy = {
	type = protect
	id = "CZE"
	value = 200
}
```

### `dont_defend_ally_borders`
让AI忽略某盟友的前线
```
ai_strategy = {
    type = dont_defend_ally_borders
    id = ITA
    value = 100  # 该策略为二元，>0激活，<=0则关闭。
}
```

### `force_concentration_front_factor`
用于提升/降低AI在指定前线集中的优先级分数。
```
ai_strategy = {
    type = force_concentration_front_factor

    tag = GER							# 目标国家，可多选
    state = 42							# 目标省份，可多选
    strategic_region = 65				# 目标战略区域，可多选
    area = europe						# 目标AI区域，可多选
    country_trigger = { always = no }	# 针对特定国家的触发器。作用域为敌国，FROM为本国
    state_trigger = { always = no }		# 针对省份的触发器。作用域为省份，FROM为敌国，FROM.FROM为本国
    ratio = 0.0							# 仅当前线被该策略目标覆盖的比例大于此值时才启用

    value = 40							# 普通优先级的系数。40为+40%，-60为-60%。
}
```

### `force_concentration_factor`
用于调整AIFC前线“非必要”单位用于集中的比例。（“非必要”指满足最小前线需求后剩余的单位。比如前线分配30单位，最小需求10，则有20个“非必要”单位。）
```
ai_strategy = {
    type = force_concentration_factor
    value = 20	# 在基础比例上增加的系数（见FORCE_CONCENTRATION_UNIT_RATIO_BASE定义）。20为+20%，如基础为15%，则结果为35%。
}
```

### `force_concentration_target_weight`
影响AI集中特定进攻目标的分数。
```
ai_strategy = {
    type = force_concentration_target_weight

    tag = GER							# 目标国家，可多选
    state = 42							# 目标省份，可多选
    strategic_region = 65				# 目标战略区域，可多选
    area = europe						# 目标AI区域，可多选
    country_trigger = { always = no }	# 针对特定国家的触发器
    state_trigger = { always = no }		# 针对省份的触发器

    value = 60							# 普通优先级的系数。40为+40%，-60为-60%。
}
```

### `front_control`
用于控制入侵或常规前线
```
ai_strategy = {
    type = front_control

    # 目标可用以下方式定义，可多选

    tag = GER							# 目标国家，可多选
    state = 42							# 目标省份，可多选
    strategic_region = 65				# 目标战略区域，可多选
    area = europe						# 目标AI区域，可多选
    country_trigger = { always = no }	# 针对特定国家的触发器
    state_trigger = { always = no }		# 针对省份的触发器
    ratio = 0.0							# 仅当前线被该策略目标覆盖的比例大于此值时才启用

    priority = 0						# 默认0，优先级高的策略会覆盖低的
    ordertype = front					# `front`或`invasion`。如设置则仅对该类型命令生效
    execution_type = careful			# `{careful, balanced, rush, rush_weak}`之一。设置后会覆盖前线的执行类型（仅前线命令）
    execute_order = yes					# `yes`或`no`。设置后会覆盖前线是否执行的决策
    manual_attack = yes					# 默认`yes`。如为`no`，AI不会主动试探进攻（仅前线命令）
}
```

### `front_control`
低层级前线控制。例如可强制AI在某区域进行闪击。
```
ai_strategy = {
    type = front_control
    tag = HOL				# 也可目标国家、省份、战略区域、区域。每行一个目标
    ratio = 0.25			# 前线省份中至少有此比例被目标覆盖才应用该策略
    priority = 100			# 优先级高的策略会覆盖低的
    ordertype = front		# 可为{front, invasion}
    execution_type = rush	# 可为{careful, balanced, rush, rush_weak}
    execute_order = yes		# 如设置则强制激活/停用执行
    manual_attack = yes		# 如设置则AI会主动试探进攻（仅前线命令）
}
```

### `front_unit_request` 和 `invasion_unit_request`
用于增加/减少对入侵或前线的单位请求
```
ai_strategy = {
    # 任选其一
    type = front_unit_request / invasion_unit_request

    # 入侵会检查入侵目标，前线会检查前线省份

    tag = GER							# 目标国家，可多选
    state = 42							# 目标省份，可多选
    strategic_region = 65				# 目标战略区域，可多选
    area = europe						# 目标AI区域，可多选
    country_trigger = { always = no }	# 针对特定国家的触发器。作用域为敌国，FROM为本国
    state_trigger = { always = no }		# 针对省份的触发器。作用域为省份，FROM为敌国，FROM.FROM为本国

    value = 40							# 作为常规请求的附加系数
}
```

### `invade`
影响AI对指定国家的海军入侵行为。为负则完全避免入侵，为正则作为重要性分数的系数，只要是潜在敌人就生效。
```
ai_strategy = {
    type = invade
    id = ITA
    value = -10  # 负值，AI会避免入侵该国
    # value = 60  # 正值，对该国的入侵重要性分数乘以1.6（若为潜在敌人）
}
```

### `put_unit_buffers`
该策略会让AI在目标区域预留/驻防部分部队，可用于目标区域的命令。
```
ai_strategy = {
    type = put_unit_buffers

    # 预留的部队占全国总数的比例
    ratio = 0.4

    # 可指定order id，相同order id的比例会共享
    order_id = 2

    # 指定驻防命令的省份（若无友好省份则策略无效）
    states = {
        125
        126
        127
        128
        129
        338
        123
        122
    }

    # 命令会在这些AI区域使用这些预留部队
    area = europe
    area = asia

    # 默认情况下，若目标区域有命令，预留会减少请求部队数
    # 可通过以下设置禁用该特性
    subtract_invasions_from_need = yes
    subtract_fronts_from_need = yes
}
```

### `theatre_distribution_demand_increase`
让AI增加包含指定省份的战区的前线和区域防御前线的单位需求
```
ai_strategy = {
    type = theatre_distribution_demand_increase
    id = 447  # 省份ID（如亚历山大），会定位到该省份所在战区
    value = 10  # 单位需求增加10
}
```

### `naval_invasion_dominance_weight`
让AI在其海军入侵经过的区域更关注提升海军制海权
```
ai_strategy = {
	type = naval_invasion_dominance_weight
	value = 30
}
```

### `intelligence_agency_branch_desire_factor`
升级情报机构分支的意愿
```
ai_strategy = {
    type = intelligence_agency_branch_desire_factor
    id = branch_defense
    value = -50  # AI权重-50%
}
```

### `intelligence_agency_usable_factories`
用于升级情报机构的工厂数量
```
ai_strategy = {
    type = intelligence_agency_usable_factories
    # 该策略不需要id
    value = 10
}
```

### `operative_mission`
AI执行间谍任务的倾向（是间谍任务，任务，任务，任务！组情报网的那个任务，下面的才是AI行动，比如偷民政情报和偷图纸的行动）
```
ai_strategy = {
    type = operative_mission
    mission = build_intel_network	# 任务标识
    value = 800						# 相较于其他行动和任务的分数
    mission_target = GER			# 目标
    state = 1						# 如指定，AI会优先选择这些省份进行目标行动（前提是有效目标）
    state = 2
    priority = 100					# AI会优先选择优先级最高的策略对应省份
}
```

### `operative_operation`
让AI执行某项行动
```
ai_strategy = {
    type = operative_operation
    operation = operation_id
    value = 900				# 相较于其他行动和任务的分数
    operation_target = GER 	# 目标
    state = 1				# 如指定，AI会优先选择这些省份进行目标行动（前提是有效目标）
    state = 2
    region = 1				# 如指定，AI会优先选择这些区域进行目标行动（前提是有效目标）
    region = 2
    priority = 100			# AI会优先选择优先级最高的策略对应省份/区域
}
```

### `build_building`
用于让AI建造建筑，可选指定位置。
注意：该策略也会被AI内部动态使用，默认权重为1。
```
ai_strategy = {
    type = build_building
    id = coastal_bunker  # 建筑类型

    target = 139  # 可选目标位置，指定建造地点。若为省级建筑则视为省份ID，若为州级建筑则视为州ID。若指定位置无法建造则忽略该策略。
    # 若未指定目标，则会在任意可建造位置随机选择，唯一例外：若建筑可转换（base_cost_conversion > 0），未指定目标则表示转换而非新建。若无有效位置则忽略该策略。
    # 若指定建筑已在目标位置（或未指定目标时在任意位置）建造，则忽略该策略。

    value = 200  # AI权重，用于加权随机选择建造内容。AI会收集所有权重非零的build_building策略（包括动态生成的），并从中选择一个。
}
```

### `building_target`
让AI尝试至少拥有指定数量的某类建筑
```
ai_strategy = {
	type = building_target
	id = industrial_complex
	value = 85  # 优先建造民用工厂，直至数量至少达到85
}
```

### `equipment_production_factor`
调整AI分配到某类装备生产的工厂数量（可用类型见common\script_enums.txt中的script_enum_equipment_category
```
ai_strategy = {
    type = equipment_production_factor
    id = tactical_bomber  # 装备类别
    value = 50  # 使AI认为所需工厂数增加50%（如原需10则变为15）
}
```

### `equipment_production_surplus_management`
控制当AI所有需求都已满足时继续生产什么（即不再需要/想要更多时）
```
ai_strategy = {
    type = equipment_production_surplus_management
    id = infantry_equipment  # 装备类型（不必是原型，也可指定如infantry_equipment_2）
    value = 10  # 用于与其他装备类型的值加权，决定在所有“正常”需求满足后工厂分配比例。值过高可能影响正常需求计算。
}
```

### `equipment_production_min_factories`
强制AI至少分配指定数量工厂生产某类装备（以装备数据库中的"type = ..."为准）。谨慎使用，因为不会考虑实际可用工厂数。
```
ai_strategy = {
    type = equipment_production_min_factories
    id = motorized # 包括卡车和装甲车
    value = 3  # 至少分配3个工厂生产'motorized'类型装备
}
```

### `equipment_production_min_factories_archetype`
强制AI至少分配指定数量工厂生产某个具体原型的装备。比equipment_production_min_factories更细致。谨慎使用，因为不会考虑实际可用工厂数。
```
ai_strategy = {
    type = equipment_production_min_factories
    id = motorized_equipment # 只包括卡车，不含装甲车
    value = 3  # 至少分配3个工厂生产'motorized_equipment'原型装备
}
```

### `equipment_market_spend_factories`
调整AI用于购买装备的最大民用工厂数
```
ai_strategy = {
    type = equipment_market_spend_factories
    value = 20  # 作为EQUIPMENT_MARKET_MAX_CIVS_FOR_PURCHASES_RATIO的系数（20即1.2倍）
}
```

### `equipment_market_for_sale_threshold`
AI需有多少装备剩余才会考虑在装备市场出售
```
ai_strategy = {
    type = equipment_market_for_sale_threshold
    id = train
    value = 200  # 绝对数量
}
```

### `equipment_market_for_sale_factor`
调整AI愿意在市场出售的装备剩余比例
```
ai_strategy = {
    type = equipment_market_for_sale_factor
    id = train
    value = 50  # 作为EQUIPMENT_MARKET_BASE_MARKET_RATIO的系数（50即1.5倍）
}
```

### `equipment_market_max_for_sale`
限制AI在市场上出售某类装备的最大数量
```
ai_strategy = {
    type = equipment_market_max_for_sale
    id = train
    value = 30  # AI最多会出售30个单位（为0则忽略，若要禁止出售请用其他策略）
}
```

### `equipment_market_min_for_sale`
AI在市场上出售装备的最小数量下限，并会以该值的倍数出售。会覆盖EQUIPMENT_MARKET_DEFAULT_CIC_CHUNK_FOR_SALE定义。
```
ai_strategy = {
    type = equipment_market_min_for_sale
    id = train
    value = 20  # AI每次至少出售该数量
}
```

### `equipment_market_buying_threshold`
影响AI在市场购买装备时对原型需求的感知。50表示会比实际需求多买50个，-20表示只有当缺口大于20时才会购买。
```
ai_strategy = {
    type = equipment_market_buying_threshold
    id = small_plane_cas_airframe  # 装备原型
    value = 100  # 绝对数量
}
```

### `equipment_market_buy`
影响AI对可购买装备的评分。必须指定equipment_type或seller或两者。
```
ai_strategy = {
    type = equipment_market_buy
    equipment_type = light_tank_chassis  # 可选：要购买的装备类型或原型
    seller = GER  # 可选：购买对象国家，可用作用域变量
    value = 200  # 作为评分计算的一部分，相关定义：EQUIPMENT_MARKET_SCORE_FACTOR_AI_STRAT_WEIGHT
}
```

### `equipment_market_trade_desire`
提升（或为负则降低）与某国交易的意愿。影响购买请求的接受度和市场准入的接受度+意愿。
```
ai_strategy = {
    type = equipment_market_trade_desire
    id = ENG  # 期望的贸易伙伴
    value = 30  # 提高接受度和意愿
}
```

### `research_tech`
Forces AI to research a specific technology as soon as possible
```
ai_strategy = {
    type = research_tech
    id = radio_detection
    value = 100  # 只要为正即可，AI会尽快研究该科技（如有能力）
}
```

### `research_weight_factor`
调整AI对某科技的权重（分数）
```
ai_strategy = {
    type = research_weight_factor
    id = radio_detection
    value = 100  # 用该值调整ai_will_do分数（50为+50%，-30为-30%等）
}
```

### `unit_ratio`
AI生产装备时，unit_ratio决定该装备类型与其他类型的比例
```
ai_strategy = {
    type = unit_ratio
    id = naval_bomber
    value = 15  # 使海军轰炸机的比例比其他飞机类型高15%
}
```

### `land_xp_spend_priority`, `air_xp_spend_priority` and `navy_xp_spend_priority`

用于调整AI在陆军、空军或海军类别下花费经验的意愿。
id指定要调整的行为，有效标记如下：

* `division_template` - 更新师编制
* `unlock_doctrine` -  解锁学说
* `equipment_variant` - 升级装备
* `upgrade_xp_cutoff` - 旧版升级系统下创建装备变种的经验阈值（本身不是意愿）
* `army_spirit` / `air_spirit` / `navy_spirit` - 解锁精神（需与type类别匹配）

示例：
```
ai_strategy = {
    type = land_xp_spend_priority
    id = division_template
    value = 100
}
```

### `strategic_air_importance`
影响AI对空优/空战的优先级
```
ai_strategy = {
    type = strategic_air_importance
    id = 1  # 战略区域ID - 南英格兰
    value = 10000  # 主战场通常约35000
}
```

### `raid_target_country`
让AI更倾向或不倾向对某国进行袭击
```
ai_strategy = {
    type = raid_target_country
    id = GER # 目标国家
    value = 200  # 概率调整。200为+200%，-50为-50%
}
```

### `become_spymaster`
用于设置阵营领袖成为间谍主管的权重（如果尚未是主管）
```
ai_strategy = {
    type = become_spymaster
    value = 30 # 用于消耗政治点成为间谍主管的权重
}
```

### `naval_dominance`
用于设置AI区域的海军主导度
```
ai_strategy = {
    type = naval_dominance
    id = winter_war_front # AI区域key
    OR
    id = 271 # 区域id
    value = 99 # 0到100之间的百分比
}
```

### `convoy_raiding_target`
用于设置对护航运输袭击目标的重要性
```
ai_strategy = {
    type = convoy_raiding_target
    id = FRA
    value = 80 # 0到100之间的百分比
}
```

### `naval_blockade`
用于设置某战略区域的海上封锁
```
ai_strategy = {
    type = naval_blockade
    target_country = GER
    id = 35 # 战略区域ID
    value = 100 # 0到100之间的百分比
}
```

### `coast_defense`
用于设置某战略区域的海岸防御
```
ai_strategy = {
    type = coast_defense
    id = 35 # 战略区域ID
    value = 100 # 0到100之间的百分比
}
```