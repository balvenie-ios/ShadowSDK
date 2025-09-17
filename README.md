# Shadow SDK

App使用者分布分析SDK

## 安裝說明

***Swift Package Manager***
	
* 點選 File > Add Package Dependencies。
* 複製 https://github.com/balvenie-ios/ShadowSDK.git ，將它輸入在 Search or Enter Package URL 的框框裡，選擇 SDK 後點選 Add Package。

## 代碼整合

- 增加以下代碼到 `AppDelegate.swift`.

	```swift
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool { 
		// 加入下面這行，site 跟 package 請至 Shadow 後台創建
		shadow.configure(site: "test", package: "test01")
		return true
	}
	```
