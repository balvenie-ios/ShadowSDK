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
	
	@main
	class AppDelegate: UIResponder, UIApplicationDelegate {
	    let shadow = Shadow() /// <== 增加宣告
	    
	    ...
	
	    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	        shadow.configure(site: "test", package: "test01") /// <== 增加呼叫 configure 並帶入 site 跟 package
	        
	        ...
	    }
	
	}
	```
## 代碼整合 ***objc***

- Build Settings 設定： 請確保專案設定中的 `Always Embed Swift Standard Libraries` 設為 YES
- Build Settings 設定： 請確保專案設定中的 `Defines Module` 設為 YES
- 增加以下代碼到 `AppDelegate.m`

	```
 	#import "AppDelegate.h"
    @import ShadowSDK; /// <== 1. 使用 Module Import 語法

    @interface AppDelegate ()
    @property (nonatomic, strong) Shadow *shadow; /// <== 2. 增加屬性宣告
    @end

    @implementation AppDelegate

    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        
        // 3. 初始化 SDK 物件
        self.shadow = [[Shadow alloc] init];
        
        // 4. 呼叫配置方法
        // 注意：Swift 的 configure(site:package:) 在 ObjC 中會轉換為以下名稱
        [self.shadow configureWithSite:@"test" package:@"test01"];
        
        return YES;
    }

    @end
	```
- 請先按下 Cmd + B 編譯一次。Xcode 需要編譯過一次 Swift 模組，才會產生對應的 .h 檔。
- 如果出現 Linker 錯誤(如下)，請於 objc 專案內新增任一個 Swift 檔案，讓 Xcode 自動產生 bridge

	```
	ld: warning: Could not find or use auto-linked library 'swiftCompatibility56': library 'swiftCompatibility56' not found
	
	ld: warning: Could not find or use auto-linked library 'swiftCompatibilityConcurrency': library 'swiftCompatibilityConcurrency' not found
	```
 
	- 在你的 Objective-C 專案 中，點擊 Cmd + N 新增檔案。
	- 選擇 Swift File，檔名隨便取（例如：Dummy.swift）。
	- 當 Xcode 彈出視窗詢問："Would you like to create an Objective-C bridging header?" 時，
	- 請務必點擊 「Create Bridging Header」。
