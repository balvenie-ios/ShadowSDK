// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.6"
let checksum = "2d71ddb0140f6aa4f4aadf9ec2f9d30920fee0fa8b98d4ea6a37901f3f907a8e"

let package = Package(
    name: "ShadowSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "ShadowSDK", targets: ["ShadowSDKXCFramework"]),
    ],
    targets: [
        .binaryTarget(
            name: "ShadowSDKXCFramework",
            url: "https://github.com/balvenie-ios/ShadowSDK/releases/download/\(version)/ShadowSDK.xcframework.zip",
            checksum: checksum
        ),
    ]
)
