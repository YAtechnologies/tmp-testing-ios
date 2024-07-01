// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "TestFramework",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "TestFramework",
            targets: ["TestFramework"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.23.0")
    ],
    targets: [
        .target(
            name: "TestFramework",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk")
            ],
            path: "TestFramework",
            sources: [
                "Sources"
            ]
            ,
            resources: [
                .process("Resources")
            ]
        )
    ]
)
