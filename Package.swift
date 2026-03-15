// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.2.0"
let checksum = "cf404db8c7811591a73eee314ee461872e71b12a995ee177e8d6b51ee674c723"

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
