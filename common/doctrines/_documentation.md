# 学说(Doctrines)

## 重要概念

- **Folder(学派文件夹)** —— 学说的分类,例如 *land*(陆军)、*air*(空军)或 *naval*(海军)
- **Grand Doctrine(大作战学说)** —— 学派文件夹中互斥的根节点,需要消耗 XP 解锁
- **Track(路线)** —— 为子学说及其奖励提供的槽位
- **Milestone(里程碑)** —— 完成一条路线后获得的额外奖励
- **Subdoctrine(子学说)** —— 可作为特定路线的根节点,需要消耗 XP 解锁
- **Mastery(造诣)** —— 在一条路线内取得的进度
- **Reward(奖励)** —— 在路线内获得造诣的奖励，归属于某个子学说

## 学说效果(Doctrine Effects)

* set_grand_doctrine
* set_sub_doctrine
* add_mastery
* add_daily_mastery
* add_mastery_bonus

### add_mastery

一次性添加造诣。

```
add_mastery = {
    amount = 100
    # 过滤器(全部可选,不写则视为全部通过):
    folder = land
    grand_doctrine = mobile_warfare
    sub_doctrine = mobile_infantry
    track = infantry
    index = 1
}
```

- `amount = <int>` —— 要添加的造诣量
- `folder` / `grand_doctrine` / `sub_doctrine` / `track` / `index` —— 可选过滤器,精确指定向哪些路线施加造诣。某过滤器未出现即视为通过;例如不写任何过滤器 = 向所有文件夹的所有激活路线添加造诣

### add_daily_mastery

在持续时间内每天添加造诣。

```
add_daily_mastery = {
    amount = 0.5
    days = 90
    name = CHI_military_affairs_commission_sea
    # 过滤器(全部可选,不写则视为全部通过):
    folder = land
    grand_doctrine = mobile_warfare
    sub_doctrine = mobile_infantry
    track = infantry
    index = 1
}
```

- `amount = <float>` —— 每日添加的造诣量
- `days = <int>` —— 每日造诣增益的持续天数
- `name = <loc_key>` —— 本地化键,用于描述中显示造诣来源(原版惯例填国策 id / 效果来源)
- `folder` / `grand_doctrine` / `sub_doctrine` / `track` / `index` —— 可选过滤器,语义同 add_mastery

注意:`folder` / `grand_doctrine` / `sub_doctrine` / `track` 均为**单值字符串**；若子学说定义了多条路线(如特殊部队的 `track = { 多个 }`),单值 `track` 无法表达,应使用 `sub_doctrine` 过滤器。写在 history 文件中同样生效(该效果作用域为 COUNTRY)。

### add_mastery_bonus

在持续时间内为造诣成长提供加成因子。

```
add_mastery_bonus = {
    name = CZE_establish_air_defense_zones
    bonus = 0.10
    days = 365
    sub_doctrine = air_subdoctrine_fighter_homeland_defense
}
```

- `bonus = <float>` —— 加成因子,如 0.1 = +10%
- `days = <int>` —— 加成持续天数
- `name = <loc_key>` —— 本地化键,显示造诣增益来源
- 过滤器参数同上,全部可选

## 学说触发器(Doctrine Triggers)

* has_completed_subdoctrine
* has_doctrine
* has_completed_track
* has_subdoctrine_in_track
* has_mastery
* has_mastery_level

## 学说修正(Doctrine Modifiers)

### 学说成本修正(Doctrine Cost modifiers)

* *[folder_name]*_doctrine_cost_factor
```
# 示例:
land_doctrine_cost_factor = -0.15 # 陆军学派文件夹中的大作战学说与子学说成本 -15%
```
### 造诣成长修正(Mastery Gain modifiers)

注意：这些造诣成长修正的本地化是自动映射的，你不必为每个生成的修正单独定义本地化键。

* *[folder_name]*_track_mastery_gain_factor
```
# 示例:
land_track_mastery_gain_factor = 0.15 # 陆军学派文件夹中所有路线的造诣成长 +15%
```

* *[grand_doctrine_name]*_mastery_gain_factor
```
# 示例:
new_mobile_warfare_mastery_gain_factor = 0.15 # 所有以"机动战"为大作战学说的路线造诣成长 +15%
```
* *[subdoctrine_name]*_mastery_gain_factor
```
# 示例:
guerilla_war_mastery_gain_factor = 0.15 # 所有以"游击战"为子学说的路线造诣成长 +15%
```
* *[track_name]*_track_mastery_gain_factor
```
# 示例:
infantry_track_mastery_gain_factor = 0.15 # 步兵路线的造诣成长 +15%
```