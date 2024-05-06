import ProjectDescription

let project = Project(
    name: "TestProject",
    packages: [
        .package(path: "../PackageContainingFirebase"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.23.0"),
    ],
    targets: [
        .target(
            name: "DependenciesWithFirebaseIncluded",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.DependenciesWithFirebaseIncluded",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["DependenciesWithFirebaseIncluded/Sources/**"],
            resources: ["DependenciesWithFirebaseIncluded/Resources/**"],
            dependencies: [
                .target(name: "TargetContainingFirebase"),
                .package(product: "PackageContainingFirebase"),
            ]
        ),
        .target(
            name: "TargetContainingFirebase",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Module.TargetContainingFirebase",
            dependencies: [
                .package(product: "FirebaseAnalytics"),
            ]
        )
    ]
)
