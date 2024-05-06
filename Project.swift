import ProjectDescription

let project = Project(
    name: "AnalyticsXFirebase",
    targets: [
        .target(
            name: "AnalyticsXFirebase",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.AnalyticsXFirebase",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["AnalyticsXFirebase/Sources/**"],
            resources: ["AnalyticsXFirebase/Resources/**"],
            dependencies: [
                .project(target: "Framework1", path: "MyFrameworks"),
            ]
        )
    ]
)
