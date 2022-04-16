// swift-tools-version: 5.5

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "MyApp",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "MyApp",
            targets: ["MyApp"],
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ], supportedInterfaceOrientations: [
                .landscapeLeft,
                .landscapeRight,
                .portrait,
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "MyApp",
            path: "App"
        )
    ]
)
