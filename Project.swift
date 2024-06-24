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
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["TestFramework/Sources/**"],
            resources: ["TestFramework/Resources/**"],
            dependencies: [
                .package(product: "FirebaseAnalytics")
            ],
            settings: .settings(
                base: ["OTHER_LDFLAGS": "$(inherited) -ObjC"]
                ,
                defaultSettings: .recommended
            )
        )
    ]
)
