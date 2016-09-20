# 支持平台

|平台 | 是否支持 |
|-----|------|
|JS    |  支持    |
|FO-NodeJS    |  不支持    |
|iOS    | 支持    |
|android    | 支持(待开发)    |

# 组件依赖关系

|组件 | 版本号 | 地址|
|-----|------|----|
|侧边栏    | 1.0.0    | [GitHub地址](https://github.com/pastryTeam/pastry-plugin-rightBarButton.git)|

# 功能介绍
>
* 可选功能
  * 添加 导航栏右边 自定义的按钮（用于和JS进行交互)
  
# 安装方法
>
* pastry本地包安装
        
    pastry bake plugin add pastry-plugin-rightBarButton
>
* github在线安装

    # 安装指定 tag 版本
    pastry bake plugin add https://github.com/pastryTeam/pastry-plugin-rightBarButton.git#1.0.0 
    
    # 安装最新代码
    pastry bake plugin add https://github.com/pastryTeam/pastry-plugin-rightBarButton.git
    
# 使用方法
>
+ 右侧边栏显示与隐藏
  + 方法  
    ```PTRightBarButtonManager.openSideView(completeCallback)```
  + 代码示例
  
        PTRightBarButtonManager.openSideView(function(tx){
                         //返回"open"表示打开侧边栏
                         //返回"close"表示关闭侧边栏
                         console.log(tx);
                         });



        
# 作者
* pastryTeam团队

