import ProjectDescription

let project = Project(
    name: "BugDemo",
    targets: [
        .target(
            name: "BugDemo",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.BugDemo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["BugDemo/Sources/**"],
            resources: ["BugDemo/Resources/**"],
            dependencies: [
                .project(target: "DependenciesWithFirebaseIncluded", path: "TestProject"),
            ]
        )
    ]
)
