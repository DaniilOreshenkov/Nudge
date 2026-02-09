// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "NotificationsKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "NotificationsKit",
            targets: ["NotificationsKit"]
        )
    ],
    dependencies: [
        .package(path: "../Core/CoreKit"),
        .package(path: "../DesignSystem/DesignSystem")
    ],
    targets: [
        .target(
            name: "NotificationsKit",
            dependencies: [
                "CoreKit",
                "DesignSystem"
            ],
            path: "Sources/NotificationsKit"
        ),
        .testTarget(
            name: "NotificationsKitTests",
            dependencies: ["NotificationsKit"],
            path: "Tests/NotificationsKitTests"
        )
    ]
)
