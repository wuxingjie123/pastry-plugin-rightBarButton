# 支持平台
>
|平台 | 是否支持 |
|-----|------|
|JS    | 支持    |
|iOS    | 支持   |
|android    | 不支持    |

# 依赖服务器数据
>
|平台 | 是否依赖 |
|-----|------|
|FO-Java    | 不依赖    |
|FO-NodeJS    |  不依赖    |

# 组件依赖关系
>
|组件 | 版本号 | 地址|
|-----|------|----|
|BarButtonItem组件  | 版本号    | [GitHub地址](https://github.com/pastryTeam/pastry-plugin-rightBarButton.git)|

# 功能介绍
>
* 必选功能
    * 无
* 可选功能
    * 设置导航栏右边自定义按钮
    
# 安装方法
>
* pastry本地包安装

   pastry bake plugin add pastry-plugin-rightBarButton

>
* github在线安装

    # 安装指定 tag 版本,例如 版本号 = 1.0.0
    pastry bake plugin add https://github.com/pastryTeam/pastry-plugin-rightBarButton.git#1.0.0 
    
    # 安装最新代码
    pastry bake plugin add https://github.com/pastryTeam/pastry-plugin-rightBarButton.git

# 插件安装到项目里的目录结构
>
涉及两种目录

* 代码目录
        
    项目名称/platforms/ios/项目名称/Plugins/pastry-plugin-rightBarButton
    
* 资源目录
    
    项目名称/platforms/ios/项目名称/Resources/rightBarButton.bundle
    
# 使用方法
>
* 如需修改功能
        
     # JS端 导航栏右边自定义按钮点击事件
    －－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
       PTRightBarButtonManager.openSideView(function(tx){
	        //返回"side"表示点击侧边栏按钮
	        //返回"delete"表示点击删除按钮
	        console.log(tx);                                                
        });

> 
* 如需修改页面显示效果
        
    自行修改 代码目录

>
* 如需修改插件资源
        
    自定修改 资源目录

# 作者
>
* pastryTeam团队



