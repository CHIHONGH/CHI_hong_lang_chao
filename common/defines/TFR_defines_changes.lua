	NDefines.NGame.START_DATE = "2020.1.1.1";
	NDefines.NGame.END_DATE = "2050.1.1.1";
	
	NDefines.NDiplomacy.WARGOAL_JUSTIFY_TENSION_FROM_PRODUCTION = 20.0;
	NDefines.NDiplomacy.TENSION_TIME_SCALE_START_DATE = "2020.1.1.1"
	NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 3; -- This many divisons are required for the country to be able to send volunteers.
	NDefines.NDiplomacy.VOLUNTEERS_TRANSFER_SPEED = 7 -- 14	-- days to transfer a unit to another nation
	

	NDefines.NGraphics.POLITICAL_GRID_SMALL_BOX_LIMIT = 50
	NDefines_Graphics.NGraphics.MINIMUM_PROVINCE_SIZE_IN_PIXELS = 2
	
	NDefines.NMilitary.COMBAT_MINIMUM_TIME = 8 -- 4
	NDefines.NMilitary.RIVER_CROSSING_PENALTY = -0.2 -- -0.3
	NDefines.NMilitary.RIVER_CROSSING_PENALTY_LARGE = -0.4 -- -0.6
	NDefines.NMilitary.RIVER_CROSSING_SPEED_PENALTY = -0.15 -- -0.25
	NDefines.NMilitary.RIVER_CROSSING_SPEED_PENALTY_LARGE = -0.30 -- -0.5
	NDefines.NMilitary.BASE_FORT_PENALTY = -0.15 -- -0.15
	NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_IMPACT = -0.5 -- -0.35
	NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_SPEED_IMPACT = -0.2 -- -0.3
	NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.001 -- 0.0015
	NDefines.NMilitary.LAND_COMBAT_ORG_DICE_SIZE = 2 -- 4
	NDefines.NMilitary.LAND_COMBAT_STR_DICE_SIZE = 6 -- 2
	NDefines.NMilitary.EQUIPMENT_COMBAT_LOSS_FACTOR = 0.15 -- 0.68
	NDefines.NMilitary.LAND_COMBAT_STR_DAMAGE_MODIFIER = 0.01 -- 0.06
	NDefines.NMilitary.LAND_COMBAT_ORG_DAMAGE_MODIFIER = 0.03 -- 0.053
	NDefines.NMilitary.LAND_COMBAT_COLLATERAL_FACTOR = 0.07 -- 0.005	
	NDefines.NMilitary.BASE_LEADER_TRAIT_GAIN_XP = 0.75
	NDefines.NMilitary.STRATEGIC_INFRA_SPEED = 15.0;
	NDefines.NMilitary.HOURLY_ORG_MOVEMENT_IMPACT = -0.1 -- -0.2
	NDefines.NMilitary.ZERO_ORG_MOVEMENT_MODIFIER = -0.2 -- -0.8
	NDefines.NMilitary.INFRASTRUCTURE_MOVEMENT_SPEED_IMPACT = -0.03 -- -0.05
	NDefines.NMilitary.CORPS_COMMANDER_DIVISIONS_CAP = 18 --24
	NDefines.NMilitary.FIELD_MARSHAL_DIVISIONS_CAP = 24 --24
	NDefines.NMilitary.FIELD_MARSHAL_ARMIES_CAP = 5 --5
	NDefines.NMilitary.GARRISON_ORDER_ARMY_CAP_FACTOR = 1.0	-- 3.0, armies gets increased cap when they are garrisoned
	NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 5 -- 10
	NDefines.NMilitary.ATTRITION_DAMAGE_ORG = 0.04 -- 0.1
	NDefines.NMilitary.ATTRITION_EQUIPMENT_LOSS_CHANCE = 0.001 -- 0.005
	NDefines.NMilitary.ATTRITION_EQUIPMENT_PER_TYPE_LOSS_CHANCE = 0.001 -- 0.1
	NDefines.NMilitary.TACTIC_SWAP_FREQUENCEY = 24 -- 24
	NDefines.NMilitary.BASE_COMBAT_WIDTH = 120 -- 80
	NDefines.NMilitary.ADDITIONAL_COMBAT_WIDTH = 60 -- 40	
	NDefines.NMilitary.LEADER_EXPERIENCE_SCALE = 0.5 -- 1.0
	NDefines.NMilitary.SLOWEST_SPEED = 4 -- 4
	NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY = -0.5 -- -2
	NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY_MAX = -0.66 -- -0.33
	NDefines.NMilitary.RETREAT_SPEED_FACTOR = 1.0 -- 0.25
	NDefines.NMilitary.STRATEGIC_SPEED_BASE = 30.0 -- 10.0
	NDefines.NMilitary.SUPPLY_GRACE = 336 -- 72
	NDefines.NMilitary.MAX_OUT_OF_SUPPLY_DAYS = 28 -- 30
	NDefines.NMilitary.OUT_OF_SUPPLY_SPEED = -0.6	-- -0.8
	NDefines.NMilitary.NON_CORE_SUPPLY_SPEED = -0.25 -- -0.5
	NDefines.NMilitary.NON_CORE_SUPPLY_AIR_SPEED = -0.125 -- -0.25
	NDefines.NMilitary.OUT_OF_SUPPLY_MORALE = -0.15 -- -0.30
	NDefines.NMilitary.AIR_SUPPORT_BASE = 0.3 -- 0.25
	NDefines.NMilitary.REINFORCE_CHANCE = 0.05 -- 0.02	
	NDefines.NMilitary.ENCIRCLED_DISBAND_MANPOWER_FACTOR = 0.25 -- 0.20
	NDefines.NMilitary.ORG_LOSS_FACTOR_ON_CONQUER = 0.3 -- 0.2	
	NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 1000 -- 500
	NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 1000 -- 500
	NDefines.NMilitary.MAX_AIR_EXPERIENCE = 1000 -- 500
	NDefines.NMilitary.ENCIRCLED_PENALTY = -0.15 -- 0.3
	
	NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.032  -- Vanilla is 0.05, air global strength damage modifier from CAS. Thanks, Knifepony! - IAVL
	NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.032  -- Vanilla is 0.10, air global org damage modifier from CAS. Thanks, Knifepony! - IAVL

	-- Lagg Reducer 9000, Taken from Spot Optimiser
	
	NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 100
	NDefines.NGame.LAG_DAYS_FOR_PAUSE = 30
	NDefines.NGame.GAME_SPEED_SECONDS = { 1.0, 0.25, 0.1, 0.05, 0.0 }
	NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 36
	NDefines.NCountry.EVENT_PROCESS_OFFSET = 30
	NDefines_Graphics.NGraphics.MAPICON_GROUP_PASSES = 10
	NDefines_Graphics.NGraphics.MAP_ICONS_COARSE_COUNTRY_GROUPING_DISTANCE = 200
	NDefines_Graphics.NGraphics.MAP_ICONS_COARSE_COUNTRY_GROUPING_DISTANCE_STRATEGIC = 0
	
	
	-- Battleplan AI
	NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 4.0						-- Vanilla is 1.0 HYPER AGGRESSIVE AI
	NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.2							-- Vanilla is 0.2

	NDefines.NAI.VP_LEVEL_IMPORTANCE_HIGH = 25									-- Not defined in vanilla
	NDefines.NAI.VP_LEVEL_IMPORTANCE_MEDIUM = 10								-- Vanilla is 10
	NDefines.NAI.VP_LEVEL_IMPORTANCE_LOW = 1									-- Not defined in vanilla

	-- Combat AI
	NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0										-- Vanilla is 0.2
	NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3			-- Vanilla is 0.5
	NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3	-- Vanilla is 0.5
	NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 400								-- Vanilla is 300
	NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 50.0				-- The higher the value, the less it should crowd provinces with multiple attacks.
	
	-- Addition with 1.3.2
	NDefines.NMilitary.PLAN_PORVINCE_PORT_BASE_IMPORTANCE = 15.0		-- increased from 9.0 ; Added importance for area defense province with a port
	NDefines.NMilitary.PLAN_PORVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level
	NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
	NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
	NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
	

	NDefines.NMilitary.PLAN_PROVINCE_PORT_BASE_IMPORTANCE = 15.0		-- increased from 9.0 ; Added importance for area defense province with a port
	NDefines.NMilitary.PLAN_PROVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level
	NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
	NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
	NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
	

	NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_UNIT_FACTOR = -1.5		-- Factor applied to province score in area defense order per enemy unit in that province
	NDefines.NMilitary.PLAN_AREA_DEFENSE_FORT_IMPORTANCE = 0.30			-- Used when calculating the calue of defense area provinces for the battle plan system, works as multipliers on the rest
	NDefines.NMilitary.PLAN_AREA_DEFENSE_COASTAL_FORT_IMPORTANCE = 5.0	-- Used when calculating the calue of defense area provinces for the battle plan system
	NDefines.NMilitary.PLAN_AREA_DEFENSE_COAST_NO_FORT_IMPORTANCE = 2.0	-- Used when calculating the calue of defense area provinces for the battle plan system

	NDefines.NMilitary.PLAN_STICKINESS_FACTOR = 95.0					-- downed from 100; Factor used in unitcontroller when prioritizing units for locations
	NDefines.NMilitary.PLAN_STICKINESS_IGNORE_STACK_LIMIT = 1			-- 1 == yes, 0 == no. Alloes player to override prio to stack units where they want to.

	NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_LIMIT = 6.0				-- reduced from 25 ; When looking for an attach target, this score limit is required in the battle plan to consider province for attack
	NDefines.NMilitary.PLAN_EXECUTE_BALANCED_LIMIT = -10.0				-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
	NDefines.NMilitary.PLAN_EXECUTE_RUSH = -200						-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
	NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_MAX_FORT = 4				-- reduced from 5 ; If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this

	NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.54				-- increased from 0.50 ; If Lower progress than this, probably needs support

	NDefines.NMilitary.PLAN_BLITZ_OPTIMISM = 0.3						-- increased from 0.2 ; Additional combat balance value in favor of blitzing side when considering targets (not a combat bonus, just offsets planning)
	
	NDefines.NAir.STRATEGIC_BOMBER_NUKE_AIR_SUPERIORITY = 1 -0.75
	NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 25000 -- 红色黎明NAir标记
	NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 25000 -- 红色黎明NAir标记
	NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 25000 -- 红色黎明NAir标记
	NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 50000 -- 红色黎明NAir标记
	NDefines.NAir.AIR_WING_MAX_STATS_BOMBING = 1000 -- 红色黎明NAir标记
	NDefines.NAir.ACCIDENT_CHANCE_BASE = 0.01
	NDefines.NAir.ACCIDENT_CHANCE_CARRIER_MULT = 1
	NDefines.NAir.ACCIDENT_CHANCE_BALANCE_MULT = 0.5
	NDefines.NAir.AIR_WING_XP_MAX = 1500.0
	NDefines.NAir.AIR_WING_XP_LEVELS = { 300, 600, 900, 1200 }
	NDefines.NAir.AIR_WING_BOMB_DAMAGE_FACTOR = 55 -- 2
	NDefines.NAir.COMBAT_STAT_IMPORTANCE_SPEED = 0.5 -- 1
	NDefines.NAir.COMBAT_STAT_IMPORTANCE_AGILITY = 2 -- 1
	NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.85 -- 红色黎明NAir标记
	NDefines.NAir.COMBAT_AMOUNT_DIFF_AFFECT_GANG_CHANCE = 0.4 -- 0.5
	NDefines.NAir.COMBAT_ONE_ON_ONE_CHANCE = 0.7 -- 0.6
	NDefines.NAir.COMBAT_SITUATION_WIN_CHANCE_FROM_STATS = 1.5 -- 0.3
	NDefines.NAir.COMBAT_SITUATION_WIN_CHANCE_FROM_GANG = 0.8 -- 0.3
	NDefines.NAir.COMBAT_MAX_WINGS_AT_ONCE = 8500 -- 10000 --Upped the count to ensure more airusages and coverage
	NDefines.NAir.COMBAT_MAX_WINGS_AT_GROUND_ATTACK = 6000 -- 10000
	NDefines.NAir.COMBAT_MAX_WINGS_AT_ONCE_PORT_STRIKE = 2500 -- 10000
	NDefines.NAir.DETECT_CHANCE_FROM_AIRCRAFTS_EFFECTIVE_COUNT = 350 -- 3000
	NDefines.NAir.DETECT_CHANCE_FROM_NIGHT = -0.05 -- -0.2
	NDefines.NAir.CARRIER_HOURS_DELAY_AFTER_EACH_COMBAT = 3 -- 4
	NDefines.NAir.HOURS_DELAY_AFTER_EACH_COMBAT = 3 -- 4
	NDefines.NAir.NAVAL_STRIKE_TARGETTING_TO_AMOUNT = 0.40 -- 0.3
	NDefines.NAir.NAVAL_STRIKE_DETECTION_BALANCE_FACTOR = 0.7 -- 0.7
	NDefines.NAir.NAVAL_RECON_DETECTION_BALANCE_FACTOR = 0.7 -- 0.7
	NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_STR = 3 -- 3
	NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_ORG = 3.50 -- 3
	NDefines.NAir.AIR_AGILITY_TO_NAVAL_STRIKE_AGILITY = 0.02 -- 0.01
	NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 50 -- 0.2
	NDefines.NAir.AIR_COMBAT_FINAL_DAMAGE_SCALE = 0.025 -- 0.015
	NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_FACTOR = 0.02 -- 0.1
	NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_CHANCE = 0.03 -- 0.1
	NDefines.NAir.AIR_DEPLOYMENT_DAYS = 1 -- 2
	NDefines.NAir.ANTI_AIR_ATTACK_TO_DAMAGE_REDUCTION_FACTOR = 0.10 -- 1.0
	NDefines.NAir.NAVAL_COMBAT_EXTERNAL_PLANES_JOIN_RATIO = 0.02
	NDefines.NAir.NAVAL_COMBAT_EXTERNAL_PLANES_JOIN_RATIO_PER_DAY = 0.2
	NDefines.NAir.NAVAL_COMBAT_EXTERNAL_PLANES_MIN_CAP = 4
	NDefines.NAir.MISSION_COMMAND_POWER_COSTS = {  -- command power cost per plane to create a mission
		0.0, -- AIR_SUPERIORITY
		0.0, -- CAS
		0.0, -- INTERCEPTION
		0.0, -- STRATEGIC_BOMBER
		0.0, -- NAVAL_BOMBER
		1000.0, -- DROP_NUKE
		0.0, -- PARADROP
		0.0, -- NAVAL_KAMIKAZE
        0.0, -- PORT_STRIKE
		0.0, -- ATTACK_LOGISTICS
		0.05, -- AIR_SUPPLY
		0.0, -- TRAINING
		0.0, -- NAVAL_MINES_PLANTING
		0.0, -- NAVAL_MINES_SWEEPING
		0.0, -- RECON
		0.0, -- NAVAL_PATROL
	}

	--NDefines.NAir.AIR_NAVAL_KAMIKAZE_DAMAGE_MULT = 25 						--20.0 自杀式袭击伤害倍率 #机械胜过热血，孩子们！
	--NDefines.NAir.AIR_NAVAL_KAMIKAZE_LOSSES_MULT = 10					 	--4.0 自杀式袭击损失倍率
	--NDefines.NAir.BASE_KAMIKAZE_DAMAGE = 1 									--2.0 自杀式袭击最低伤亡
	NDefines.NAir.BIGGEST_AGILITY_FACTOR_DIFF = 8                         	-- 4 高机动的伤害增益奖励上限
	NDefines.NAir.BIGGEST_SPEED_FACTOR_DIFF = 20                           	-- 3.5 高速度的伤害增益奖励上限
	NDefines.NAir.COMBAT_BETTER_SPEED_DAMAGE_INCREASE = 0.99                -- 0.65 高速度的减伤奖励上限

	--NDefines.NIntel.DYNAMIC_INTEL_SOURCE_EVENT_MAXIMUMS = { 100, 100, 100, 100 },
	--NDefines.NIntel.DYNAMIC_INTEL_SOURCE_EVENT_ABSOLUTE_MAXIMUMS = { 150, 150, 150, 150 }
	
	NDefines.NNavy.MAX_SUBMARINES_PER_AUTO_TASK_FORCE = 10 -- 30
	NDefines.NNavy.BEST_CAPITALS_TO_CARRIER_RATIO = 4 -- 1
	NDefines.NNavy.BEST_CAPITALS_TO_SCREENS_RATIO = 0.5 -- 0.25
	NDefines.NNavy.DETECTION_CHANCE_BALANCE = 1.5 -- 2.5
	NDefines.NNavy.DECRYPTION_SPOTTING_BONUS = 0.3 -- 0.2
	NDefines.NNavy.COMBAT_EVASION_TO_HIT_CHANCE_TORPEDO_MULT = 30 -- 40
	NDefines.NNavy.COMBAT_LOW_ORG_HIT_CHANCE_PENALTY = -0.8 -- -0.5
	NDefines.NNavy.COMBAT_TORPEDO_CRITICAL_CHANCE = 0.2 -- 0.2
	NDefines.NNavy.COMBAT_TORPEDO_CRITICAL_DAMAGE_MULT = 2.0 -- 2.0
	NDefines.NNavy.COMBAT_DAMAGE_TO_STR_FACTOR = 1.0 -- 1.6
	NDefines.NNavy.COMBAT_DAMAGE_TO_ORG_FACTOR = 1.0 -- 1.9
	NDefines.NNavy.COMBAT_DAMAGE_REDUCTION_ON_RETREAT = 0.75 -- 0.8
	NDefines.NNavy.COMBAT_ESCAPING_SPEED_BALANCE = 0.9 -- 0.8
	NDefines.NNavy.COMBAT_SHIP_SPEED_TO_FIELD_FACTOR = 0.15 -- 0.03
	NDefines.NNavy.COMBAT_MAX_DISTANCE_TO_CENTER_LINE = 350 -- 50
	NDefines.NNavy.COMBAT_MAX_DISTANCE_TO_ARRIVE = 600 -- 80
	NDefines.NNavy.COMBAT_MIN_DURATION = 16 -- 8
	NDefines.NNavy.COMBAT_CHASE_RESIGNATION_HOURS = 6 -- 8
	NDefines.NNavy.REPAIR_AND_RETURN_PRIO_LOW = 0.35 -- 0.2
	NDefines.NNavy.REPAIR_AND_RETURN_PRIO_MEDIUM = 0.55 -- 0.5
	NDefines.NNavy.REPAIR_AND_RETURN_PRIO_HIGH = 0.85 -- 0.9
	NDefines.NNavy.REPAIR_AND_RETURN_PRIO_LOW_COMBAT = 0.75 -- 0.6
	NDefines.NNavy.REPAIR_AND_RETURN_PRIO_MEDIUM_COMBAT = 0.5 -- 0.3
	NDefines.NNavy.REPAIR_AND_RETURN_PRIO_HIGH_COMBAT = 0.35 -- 0.1
	NDefines.NNavy.REPAIR_AND_RETURN_UNIT_DYING_STR = 0.35 -- 0.2
	NDefines.NNavy.NAVY_EXPENSIVE_IC = 18000 -- 5500
	NDefines.NNavy.CONVOY_EFFICIENCY_MIN_VALUE = 0.1 -- 0.05
	NDefines.NNavy.AMPHIBIOUS_LANDING_PENALTY = -0.5 -- -0.7
	NDefines.NNavy.BASE_CARRIER_SORTIE_EFFICIENCY = 0.5 -- 0.5
	NDefines.NNavy.NAVAL_SPEED_MODIFIER = 0.1 -- 0.1
	NDefines.NNavy.NAVAL_TRANSFER_BASE_SPEED = 12 -- 6
	NDefines.NNavy.NAVAL_INVASION_PREPARE_HOURS = 96 -- 168
	NDefines.NNavy.ANTI_AIR_TARGETING = 1.8 -- 0.9
	NDefines.NNavy.ANTI_AIR_TARGETTING_TO_CHANCE = 0.2 -- 0.2
	NDefines.NNavy.ANTI_AIR_ATTACK_TO_AMOUNT = 0.01 -- 0.01
	NDefines.NNavy.SHIP_TO_FLEET_ANTI_AIR_RATIO = 0.1 -- 0.2
	NDefines.NNavy.ANTI_AIR_POW_ON_INCOMING_AIR_DAMAGE = 0.2 -- 0.2
	NDefines.NNavy.ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE = 0.35 -- 0.15
	NDefines.NNavy.MAX_ANTI_AIR_REDUCTION_EFFECT_ON_INCOMING_AIR_DAMAGE = 0.99 -- 0.75
	NDefines.NNavy.ENEMY_AIR_SUPERIORITY_IMPACT = -0.7
	
	NDefines.NNavy.MISSION_FUEL_COSTS = {
		0.1, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		0.8, -- PATROL
		1.0, -- STRIKE FORCE (does not cost fuel at base, and uses IN_COMBAT_FUEL_COST in combat. this is just for the movement in between)
		1.0, -- CONVOY RAIDING
		0.8, -- CONVOY ESCORT
		1.0, -- MINES PLANTING
		1.0, -- MINES SWEEPING
		0.8, -- TRAIN
		0.0, -- RESERVE_FLEET (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		1.0, -- NAVAL_INVASION_SUPPORT (does not cost fuel at base, only costs while doing bombardment and escorting units)
	}
	NDefines.NNavy.ORG_COST_WHILE_MOVING = {
		0.3, -- HOLD
		0.2, -- PATROL
		0.25, -- STRIKE FORCE
		0.2, -- CONVOY RAIDING
		0.2, -- CONVOY ESCORT
		0.2, -- MINES PLANTING
		0.2, -- MINES SWEEPING
		0.2, -- TRAIN
		0.3, -- RESERVE_FLEET
		0.2, -- NAVAL_INVASION_SUPPORT
	}
	NDefines.NNavy.MISSION_SUPREMACY_RATIOS = {
		0.5, -- HOLD
		1.0, -- PATROL
		0.5, -- STRIKE FORCE
		0.75, -- CONVOY RAIDING
		0.75, -- CONVOY ESCORT
		0.35, -- MINES PLANTING
		0.35, -- MINES SWEEPING
		0.20, -- TRAIN
		0.0, -- RESERVE_FLEET
		1.0, -- NAVAL_INVASION_SUPPORT
	}
	NDefines.NNavy.MIN_HOURS_TO_SHUFFLE_NEWLY_ASSIGNED_PATROLS = 10 * 24
	NDefines.NNavy.BASE_SPOTTING_FROM_RADAR = 15 -- 5
	NDefines.NNavy.BASE_SPOTTING = 5 -- 1
	NDefines.NNavy.SPOTTING_MULTIPLIER_FOR_SUB = 0.60 -- Reduced by 40% -- Should help subs
	NDefines.NNavy.SPOTTING_MULTIPLIER_FOR_SURFACE = 1.2 -- buffed by 10%
	NDefines.NNavy.ESCAPE_SPEED_HIDDEN_SUB = 0.45 --escape speed
	NDefines.NNavy.ESCAPE_SPEED_SUB_BASE = 0.30 -- escape speed base
	NDefines.NNavy.SUB_DETECTION_CHANCE_BASE = 3 -- 5 -- huge buff to subs detection
	NDefines.NNavy.SUB_DETECTION_CHANCE_BASE_SPOTTING_EFFECT = 0.3 -- 0.5
	NDefines.NNavy.SUB_DETECTION_CHANCE_SPOTTING_SPEED_EFFECT = 1.2 -- 2.0
	NDefines.NNavy.SUB_DETECTION_CHANCE_BASE_SPOTTING_POW_EFFECT = 1.01
	NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 1 -- Reduced to 100% from 200% -- 25% is vanilla
	NDefines.NNavy.HEAVY_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.1
	NDefines.NNavy.LIGHT_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.05
	NDefines.NNavy.COMBAT_MIN_HIT_CHANCE = 0.05	-- never less hit chance then this?
	NDefines.NNavy.MIN_HIT_PROFILE_MULT = 0.1 -- largest hit profile penalty to hitting (higher value of the define makes ships easier to hit, i assume by reducing the penalty caused by small hit profile of target ship)
	NDefines.NNavy.GUN_HIT_PROFILES = { -- hit profiles for guns, if target ih profile is lower the gun will have lower accuracy
		40.0,	-- big guns
		50.0,	-- torpedos  #anti ship guided weapons
		20.0,	-- small guns
	}
	NDefines.NNavy.BASE_GUN_COOLDOWNS = { -- number of hours for a gun to be ready after shooting
		2.0,	-- big guns
		4.0,	-- torpedos #anti ship guided weapons
		2.0,	-- small guns
	}

	NDefines.NNavy.DEPTH_CHARGES_HIT_CHANCE_MULT = 1.5 -- multiplies hit chance of depth charges
	NDefines.NNavy.DEPTH_CHARGES_DAMAGE_MULT = 2 	-- multiplies damage of depth charges
	NDefines.NNavy.DEPTH_CHARGES_HIT_PROFILE = 24.0	-- hit profile for depth charges
	NDefines.NNavy.CARRIER_STACK_PENALTY = 2
	NDefines.NNavy.CARRIER_STACK_PENALTY_EFFECT = 0.5
	NDefines.NNavy.CARRIER_ONLY_COMBAT_ACTIVATE_TIME = 0 -- 0
	NDefines.NNavy.CAPITAL_ONLY_COMBAT_ACTIVATE_TIME = 6
	NDefines.NNavy.ALL_SHIPS_ACTIVATE_TIME = 24 -- 8 -- hours where all get to attack
	NDefines.NNavy.NAVAL_MINES_DECAY_AT_PEACE_TIME = 0.05 -- 0.25
	NDefines.NNavy.ATTRITION_WHILE_MOVING_FACTOR = 2.5 -- 1.5
	NDefines.NNavy.ATTRITION_DAMAGE_ORG = 0.01 -- 0.01
	NDefines.NNavy.ATTRITION_DAMAGE_STR = 0.03 -- 0.03
	NDefines.NNavy.ATTRITION_STR_DAMAGE_CHANCE = 0.4 -- 0.2
	NDefines.NNavy.TRAINING_ACCIDENT_CHANCES = 0.005 -- 0.02
	NDefines.NNavy.TRAINING_ACCIDENT_STRENGTH_LOSS_FACTOR = 0.02 -- 0.05
	NDefines.NNavy.TRAINING_EXPERIENCE_FACTOR = 0.15 -- 0.3
	NDefines.NNavy.UNIT_EXPERIENCE_PER_COMBAT_HOUR = 15 -- 10
	NDefines.NNavy.LEADER_EXPERIENCE_SCALE = 2 -- 1
	NDefines.NNavy.CHANCE_TO_DAMAGE_PART_ON_CRITICAL_HIT = 0.01 -- 0.1
	NDefines.NNavy.CHANCE_TO_DAMAGE_PART_ON_CRITICAL_HIT_FROM_AIR = 0.1 -- 0.1
	NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CAPITALS = 1.5 -- 3.0
	NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CAPITALS = 1.5 -- 3.0
	NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.25 -- 0.5
	NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.1 -- 0.25
	NDefines.NNavy.NEW_NAVY_LEADER_LEVEL_CHANCES = {                                -- chances for new navy leaders to start at a given level
		0.90, -- 90% for level one
		0.10  -- 10% for level two
              -- 0% for level three to ten
	}
	NDefines.NAI.CARRIER_TASKFORCE_MAX_CARRIER_COUNT = 1 		-- optimum carrier count for carrier taskforces
	NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 16 -- 12	 -- optimum capital count for capital taskforces
	NDefines.NNavy.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 2			-- optimum screen count for screen taskforces
	NDefines.NNavy.SUB_TASKFORCE_MAX_SHIP_COUNT = 4				-- optimum sub count for sub taskforces
	NDefines.NNavy.MAX_SUBMARINES_PER_AUTO_TASK_FORCE = 4
	NDefines.NNavy.MAX_CAPITALS_PER_AUTO_TASK_FORCE = 6

	NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 4			-- carrier fleets will at least have this amount of capitals
	NDefines.NAI.CAPITALS_TO_CARRIER_RATIO = 8	-- 1			-- capital to carrier count in carrier taskfoces
	NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 2				-- screens to capital/carrier count in carrier & capital taskforces

	NDefines.NNavy.BASE_POSITIONING = 1.0 -- 1.0
	NDefines.NNavy.RELATIVE_SURFACE_DETECTION_TO_POSITIONING_FACTOR = 0.01 -- 0.01
	NDefines.NNavy.MAX_POSITIONING_BONUS_FROM_SURFACE_DETECTION = 0.25 -- 0.25    -- will clamp the bonus that you get from detection
	NDefines.NNavy.HIGHER_SHIP_RATIO_POSITIONING_PENALTY_FACTOR = 0.01 -- 0.25
	NDefines.NNavy.MAX_POSITIONING_PENALTY_FROM_HIGHER_SHIP_RATIO = 0.9 -- 0.75
	NDefines.NNavy.MIN_SHIPS_FOR_HIGHER_SHIP_RATIO_PENALTY = 60 -- 4          -- the minimum fleet size in ships that a fleet must be before having the large fleet penalty applied to them
	NDefines.NNavy.HIGHER_CARRIER_RATIO_POSITIONING_PENALTY_FACTOR = 0.4 -- 0.2
	NDefines.NNavy.MAX_CARRIER_RATIO_POSITIONING_PENALTY_FACTOR = 0.2 -- 0.2
	NDefines.NNavy.POSITIONING_PENALTY_FOR_SHIPS_JOINED_COMBAT_AFTER_IT_STARTS = 0.025 -- 0.05
	NDefines.NNavy.MAX_POSITIONING_PENALTY_FOR_NEWLY_JOINED_SHIPS = 0.3 -- 0.25
	NDefines.NNavy.POSITIONING_PENALTY_HOURLY_DECAY_FOR_NEWLY_JOINED_SHIPS = 0.04 -- 0.002
	NDefines.NNavy.DAMAGE_PENALTY_ON_MINIMUM_POSITIONING = 0.5 -- 0.5
	NDefines.NNavy.SCREENING_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING = 0.5 -- 0.5
	NDefines.NNavy.AA_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING = 0.35 -- 0.7
	NDefines.NNavy.SUBMARINE_REVEAL_ON_MINIMUM_POSITIONING = 1.0 -- 2.0

	NDefines.NNavy.NAVAL_COMBAT_SUB_DETECTION_FACTOR = 1.5      -- balance value for sub detection in combat by ships
	NDefines.NNavy.SUBMARINE_HIDE_TIMEOUT = 20		-- Amount of in-game-hours that takes the submarine (with position unrevealed), to hide.
	NDefines.NNavy.SUBMARINE_REVEALED_TIMEOUT = 16		-- Amount of in-game-hours that makes the submarine visible if it is on the defender side.
	NDefines.NNavy.SUBMARINE_REVEAL_BASE_CHANCE = 8		-- Base factor for submarine detection. It's modified by the difference of a spotter's submarines detection vs submarine visibility. Use this variable for game balancing. setting this too low will cause bad spotting issues.
	NDefines.NNavy.SUBMARINE_REVEAL_POW = 3.0		-- A scaling factor that is applied to the reveal chance in order to make large differences in detection vs visibility more pronounced
	NDefines.NNavy.SUBMARINE_BASE_TORPEDO_REVEAL_CHANCE = 0.05		-- Chance of a submarine being revealed when it fires. 1.0 is 100%. this chance is then multiplied with modifier created by comparing firer's visibiility and target's detection

	-- those two work together in the formula f(x) = Y(x/(x+X)) where Y is MAX and X is SLOPE
	NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_MAX = 10.0
	NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_SLOPE = 10.0						-- lower means sharper curve (ramps up very fast, then flatten out very fast). Must be >0

	NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_EXTERNAL_FACTOR = 1				-- Factor applied to the stats of external air planes
	NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_INTERNAL_EFFICIENCY_FACTOR = 1.0			-- Factor of Carrier's sortie efficiency on the stats bellow
	NDefines.NNavy.NAVAL_COMBAT_AIR_AGILITY_TO_SUB_DETECTION = 0.0					-- Factor to apply to the agility of air planes active in a naval combat to deduce their contibution to sub detection
	NDefines.NNavy.NAVAL_COMBAT_AIR_STRIKE_ATTACK_TO_SUB_DETECTION = 0.0					-- Same, but for strike attack (aka naval attack)
	NDefines.NNavy.NAVAL_COMBAT_AIR_STRIKE_TARGETING_TO_SUB_DETECTION = 0.0				-- Same, but for strike targeting (aka naval targeting)
	NDefines.NNavy.NAVAL_COMBAT_AIR_MAX_SPEED_TO_SUB_DETECTION = 0.0					-- Same, but for Max Speed
	NDefines.NNavy.NAVAL_COMBAT_AIR_PLANE_COUNT_TO_SUB_DETECTION = 1				-- Factor applied to the number of active plane in a naval combat to deduce their contribution to sub detection
	NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_DECAY_RATE = 1.0					-- Factor to decay the value of sub detection contributed by planes on the last hour. Note: the maximum value between the decayed value and the newly computed one is taken into account. A decay rate of 1 means that nothing is carried over, the previous value is zerod out. A decay rate of 0 means that the previous value is carried over as is.
	NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_FACTOR = 0.0						-- A global factor that applies after all others, right before the sub detection contributed by plane is added to the global sub detection of a combatant

	NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_TARGET_SCORE = 10                             -- scoring for target picking for planes inside naval combat, one define per ship typ
	NDefines.NNavy.NAVAL_COMBAT_AIR_CAPITAL_TARGET_SCORE = 25
	NDefines.NNavy.NAVAL_COMBAT_AIR_CARRIER_TARGET_SCORE = 200
	NDefines.NNavy.NAVAL_COMBAT_AIR_CONVOY_TARGET_SCORE = 1.0
	NDefines.NNavy.NAVAL_COMBAT_AIR_STRENGTH_TARGET_SCORE = 5                         -- how much score factor from low health (scales between 0->this number)
	NDefines.NNavy.NAVAL_COMBAT_AIR_LOW_AA_TARGET_SCORE = 5                           -- how much score factor from low AA guns (scales between 0->this number)

	NDefines.NNavy.WAR_SCORE_GAIN_FOR_SUNK_SHIP_MANPOWER_FACTOR = 0.01                        -- war score gained for every manpower killed when sinking a ship
	NDefines.NNavy.WAR_SCORE_GAIN_FOR_SUNK_SHIP_PRODUCTION_COST_FACTOR = 0.01   --0.04                       -- war score gained for every IC of the sunk ship
	NDefines.NNavy.WAR_SCORE_GAIN_FOR_SUNK_CONVOY = 2  --10                       -- war score gained for every sunk convoy
	NDefines.NNavy.WAR_SCORE_DECAY_FOR_BUILT_CONVOY = 1  --5                         -- war score deducted when convoy-raided enemy produces one new convoy

	NDefines.NNavy.NAVAL_INVASION_PLAN_CAP = 8 -- 1 -- base cap of naval invasions can be planned at the same time
	NDefines.NNavy.NAVAL_INVASION_PREPARE_DAYS = 21 -- 60 -- base days needed to prepare a naval invasion
	
	NDefines.NAI.BASE_RELUCTANCE = 35 -- 20
	NDefines.NAI.DIPLOMATIC_ACTION_PROPOSE_SCORE = 25 -- 50
	NDefines.NAI.DILPOMATIC_ACTION_DECLARE_WAR_WARGOAL_BASE = 75 -- 50
	NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 10.0 -- 5
	NDefines.NAI.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 75 -- 50
	NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_BASE = 75 -- 50
	NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 40 -- 7
	NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.5 -- 0.3
	NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 4 -- 2 --Buffing to double so it penalizes more
	NDefines.NAI.RESEARCH_BASE_DAYS = 750 -- 60 -- Reduced by around a year.
	NDefines.NAI.MIN_DELIVERED_TRADE_FRACTION = 0.6 -- 0.8
	NDefines.NAI.PRODUCTION_UNAVAILABLE_RESORCE_FACTORY_FACTOR = 0.4 -- 0.75
	NDefines.NAI.MAX_VOLUNTEER_ARMY_FRACTION = 0.5			-- 0.25
	NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.60		-- 0.90
	NDefines.NAI.CALL_ALLY_BASE_DESIRE = 25					-- 20
	NDefines.NAI.CALL_ALLY_DEMOCRATIC_DESIRE = 25			-- 50
	NDefines.NAI.CALL_ALLY_FASCIST_DESIRE = 25				-- -10
	NDefines.NAI.CALL_ALLY_COMMUNIST_DESIRE = 25				-- 75
	NDefines.NAI.JOIN_ALLY_BASE_DESIRE = 25					-- 20
	NDefines.NAI.JOIN_ALLY_DEMOCRATIC_DESIRE = 25			-- 50
	NDefines.NAI.JOIN_ALLY_FASCIST_DESIRE = 25				-- -10
	NDefines.NAI.JOIN_ALLY_COMMUNIST_DESIRE = 25				-- 75
	NDefines.NAI.LENDLEASE_FRACTION_OF_PRODUCTION = 0.6		-- 0.5
	NDefines.NAI.PLAN_MOVE_MIN_ORG_TO_ENEMY_PROVINCE = 5.0	-- 20
	NDefines.NAI.PLAN_FRONTUNIT_DISTANCE_FACTOR = 20			-- 10
	NDefines.NAI.PLAN_ATTACK_DEPTH_FACTOR = 1.2				-- 0.5
	NDefines.NAI.PLAN_STEP_COST_LIMIT = 15					-- 11
	NDefines.NAI.PLAN_FRONT_SECTION_MAX_LENGTH = 9			-- 18
	NDefines.NAI.PLAN_FRONT_SECTION_MIN_LENGTH = 4			-- 10
	NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 1000			-- 50
	NDefines.NAI.SEND_VOLUNTEER_EVAL_BASE_DISTANCE = 100.0  	-- 175
	NDefines.NAI.SEND_VOLUNTEER_EVAL_CONTAINMENT_FACTOR = 0.05 -- 0.1
	NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 7.5			-- 4
	NDefines.NAI.EASY_TARGET_FRONT_IMPORTANCE = 1.3			-- 7.5
	NDefines.NAI.MICRO_POCKET_SIZE = 10						-- 4
	NDefines.NAI.FRONT_REASSIGN_DISTANCE = 120.0				-- 120
	NDefines.NAI.OLD_FRONT_IMPORTANCE_FACTOR = 1.80			-- 1.5
	NDefines.NAI.FRONT_TERRAIN_DEFENSE_FACTOR = 4.0			-- 5
	NDefines.NAI.FRONT_TERRAIN_ATTACK_FACTOR = 8.0			-- 5
	NDefines.NAI.BASE_DISTANCE_TO_CARE = 200.0				-- 600
	NDefines.NAI.MIN_FORCE_RATIO_TO_PROTECT = 1.5			-- 0.5
	NDefines.NAI.STR_UNIT_STRONG = 0.65						-- 0.75
	NDefines.NAI.MIN_STATE_VALUE_TO_PROTECT = 3.5			-- 7.5
	NDefines.NAI.CALL_ALLY_WT_LIMIT = 0.6 -- 0.8
	NDefines.NAI.AIR_WING_REINFORCEMENT_LIMIT = 50					-- 150
	NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 30					-- 7
	NDefines.NAI.STRATEGIC_BOMBING_DEFENCE_IMPORTANCE = 500.0
	NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 1.75				-- 2.5
	NDefines.NAI.STATE_CONTROL_FOR_AREA_DEFENSE = 0.2				-- 0.4
	NDefines.NAI.NAVAL_MISSION_INVASION_BASE = 5000					-- 1000
	NDefines.NAI.SCARY_LEVEL_AVERAGE_DEFENSE = -0.6					-- -0.7
	NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.45					-- 0.45
	NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 24						-- 100
	NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.15 --default 0.25
	NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.2 --default -0.5
	NDefines.NAI.REQUEST_LEND_LEASE_CONTAINS_VALUE = 60				-- 100
	NDefines.NAI.REQUEST_LEND_LEASE_STOCKPILE_RATIO_LAND = 0.5		-- 0.1
	NDefines.NAI.REQUEST_LEND_LEASE_PRODUCTION_DAYS_LAND = 500		-- 28
	NDefines.NAI.REQUEST_LEND_LEASE_STOCKPILE_RATIO_AIR = 0.3		-- 0.03
	NDefines.NAI.REQUEST_LEND_LEASE_PRODUCTION_DAYS_AIR = 28			-- 10
	NDefines.NAI.REQUEST_LEND_LEASE_STOCKPILE_RATIO_NAVAL = 0.3		-- 0.1
	NDefines.NAI.NAVAL_TRANSFER_AIR_IMPORTANCE = 1.0				-- 0
	NDefines.NAI.NAVAL_STRIKE_PLANES_PER_SHIP = 5 --20 reduced by 50% to reduce the AI spamming planes over naval battles
	NDefines.NAI.FOCUS_TREE_CONTINUE_FACTOR = 1		-- Factor for score of how likely the AI is to keep going down a focus tree rather than starting a new path.
	NDefines.NAI.FALLBACK_LOSING_FACTOR = 0.0

	NDefines.NAI.LAND_DESIGN_ALTERNATIVE_ABSENT = 1 --1000000
	NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 1 --10000
	NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 1 --100
	NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1
	
	NDefines.NAI.LAND_DESIGN_DEMAND_FIELD_DIVISION = 50
	NDefines.NAI.LAND_DESIGN_DEMAND_TRAINING_DIVISION = 50
	NDefines.NAI.LAND_DESIGN_DEMAND_GARRISON_DIVISION = 10
	NDefines.NAI.LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 10 --1
	NDefines.NAI.LAND_DESIGN_DEMAND_ABSENT = 10 --0
	
	NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.85							-- Minimum org % for a unit to actively attack an enemy unit when executing a plan
	NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.85						-- Minimum strength for a unit to actively attack an enemy unit when executing a plan

	NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.65							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
	NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.65	

	NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.5		
	NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.5

	NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.65 --0.80	0.60		        -- % or more of units in an order to consider ececuting the plan
	NDefines.NAI.ORG_UNIT_STRONG = 0.75												-- Organization % for unit to be considered strong
	NDefines.NAI.STR_UNIT_STRONG = 0.75												-- Strength (equipment) % for unit to be considered strong

	NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.65
	NDefines.NAI.ORG_UNIT_NORMAL = 0.6 --6												-- Organization % for unit to be considered normal
	NDefines.NAI.STR_UNIT_NORMAL = 0.6 --6												-- Strength (equipment) % for unit to be considered normal

	NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.5 --0.50		0.65		        -- % or more of units in an order to consider ececuting the plan
	NDefines.NAI.ORG_UNIT_WEAK = 0.45 --0.45												-- Organization % for unit to be considered weak
	NDefines.NAI.STR_UNIT_WEAK = 0.4 --0.45												-- Strength (equipment) % for unit to be considered weak

	NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.5				            -- % or more average plan preparation before executing
	NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.4			                -- If less than this fraction of units on a front is moving  AI sees it as ready for action

	NDefines.NAI.RESERVE_TO_COMMITTED_BALANCE = 0.1 				                -- How many reserves compared to number of committed divisions in a combat (1.0 = as many as reserves as committed)
	NDefines.NAI.REDEPLOY_DISTANCE_VS_ORDER_SIZE = 1.0 			                -- Factor applied to the path length of a unit compared to length of an order to determine if it should use strategic redeployment
	NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 5.0 		                -- Terrain score for units are multiplied by this when the AI is deciding which front they should be assigned to
	
	NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 5.0					-- Factor for max number of units to assign to area front orders
	NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 4.5				-- Factor for desired number of units to assign to area front orders
	NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 3.0					-- Factor for min number of units to assign to area front orders

	NDefines.NCountry.BASE_STABILITY_PARTY_POPULARITY_FACTOR = 0.0 -- 15
	NDefines.NCountry.MIN_STABILITY = -1.0 -- 0.0
	NDefines.NCountry.MIN_WAR_SUPPORT = -1.0 -- 0.0
	NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.009 -- 0.9%
	NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.075
	NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 6
	NDefines.NCountry.BASE_COMMAND_POWER_GAIN = 0.5 -- 0.4
	NDefines.NCountry.AIR_VOLUNTEER_PLANES_RATIO = 0.4 -- Ratio for volunteer planes available for sending in relation to sender air force
	NDefines.NCountry.AIR_VOLUNTEER_BASES_CAPACITY_LIMIT = 0.25 -- Ratio for volunteer planes available for sending in relation to receiver air base capacity
	NDefines.NCountry.SCORCHED_EARTH_STATE_COST = 20 -- 5
	
	NDefines.NPolitics.BASE_POLITICAL_POWER_INCREASE = 1.5 -- 2.0
	
	NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 14 --10
	
	NDefines.NProduction.BASE_FACTORY_SPEED_MIL = 4.50 -- 4.50
	NDefines.NProduction.MAX_CIV_FACTORIES_PER_LINE = 20 -- 15
	NDefines.NProduction.MAX_MIL_FACTORIES_PER_LINE = 200 -- 150
	NDefines.NProduction.INFRA_MAX_CONSTRUCTION_COST_EFFECT = 1 -- 1
	NDefines.NProduction.MINIMUM_NUMBER_OF_FACTORIES_TAKEN_BY_CONSUMER_GOODS_VALUE = 1 -- 1
	NDefines.NProduction.MINIMUM_NUMBER_OF_FACTORIES_TAKEN_BY_CONSUMER_GOODS_PERCENT = 0.05 -- 0.1
	NDefines.NProduction.LEND_LEASE_DELIVERY_TOTAL_DAYS = 14 -- 30   -- Nr of days between lend lease deliveries
	NDefines.NProduction.ENERGY_SCALING_COST_BY_FACTORY_COUNT = 0.0125 -- 0.0225, -- Scales energy cost based on the total number of factories
	NDefines.NProduction.FLOATING_HARBOR_MAX_NAV_FACTORIES_PER_LINE = 10 -- 5
	NDefines.NProduction.CAPITAL_SHIP_MAX_NAV_FACTORIES_PER_LINE = 10 -- 5

	NDefines.NIndustrialOrganisation.ASSIGN_DESIGN_TEAM_PP_COST_PER_DAY = 0.05 -- 0.1

	NDefines.NBuildings.MAX_SHARED_SLOTS = 25 -- 25
	NDefines.NBuildings.INFRASTRUCTURE_RESOURCE_BONUS = 0.2 -- 0.2
	NDefines.NBuildings.SUPPLY_ROUTE_RESOURCE_BONUS = 0.1   -- 0.2
	NDefines.NBuildings.ROCKETSITE_CAPACITY_MULT = 100   -- 100 红色黎明NBuildings标记
	NDefines.NBuildings.SAM_MISSION_SUPERIORITY = 50.0      -- 5 红色黎明NBuildings标记 #地空导弹的空中优势
	NDefines.NBuildings.RADAR_RANGE_MAX = 10000  --红色黎明NBuildings标记 #雷达最大范围

	NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 30.0 -- 30
	NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 3	-- 2
	
	NDefines_Graphics.NGraphics.BORDER_COLOR_SELECTION_STATE_B = 1.00
	NDefines_Graphics.NGraphics.BORDER_COLOR_SELECTION_STATE_R = 1.15
	NDefines_Graphics.NGraphics.BORDER_COLOR_SELECTION_PROVINCE_R = 1.0
	NDefines_Graphics.NGraphics.BORDER_COLOR_SELECTION_PROVINCE_G = 0.1
	NDefines_Graphics.NGraphics.BORDER_COLOR_SELECTION_PROVINCE_B = 1.0
	
	NDefines_Graphics.NGraphics.COUNTRY_COLOR_HUE_MODIFIER = 0.0 -- 0.0
	NDefines_Graphics.NGraphics.COUNTRY_COLOR_SATURATION_MODIFIER = 0.6 -- 0.6 
	NDefines_Graphics.NGraphics.COUNTRY_COLOR_BRIGHTNESS_MODIFIER = 0.8 -- 0.8
	NDefines_Graphics.NGraphics.COUNTRY_UI_COLOR_HUE_MODIFIER = 0.0 -- 0.0
	NDefines_Graphics.NGraphics.COUNTRY_UI_COLOR_SATURATION_MODIFIER = 1.0 -- 1.0
	NDefines_Graphics.NGraphics.COUNTRY_UI_COLOR_BRIGHTNESS_MODIFIER = 1.0 -- 1.0
	
	NDefines_Graphics.NGraphics.MOON_HEIGHT = 100 -- 600 higher means softer shadows and more intense light
	NDefines_Graphics.NGraphics.SUN_HEIGHT  = 500  -- 600 higher means softer shadows and more intense light
	NDefines_Graphics.NGraphics.MOON_HEIGHT_WATER = 100   -- 550 higher means softer shadows and more intense light
	NDefines_Graphics.NGraphics.SUN_HEIGHT_WATER  = 500  -- 5000 higher means softer shadows and more intense light
	NDefines_Graphics.NGraphics.SUN_LATITUDE  = 777 -- 848
	
	NDefines_Graphics.NGraphics.SUN_DIFFUSE_COLOR = {0.14, 0.0, 1.0}
	NDefines_Graphics.NGraphics.SUN_INTENSITY = 0.7 -- 1.0
	NDefines_Graphics.NGraphics.SUN_SPECULAR_INTENSITY = 1.0
	NDefines_Graphics.NGraphics.MOON_DIFFUSE_COLOR = {0.58, 0.5, 1.0}
	NDefines_Graphics.NGraphics.MOON_INTENSITY = 2.5 -- 2.5
	
	NDefines_Graphics.NGraphics.MIN_HDR_ADJUSTMENT = 0.5   --0.5
	NDefines_Graphics.NGraphics.MAX_HDR_ADJUSTMENT = 1.0     --1.0

	-- Peace Conferences
	NDefines.NDiplomacy.PEACE_SCORE_SCALE_FACTOR = 2.15							-- Vanilla is 1.35
	NDefines.NDiplomacy.PEACE_SCORE_DISTRIBUTION = { 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2 } -- Vanilla is 0.2 in the first five turns
	
	NAI = {
		
		-- See above documentation.
		AIR_DESIGN_ALTERNATIVE_ABSENT = 1000000,
		AIR_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 10000,
		AIR_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 100,
		AIR_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1,
		-- The AI desires to produce equipment at a certain rate per archetype, and demand is determined per archetype
		-- relative to the least and most desired counts.
		AIR_DESIGN_DEMAND_MAX = 33,
		AIR_DESIGN_DEMAND_MIN = 1,
		AIR_DESIGN_DEMAND_ABSENT = 0,
		AIR_DESIGN_CUTOFF_AS_PERCENTAGE_OF_MAX = 0.34,
		ARMY_LEADER_ASSIGN_OVERCAPACITY = -1000,                     -- Score for assigning leader to a too large army
	}
	
	NDefines.NOperatives.MAX_OPERATIVE_SLOT_FROM_AGENCY_UPGRADES = 3	-- max operative slots gained from upgrades
	NDefines.NOperatives.BUILD_INTEL_NETWORK_DAILY_XP_GAIN = 1.1
	NDefines.NOperatives.QUIET_INTEL_NETWORK_DAILY_XP_GAIN = 0.15
	NDefines.NOperatives.COUNTER_INTELLIGENCE_DAILY_XP_GAIN = 0.15
	NDefines.NOperatives.OPERATION_COMPLETION_XP = 50