# 子学说(Subdoctrines)

**子学说** 位于每条学说 *Track(路线)* 的根部。玩家可以为该路线选择任意可用的子学说，并通过支付 XP 花费来激活它。激活子学说会立即产生效果，例如单位属性加成或解锁战术。同时，激活子学说也会开始自动解锁一系列 *Rewards(奖励)*。

### TODO - 奖励如何解锁的机制说明
### 奖励密钥格式为 sub_doctrine_key_reward_key(_desc) —— 因为奖励不是真正的数据库对象，这种命名方式有助于避免命名冲突。

## 脚本示例

```
bicycle_heroes = {
    track = infantry   # 引用路线的脚本名；也可写成路线列表，例如 { infantry armor }
    allow_in_multiple_tracks = yes # 可选 - 若为 yes，该子学说的路线可被多条路线同时使用。默认为 no。

    name = SUBDOCTRINE_BICYCLE_HEROES   # 本地化键
    description = SUBDOCTRINE_BICYCLE_HEROES_DESC   # 可绑定本地化键
    icon = GFX_subdoctrine_bicycle_heroes   # 引用一个图标的脚本名
    available = yes # 决定该子学说能否被选中的触发器
    visible = yes # 决定该子学说是否完整出现在列表中的触发器
    reward_gfx = [GFX_NAME] # 可选 - 若设置，将覆盖默认的奖励图标。第 1 帧到第 X 帧对应奖励 1 到 X，X+1 到 2X 应为相同的但置灰版本

    xp_cost = 100
    xp_type = army   # army、navy 或 air

    ai_will_do = { }

    # 激活效果 - 见 GRAND DOCTRINES 文档

    rewards = {
        {
            mastery = 150 # 可选 - 若设置，将覆盖 NDefines::NDoctrines::DEFAULT_REWARD_MASTERY
            # 激活效果 - 见 GRAND DOCTRINES 文档
        }
        {
            # 激活效果 - 见 GRAND DOCTRINES 文档
        }
        {
            # 激活效果 - 见 GRAND DOCTRINES 文档
        }
        {
            # 激活效果 - 见 GRAND DOCTRINES 文档
        }
    }
    
    xor = { other_subdoctrine_a other_subdoctrine_b } # 可选 - 列出在同一文件夹下的其他路线中不能与之同时激活的子学说。将该子学说与另一子学说在同一路线上替换(xor)仍是允许的。

    mastery = { # 这将覆盖路线默认的造诣获取条件
        multiplier = 5.0 # 乘以人力对造诣获取的贡献（此处表示：只需 1/5 的人力即可获得相同数量的造诣）
        sub_units = { # 哪些子单位对造诣获取有贡献？
            bicycle_battalion
        }
        categories = { # 哪些子单位类别对造诣获取有贡献？
        }
        equipment = { # 装备该装备类别的子单位将对造诣获取有贡献
        }
    }
}
```