import ProjectDescription

let project = Project(
    name: "TestFramework",
    packages: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.23.0"),
    ],
    targets: [
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
