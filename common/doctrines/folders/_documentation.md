# 学说文件夹(Doctrine Folders)

文件夹是学说的顶层分类，例如 *land*(陆军)、*air*(空军)和 *naval*(海军)，您也可以创建任意名称的自定义文件夹。每个 **大作战学说** 都属于一个文件夹。

## 脚本示例

```
land = { 
    allowed = { # 若此触发器判定为 False，文件夹将不可用
        always = yes    
    }
    name = LOC_KEY
    tab_gfx = GFX # 显示在学说界面顶部的选项卡按钮图标
    color_frame = 1 # 用作各种 UI 元素的帧索引，例如背景颜色取决于文件夹
    ledger = army # 该文件夹应显示在哪个情报账本中？支持的值：army、navy、air、all、hidden
    ledger_gfx = GFX # 显示在情报账本中的按钮图标
    sound = ui_doctrine_tab_air # 切换到该文件夹时播放的声音
}
```