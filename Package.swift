// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "TvOSPinKeyboard",
    platforms: [
      .tvOS(.v11)
    ],
    products: [
        .library(name: "SLR_TvOSPinKeyboard", targets: ["TSLR_vOSPinKeyboard"])
    ],
    targets: [
        .target(
            name: "SLR_TvOSPinKeyboard",
            path: "Sources"
        )
    ]
)
