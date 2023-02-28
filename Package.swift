// swift-tools-version:5.3

import PackageDescription

let frameworks = ["ThreeDSSDK": "203f17f02c285b3d3e88278a55e4138c2410a126dc692fa910e870480afd9af4",
                  "CardKit": "c8643189e76009bc13b94196fb02d70bffe77d557423bfa799ebb7fabf5dbada",
                  "CardKitCore": "5c45aeab5d23b060b82ed87a13ccaec7c20145b61305a2676dd422e8d3bbb437"]

let package = Package(
    name: "CardKitSDK",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CardKitSDK",
            targets: Array.init(frameworks.keys)
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: frameworks.map { name, checksum in
            .binaryTarget(name: name,
                          url: "https://github.com/c-villain/CardKit/releases/download/0.0.20/\(name).xcframework.zip",
                          checksum: checksum)
    }
)
