# 学说路线(Doctrine Tracks)

学说路线在玩家选择一个 **大作战学说** 之后变为可用。每条路线为玩家提供进一步的学说定制，其形式包括：

- 位于路线根部的 **子学说(Subdoctrine)**
- 由子学说派生的一系列 **奖励(Rewards)**，会随 **造诣(Mastery)** 的累积而自动逐步解锁
- 一旦所有奖励解锁，由大作战学说派生的 **里程碑(Milestone)** 便会被触发

路线本身的脚本非常简单；定义该路线可被指派到哪个轨道的是子学说，而定义路线集合的是大作战学说。

## 脚本示例

```
infantry = { 
    name = DOCTRINE_TRACK_INFANTRY   # 可绑定本地化键
    background = GFX_NAME             # 路线的背景图片
    background_offset = 10            # 应用于背景图片的水平偏移量  
    frame = GFX_NAME                  # 路线周围的边框图片
    icon = GFX_NAME                   # 路线的里程碑图标
    icon_frame = GFX_NAME             # 里程碑图标周围的边框
    
    active = {
        has_political_power = 100 # 路线内子学说可被选择、且造诣获取被启用的触发器条件（包括已存储的造诣）
    }
    
    mastery = {
        multiplier = 2.0 # 乘以人力对造诣获取的贡献（此处表示：只需 1/2 的人力即可获得相同数量的造诣）
        sub_units = { # 哪些子单位对造诣获取有贡献？
            # 任何特定的子单位都可以放在这里，但可能最好留给子学说覆盖定义
        }
        categories = { # 哪些子单位类别对造诣获取有贡献？
	        category_all_infantry
	        category_cavalry
        }
        equipment = { # 装备该装备类别的子单位将对造诣获取有贡献
            screen
            capital
        }
    }
}
```