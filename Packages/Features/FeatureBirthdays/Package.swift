// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "FeatureBirthdays",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "FeatureBirthdays",
            targets: ["FeatureBirthdays"]
        )
    ],
    dependencies: [
        .package(path: "../../Core/CoreKit"),
        .package(path: "../../DesignSystem/DesignSystem")
    ],
    targets: [
        .target(
            name: "FeatureBirthdays",
            dependencies: [
                "CoreKit",
                "DesignSystem"
            ],
            path: "Sources/FeatureBirthdays"
        ),
        .testTarget(
            name: "FeatureBirthdaysTests",
            dependencies: ["FeatureBirthdays"],
            path: "Tests/FeatureBirthdaysTests"
        )
    ]
)
