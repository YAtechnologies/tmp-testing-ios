import ProjectDescription

let project = Project(
    name: "MyFrameworks",
    packages: [
        .package(path: "../PackageXFirebase"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.23.0"),
    ],
    targets: [
        .target(
            name: "Framework1",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.framework1",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Framework1/Sources/**"],
            resources: ["Framework1/Resources/**"],
            dependencies: [
                .target(name: "Framework2"),
                .package(product: "PackageXFirebase"),
            ]
        ),
        .target(
            name: "Framework2",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Module.framework2",
            dependencies: [
                .package(product: "FirebaseAnalytics"),
            ]
        )
    ]
)
