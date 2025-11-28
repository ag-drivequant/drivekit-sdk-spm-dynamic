// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "DriveKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DriveKitTripAnalysis",
            type: .dynamic,
            targets: ["DriveKitTripAnalysisWrapper"]
        ),
        .library(
            name: "DriveKitDriverData",
            type: .dynamic,
            targets: ["DriveKitDriverDataWrapper"]
        ),
        .library(
            name: "DriveKitCore",
            type: .dynamic,
            targets: ["DriveKitCoreWrapper"]
        ),
        .library(
            name: "DriveKitTripSimulator",
            type: .dynamic,
            targets: ["DriveKitTripSimulatorWrapper"]
        ),
        .library(
            name: "DriveKitTripSimulatorNoop",
            type: .dynamic,
            targets: ["DriveKitTripSimulatorNoopWrapper"]
        ),
        .library(
            name: "DriveKitVehicle",
            type: .dynamic,
            targets: ["DriveKitVehicleWrapper"]
        ),
        .library(
            name: "DriveKitDriverAchievement",
            type: .dynamic,
            targets: ["DriveKitDriverAchievementWrapper"]
        ),
        .library(
            name: "DriveKitCoaching",
            type: .dynamic,
            targets: ["DriveKitCoachingWrapper"]
        ),
        .library(
            name: "DriveKitChallenge",
            type: .dynamic,
            targets: ["DriveKitChallengeWrapper"]
        ),
        .library(
            name: "DriveKitGroup",
            type: .dynamic,
            targets: ["DriveKitGroupWrapper"]
        ),
    ],
    targets: [
        .target(
            name: "DriveKitBeaconUtilsWrapper",
            dependencies: [
                .target(name: "DriveKitBeaconUtils"),
                .target(name: "DriveKitCoreWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
            ]
        ),
        .target(
            name: "DriveKitChallengeWrapper",
            dependencies: [
                .target(name: "DriveKitChallenge"),
                .target(name: "DriveKitDBChallengeAccessWrapper"),
                .target(name: "DriveKitDBTripAccessWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitCoachingWrapper",
            dependencies: [
                .target(name: "DriveKitCoaching"),
                .target(name: "DriveKitDBCoachingAccessWrapper"),
            ]
        ),
        .target(
            name: "DriveKitCoreWrapper",
            dependencies: [
                .target(name: "DriveKitCore"),
                .target(name: "DriveKitNetworkingWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitDBAchievementAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBAchievementAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitDBChallengeAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBChallengeAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitDBCoachingAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBCoachingAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitDBGroupAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBGroupAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitDBTripAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBTripAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitDBVehicleAccessWrapper",
            dependencies: [
                .target(name: "DriveKitBeaconUtilsWrapper"),
                .target(name: "DriveKitDBVehicleAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitDriverAchievementWrapper",
            dependencies: [
                .target(name: "DriveKitDriverAchievement"),
                .target(name: "DriveKitDBAchievementAccessWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDriverDataWrapper",
            dependencies: [
                .target(name: "DriveKitDriverData"),
                .target(name: "DriveKitDBTripAccessWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitGroupWrapper",
            dependencies: [
                .target(name: "DriveKitGroup"),
                .target(name: "DriveKitDBGroupAccessWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitNetworkingWrapper",
            dependencies: [
                .target(name: "DriveKitNetworking"),
            ]
        ),
        .target(
            name: "DriveKitTripAnalysisWrapper",
            dependencies: [
                .target(name: "DriveKitTripAnalysis"),
                .target(name: "DriveKitCoreWrapper"),
                .target(name: "DriveKitDBTripAccessWrapper"),
                .target(name: "DriveKitDBVehicleAccessWrapper"),
                .target(name: "DriveKitBeaconUtilsWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreData"),
            ]
        ),
        .target(
            name: "DriveKitTripSimulatorApiWrapper",
            dependencies: [
                .target(name: "DriveKitTripSimulatorApi"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
            ]
        ),
        .target(
            name: "DriveKitTripSimulatorNoopWrapper",
            dependencies: [
                .target(name: "DriveKitTripSimulatorNoop"),
                .target(name: "DriveKitTripSimulatorApiWrapper"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitTripSimulatorWrapper",
            dependencies: [
                .target(name: "DriveKitTripSimulator"),
                .target(name: "DriveKitTripSimulatorApiWrapper"),
                .target(name: "DriveKitTripAnalysisWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreLocation"),
            ]
        ),
        .target(
            name: "DriveKitVehicleWrapper",
            dependencies: [
                .target(name: "DriveKitVehicle"),
                .target(name: "DriveKitDBVehicleAccessWrapper"),
                .target(name: "DriveKitBeaconUtilsWrapper"),
            ],
            linkerSettings: [
                .linkedFramework("CoreData"),
            ]
        ),
        .binaryTarget(
            name: "DriveKitBeaconUtils",
            path: "Frameworks/DriveKitBeaconUtils/DriveKitBeaconUtilsModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitChallenge",
            path: "Frameworks/DriveKitChallenge/DriveKitChallengeModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitCoaching",
            path: "Frameworks/DriveKitCoaching/DriveKitCoachingModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitCore",
            path: "Frameworks/DriveKitCore/DriveKitCoreModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBAchievementAccess",
            path: "Frameworks/DriveKitDBAchievementAccess/DriveKitDBAchievementAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBChallengeAccess",
            path: "Frameworks/DriveKitDBChallengeAccess/DriveKitDBChallengeAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBCoachingAccess",
            path: "Frameworks/DriveKitDBCoachingAccess/DriveKitDBCoachingAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBGroupAccess",
            path: "Frameworks/DriveKitDBGroupAccess/DriveKitDBGroupAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBTripAccess",
            path: "Frameworks/DriveKitDBTripAccess/DriveKitDBTripAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBVehicleAccess",
            path: "Frameworks/DriveKitDBVehicleAccess/DriveKitDBVehicleAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDriverAchievement",
            path: "Frameworks/DriveKitDriverAchievement/DriveKitDriverAchievementModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDriverData",
            path: "Frameworks/DriveKitDriverData/DriveKitDriverDataModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitGroup",
            path: "Frameworks/DriveKitGroup/DriveKitGroupModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitNetworking",
            path: "Frameworks/DriveKitNetworking/DriveKitNetworkingModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitTripAnalysis",
            path: "Frameworks/DriveKitTripAnalysis/DriveKitTripAnalysisModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitTripSimulator",
            path: "Frameworks/DriveKitTripSimulator/DriveKitTripSimulatorModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitTripSimulatorApi",
            path: "Frameworks/DriveKitTripSimulatorApi/DriveKitTripSimulatorApiModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitTripSimulatorNoop",
            path: "Frameworks/DriveKitTripSimulatorNoop/DriveKitTripSimulatorModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitVehicle",
            path: "Frameworks/DriveKitVehicle/DriveKitVehicleModule.xcframework"
        ),
    ]
)
