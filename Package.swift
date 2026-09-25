// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayMyTargetAdapterCompatibility",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "LevelPlayMyTargetAdapter", targets: ["LevelPlayMyTargetAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-MyTarget-Adapter-Swift-Package.git", exact: "5.12.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayMyTargetAdapterWrapper",
            dependencies: [
                .product(
                    name: "MyTargetAdapter",
                    package: "LevelPlay-MyTarget-Adapter-Swift-Package",
                    moduleAliases: ["MyTargetAdapter": "LevelPlayMyTargetAdapterTarget"]
                ),
            ]
        ),
    ]
)
