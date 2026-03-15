# Shadow SDK

App使用者分布分析SDK

## 安裝說明

***Swift Package Manager***
	
* 點選 File > Add Package Dependencies。
* 複製 https://github.com/balvenie-ios/ShadowSDK.git ，將它輸入在 Search or Enter Package URL 的框框裡，選擇 SDK 後點選 Add Package。

## 代碼整合 ***Swift***

- 增加以下代碼到 `AppDelegate.swift`.

	```swift
	import UIKit
	import ShadowSDK /// <== 增加 import
	
	class AppDelegate: UIResponder, UIApplicationDelegate {
	    
	    ...
	
	    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	        // 增加呼叫 configure 並帶入 site, package 以及 completion closure
	        Shadow.shared.configure(site: "test", package: "test01") { isSuccess in
	            print("Shadow configure result: \(isSuccess)")
	        }
	        
	        ...
	    }
	
	}
	```
## 代碼整合 ***objc***

- Build Settings 設定： 請確保專案設定中的 `Always Embed Swift Standard Libraries` 設為 YES
- Build Settings 設定： 請確保專案設定中的 `Defines Module` 設為 YES
- 增加以下代碼到 `AppDelegate.m`

	```objective-c
 	#import "AppDelegate.h"
    @import ShadowSDK; /// <== 1. 使用 Module Import 語法

    @interface AppDelegate ()
    @end 
    
    @implementation AppDelegate

    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        
        // 2. 呼叫配置方法
        // 注意：Swift 的 configure(site:package:completion:) 在 ObjC 中會轉換為以下名稱
        [Shadow.shared configureWithSite:@"test" package:@"test01" completion:^(BOOL isSuccess) {
             NSLog(@"Shadow configure result: %d", isSuccess);
        }];
        
        return YES;
    }

    @end
	```
- 請先按下 Cmd + B 編譯一次。Xcode 需要編譯過一次 Swift 模組，才會產生對應的 .h 檔。
