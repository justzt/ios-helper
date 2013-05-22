ios-helper
===========

ios项目开发的辅助类，仅供自己使用。
通过cocoaPods快速部署到ios项目中。

##主要包括功能：

      1 本地文件管理
      2 userdefaults管理
      3 常用宏定义

##使用方法：

1修改Podfile

      edit Podfile
      platform :iOS
      pod 'ios-helper',       '~> 1.0'
      pod 'nextiveJson',      '~> 0.0.1'#解析json
      pod 'ASIHTTPRequest',   '~> 1.8.1'#http请求lib
      pod 'HTMLDocument',     '~> 1.5'#html解析
      
2创建私有(就是仅仅自己使用，不公开到cocoaPods上)spec 

     $ pod spec create ios-helper
     $ edit ios-helper.podspec 
     参考文章 http://ishalou.com/blog/2012/10/16/how-to-create-a-cocoapods-spec-file/
     
     注意事项：
     1 将自定义的spec加入本地仓库：将该spec文件保存到本机的~/.cocoapods/master/版本/
     2 设置git项目的版本：最好有一个tag，没有tag的话需要commit的hash
     s.source = { :git => 'https://github.com/justzt/ios-helper.git', :commit => '68defea78942ecc782ffde8f8ffa747872af226d'}      
      
3 安装ios-helper。

    pod install
    
