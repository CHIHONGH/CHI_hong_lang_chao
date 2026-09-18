# 大作战学说(Grand Doctrines)

**大作战学说** 位于每个学说 *Folder(文件夹)* 的根部。玩家可以为该文件夹选择任意可用的大作战学说，并通过支付 XP 花费来激活它。激活大作战学说会立即产生效果，例如单位属性加成或解锁战术。同时，激活大作战学说也会使其对应的 *Subdoctrine Tracks(子学说路线)* 变为可用。对于每条路线，大作战学说都有一个 **Milestone(里程碑)**，即完成该路线后获得的额外奖励。

## 脚本示例

```
mobile_warfare = {
    folder = land   # 引用一个文件夹的脚本名
    name = GRAND_DOCTRINE_MOBILE_WARFARE   # 本地化键
    description = GRAND_DOCTRINE_MOBILE_WARFARE_DESC   # 可绑定的本地化键
    icon = GFX_mobile_warfare_medium  # 引用一个图标的脚本名
    available = yes # 决定该学说是否可被选择的触发器
    visible = yes # 决定该学说是否完整出现在列表中的触发器

    xp_cost = 100
    xp_type = army   # army、navy 或 air

    ai_will_do = { }

    tracks = {   # 引用路线的脚本名
        infantry
        artillery_support
        armor
        operations
    }
    
    max_track_rows = 2 # 可选：默认为不限制
    max_track_columns = 2 # 可选：默认为不限制

    # 激活效果 - 见下文

    milestones = {   # 注意：里程碑的顺序与路线一致
        {
            # 激活效果 - 见下文
        }
        {
            # 激活效果 - 见下文
        }
        {
            # 激活效果 - 见下文
        }
        {
            # 激活效果 - 见下文
        }
    }
}
```

## 脚本化激活效果

大作战学说、里程碑、子学说和奖励均支持将以下内容写为"激活效果"：

### 国家层面修正(Country-level modifiers):
```
planning_speed = 0.4
army_speed_factor = 0.10
```

如果偏好显式写法，修正也可以写成块的形式：
```
modifiers = {
    planning_speed = 0.4
    army_speed_factor = 0.10
}
```

### 启用战术(Enabling tactics):
```
enable_tactic = tactic_unexpected_thrust # 或任何其他战术
enable_tactic = tactic_elastic_defense
```

### 添加单位属性加成(Add unit stat bonuses):
```
category_tanks = {
    max_organisation = 1
}
armored_car = {
    max_organisation = 2
}
```

### 添加强装加成(Add equipment bonuses):

> 注意：请使用这种写法，而不是 `add_equipment_bonus` 效果——因为该效果在学说变动时不会移除已施加的加成。

```
equipment_bonus = {
    capital_ship = {
        naval_range = 0.10
        instant = yes
    }
}
```

### 任意脚本化效果(Any scripted effects):
```
effect = { 
    add_tech_bonus = {
        bonus = 0.5
        uses = 1
        category = cat_light_armor
        name = [大作战学说名本地化键]
    }
}
```