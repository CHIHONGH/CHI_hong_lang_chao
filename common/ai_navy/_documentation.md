# Goal-based Naval AI

## Introduction

This system replaces how the AI executes missions. The previous system relied on pre-defined priorities between missions, and rather obtuse logic for how task forces would be gathered and assigned to the missions. This new system aims to make the AI decision-making process more flexible, understandable and scriptable.

## Key concepts:

### Goals

A goal is a high-level operation that the AI could utilize its navy for.

Some examples:
* Supporting naval invasions
* Protecting trade routes
* Establishing naval dominance

A goal encompasses the action and the purpose, but a goal in itself does not have a specific target. That is where **Objectives** come in.

### Objectives

An objective is the application of a goal to a specific target.

Some examples:
* Supporting the naval invasion **on Iwo Jima** (i.e. a specific invasion)
* Protecting our trade route **with France** (i.e. a specific trade route)
* Establishing naval dominance **in the Mediterranean** (i.e. a specific region)

## Goal/Objective Scoring

All active objectives for a country are collected and scored. Objectives are then executed in a prioritized order according to the score - the AI will try to execute as many objectives as possible, starting with the highest scoring one.

Objectives are scored based on two factors:
* The **goal priority**: Each goal has a priority range, which signifies the importance of that goal to the country. This range determines the scoring range for objectives within that goal.
* The **objective importance**: This is a normalized value between **0-1**, which determines where in the goal's priority range the objective will be scored.

### An example:

* The **naval invasion support** goal has a priority range of **5-10**
  * There is an objective targeting **Iwo Jima** with an importance of **0.8**
  * There is an objective targeting **Okinawa** with an importance of **0.4**
* The **convoy protection** goal has a priority range of **3-8**
  * There is an objective targeting a trade route with **France** with an importance of **0.9**
  * There is an objective targeting a trade route with **Spain** with an importance of **0.4**

The AI will score the objectives as follows:
* Naval invasion support on Iwo Jima: **9.0** ( 5 + (10-5) * 0.8 )
* Convoy protection with France: **7.5** ( 3 + (8-3) * 0.9 )
* Naval invasion support on Okinawa: **7.0** ( 5 + (10-5) * 0.4 )
* Convoy protection with Spain: **5.0** ( 3 + (8-3) * 0.4 )

As illustrated, this results in a priority order where objectives from different goals are mixed. The idea is that the **goal priority** makes sure that the most relevant goals are always more favored, while the **objective importance** prioritizes objectives within goals. This system also allows high-value objectives from lower-prio goals to still have a chance to be prioritized over low-value objectives from higher-prio goals, as can be seen from the example above.

## Scripting

```
goal_name = {
    objective_type = [type] # See *Objective Types* below
    available_for = {
        ENG # If present, the goal will be disabled for all countries by default, and only available for the countries within this block
    }
    blocked_for = {
        GER # If present, the goal will be disabled for the countries within this block
    }
    
    min_priority = 5 # The minimum priority for this goal, see *Goal/Objective Scoring* above
    max_priority = 10 # The maximum priority for this goal, see *Goal/Objective Scoring* above
}
```

### Objective Types

These objective types are supported:
* naval_invasion_support
* naval_invasion_defense
* mines_sweeping
* coast_defense
* convoy_protection
* convoy_raiding

## Debugging

Use the command "*imgui show ai_navy*" to enable debugging of naval goals.


# 基于目标的海军人工智能

## 简介
该系统取代了人工智能执行任务的方式。之前的系统依赖于任务之间预先定义的优先级，以及特遣部队如何集结并分配到任务的相当生硬的逻辑。这个新系统旨在使人工智能的决策过程更加灵活、易懂且可编写脚本。

### 关键概念：

#### 目标
目标是人工智能可以利用其海军执行的高级操作。
一些示例如下：
- 支持海军登陆作战
- 保护贸易航线
- 建立海上优势

目标包含行动和目的，但目标本身没有特定的目标对象。这就是“任务”发挥作用的地方。

#### 任务
任务是将目标应用于特定的目标对象。
一些示例如下：
- 支持在硫磺岛的海军登陆作战（即特定的登陆行动）
- 保护与法国的贸易航线（即特定的贸易航线）
- 在地中海建立海上优势（即特定的区域）

### 目标/任务评分
收集一个国家的所有活跃任务并进行评分。然后，人工智能将根据分数按优先级顺序执行任务——从得分最高的任务开始，尽可能多地执行任务。

任务的评分基于两个因素：
- **目标优先级**：每个目标都有一个优先级范围，这表示该目标对国家的重要性。此范围决定了该目标内任务的评分范围。
- **任务重要性**：这是一个介于0 - 1之间的归一化值，它决定了任务在目标优先级范围内的得分位置。

#### 示例
- “海军登陆作战支持”目标的优先级范围为5 - 10。有一个针对硫磺岛的任务，其重要性为0.8；还有一个针对冲绳岛的任务，其重要性为0.4。
- “护航保护”目标的优先级范围为3 - 8。有一个针对与法国的贸易航线的任务，其重要性为0.9；还有一个针对与西班牙的贸易航线的任务，其重要性为0.4。

人工智能将按以下方式对任务进行评分：
- 硫磺岛的海军登陆作战支持：9.0（5 + (10 - 5) * 0.8）
- 与法国的护航保护：7.5（3 + (8 - 3) * 0.9）
- 冲绳岛的海军登陆作战支持：7.0（5 + (10 - 5) * 0.4）
- 与西班牙的护航保护：5.0（3 + (8 - 3) * 0.4）

如图所示，这导致不同目标的任务混合在一个优先级顺序中。其理念是，“目标优先级”确保最相关的目标始终更受青睐，而“任务重要性”则对目标内的任务进行优先级排序。从上述示例可以看出，该系统还允许低优先级目标中的高价值任务仍有机会优先于高优先级目标中的低价值任务。

### 脚本编写
goal_name = {
    objective_type = [type] # See *请参阅下面的“任务类型”
    available_for = {
        ENG # 如果存在，该目标默认对所有国家禁用，仅对本块内的国家可用
    }
    blocked_for = {
        GER # 如果存在，该目标将对本块内的国家禁用
    }

    min_priority = 5 # 此目标的最低优先级，请参阅上面的“目标/任务评分”
    max_priority = 10 # 此目标的最高优先级，请参阅上面的“目标/任务评分”
}

### 任务类型
支持以下任务类型：
- 海军登陆作战支持
- 海军登陆作战防御
- 扫雷
- 海岸防御
- 护航保护
- 护航袭击

### 调试
使用命令 "imgui show ai_navy" 来启用海军目标的调试功能。
# Goal-based Naval AI

## Introduction

This system replaces how the AI executes missions. The previous system relied on pre-defined priorities between missions, and rather obtuse logic for how task forces would be gathered and assigned to the missions. This new system aims to make the AI decision-making process more flexible, understandable and scriptable.

## Key concepts:

### Goals

A goal is a high-level operation that the AI could utilize its navy for.

Some examples:
* Supporting naval invasions
* Protecting trade routes
* Establishing naval dominance

A goal encompasses the action and the purpose, but a goal in itself does not have a specific target. That is where **Objectives** come in.

### Objectives

An objective is the application of a goal to a specific target.

Some examples:
* Supporting the naval invasion **on Iwo Jima** (i.e. a specific invasion)
* Protecting our trade route **with France** (i.e. a specific trade route)
* Establishing naval dominance **in the Mediterranean** (i.e. a specific region)

## Goal/Objective Scoring

All active objectives for a country are collected and scored. Objectives are then executed in a prioritized order according to the score - the AI will try to execute as many objectives as possible, starting with the highest scoring one.

Objectives are scored based on two factors:
* The **goal priority**: Each goal has a priority range, which signifies the importance of that goal to the country. This range determines the scoring range for objectives within that goal.
* The **objective importance**: This is a normalized value between **0-1**, which determines where in the goal's priority range the objective will be scored.

### An example:

* The **naval invasion support** goal has a priority range of **5-10**
  * There is an objective targeting **Iwo Jima** with an importance of **0.8**
  * There is an objective targeting **Okinawa** with an importance of **0.4**
* The **convoy protection** goal has a priority range of **3-8**
  * There is an objective targeting a trade route with **France** with an importance of **0.9**
  * There is an objective targeting a trade route with **Spain** with an importance of **0.4**

The AI will score the objectives as follows:
* Naval invasion support on Iwo Jima: **9.0** ( 5 + (10-5) * 0.8 )
* Convoy protection with France: **7.5** ( 3 + (8-3) * 0.9 )
* Naval invasion support on Okinawa: **7.0** ( 5 + (10-5) * 0.4 )
* Convoy protection with Spain: **5.0** ( 3 + (8-3) * 0.4 )

As illustrated, this results in a priority order where objectives from different goals are mixed. The idea is that the **goal priority** makes sure that the most relevant goals are always more favored, while the **objective importance** prioritizes objectives within goals. This system also allows high-value objectives from lower-prio goals to still have a chance to be prioritized over low-value objectives from higher-prio goals, as can be seen from the example above.

## Scripting

```
goal_name = {
    objective_type = [type] # See *Objective Types* below
    available_for = {
        ENG # If present, the goal will be disabled for all countries by default, and only available for the countries within this block
    }
    blocked_for = {
        GER # If present, the goal will be disabled for the countries within this block
    }
    
    min_priority = 5 # The minimum priority for this goal, see *Goal/Objective Scoring* above
    max_priority = 10 # The maximum priority for this goal, see *Goal/Objective Scoring* above
}
```

### Objective Types

These objective types are supported:
* naval_invasion_support
* naval_invasion_defense
* mines_sweeping
* coast_defense
* convoy_protection
* convoy_raiding

## Debugging

Use the command "*imgui show ai_navy*" to enable debugging of naval goals.


# 基于目标的海军人工智能

## 简介
该系统取代了人工智能执行任务的方式。之前的系统依赖于任务之间预先定义的优先级，以及特遣部队如何集结并分配到任务的相当生硬的逻辑。这个新系统旨在使人工智能的决策过程更加灵活、易懂且可编写脚本。

### 关键概念：

#### 目标
目标是人工智能可以利用其海军执行的高级操作。
一些示例如下：
- 支持海军登陆作战
- 保护贸易航线
- 建立海上优势

目标包含行动和目的，但目标本身没有特定的目标对象。这就是“任务”发挥作用的地方。

#### 任务
任务是将目标应用于特定的目标对象。
一些示例如下：
- 支持在硫磺岛的海军登陆作战（即特定的登陆行动）
- 保护与法国的贸易航线（即特定的贸易航线）
- 在地中海建立海上优势（即特定的区域）

### 目标/任务评分
收集一个国家的所有活跃任务并进行评分。然后，人工智能将根据分数按优先级顺序执行任务——从得分最高的任务开始，尽可能多地执行任务。

任务的评分基于两个因素：
- **目标优先级**：每个目标都有一个优先级范围，这表示该目标对国家的重要性。此范围决定了该目标内任务的评分范围。
- **任务重要性**：这是一个介于0 - 1之间的归一化值，它决定了任务在目标优先级范围内的得分位置。

#### 示例
- “海军登陆作战支持”目标的优先级范围为5 - 10。有一个针对硫磺岛的任务，其重要性为0.8；还有一个针对冲绳岛的任务，其重要性为0.4。
- “护航保护”目标的优先级范围为3 - 8。有一个针对与法国的贸易航线的任务，其重要性为0.9；还有一个针对与西班牙的贸易航线的任务，其重要性为0.4。

人工智能将按以下方式对任务进行评分：
- 硫磺岛的海军登陆作战支持：9.0（5 + (10 - 5) * 0.8）
- 与法国的护航保护：7.5（3 + (8 - 3) * 0.9）
- 冲绳岛的海军登陆作战支持：7.0（5 + (10 - 5) * 0.4）
- 与西班牙的护航保护：5.0（3 + (8 - 3) * 0.4）

如图所示，这导致不同目标的任务混合在一个优先级顺序中。其理念是，“目标优先级”确保最相关的目标始终更受青睐，而“任务重要性”则对目标内的任务进行优先级排序。从上述示例可以看出，该系统还允许低优先级目标中的高价值任务仍有机会优先于高优先级目标中的低价值任务。

### 脚本编写
goal_name = {
    objective_type = [type] # See *请参阅下面的“任务类型”
    available_for = {
        ENG # 如果存在，该目标默认对所有国家禁用，仅对本块内的国家可用
    }
    blocked_for = {
        GER # 如果存在，该目标将对本块内的国家禁用
    }

    min_priority = 5 # 此目标的最低优先级，请参阅上面的“目标/任务评分”
    max_priority = 10 # 此目标的最高优先级，请参阅上面的“目标/任务评分”
}

### 任务类型
支持以下任务类型：
- 海军登陆作战支持
- 海军登陆作战防御
- 扫雷
- 海岸防御
- 护航保护
- 护航袭击

### 调试
使用命令 "imgui show ai_navy" 来启用海军目标的调试功能。