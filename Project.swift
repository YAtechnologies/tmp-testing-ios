import ProjectDescription

let project = Project(
    name: "TestFramework",
    packages: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.23.0"),
    ],
    targets: [
        .target(
            name: "TestFramework",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Module.TestFramework",
            sources: ["TestFramework/Sources/**"],
            resources: ["TestFramework/Resources/**"],
            headers: .headers(public: ["TestFramework.h"]),
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
