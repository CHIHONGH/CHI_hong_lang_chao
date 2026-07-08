# Taskforce composition

## Introduction

Script the amount of ships for a specific taskforce and its possible available missions (Currently only limited to 1)

## Scripting

```
generic_taskforce_1 = {
	allowed = {
		original_tag = ENG
	}
	ai_will_do = {
		# AI weight modifier for this template
		# If <= 0, the AI will not use this template
		#
		# SCOPE = COUNTRY
		factor = 1
	}
	mission = { naval_patrol } # A list of applicable missions this taskforce can perform
	min_composition = { # The minimum composition needed (Need more clarification here. Is the minimum before the goal system can use the taskforce?)
		carrier = 1 # Ship types and the amount needed
		battleship = 1
		heavy_cruiser = 1
		light_cruiser = 1
		destroyer = 1
	}
	
	optimal_composition = { # The maximum composition this taskforce will have
		carrier = 2
		battleship = 2
		heavy_cruiser = 5
		light_cruiser = 3
		destroyer = 6
		submarine = 2
	}
}
```

# 任务组构成

## 引言

为特定的行动小组设定船只数量及其可能执行的任务（目前仅限 1 项）

## 脚本编写
```
generic_taskforce_1 = {
	allowed = {
		original_tag = ENG
	}
	ai_will_do = {
		# 该模板的 AI 权重调整值
		# 若小于或等于 0，则 AI 不会使用此模板
		#
		# SCOPE = COUNTRY
		factor = 1
	}
	mission = { naval_patrol } # 执行此任务部队所需的最低配置（此处需要更详细的说明。最低配置是否是在目标系统能够使用该任务部队之前设定的？）
		carrier = 1 # 舰船类型及所需数量
		battleship = 1
		heavy_cruiser = 1
		light_cruiser = 1
		destroyer = 1
	}
	
	optimal_composition = { # # 该任务组所能达到的最大兵力构成
		carrier = 2
		battleship = 2
		heavy_cruiser = 5
		light_cruiser = 3
		destroyer = 6
		submarine = 2
	}
}
```