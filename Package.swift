// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "TvOSPinKeyboard",
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
