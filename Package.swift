// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "TvOSPinKeyboard",
    platforms: [
      .tvOS(.v11)
    ],
    products: [
        .library(name: "TvOSPinKeyboard", targets: ["TvOSPinKeyboard"])
    ],
    targets: [
        .target(
            name: "TvOSPinKeyboard",
            path: "Sources",
            linkerSettings: [
              .linkedFramework("Cartography"),
              .linkedFramework("FocusTvButton")
            ]
        )
    ]
)
