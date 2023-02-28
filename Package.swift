// swift-tools-version:5.3

import PackageDescription

let frameworks = ["ThreeDSSDK": "2c853b0f3554089d758076ae9cebdee4575039ecc4a43fb295e37d092abb65f5",
                  "CardKit": "149abe1773c085be8b0c4dbe631005f926937a1f508c143868918e7c1e5b7e2a",
                  "CardKitCore": "7426fa6c2c9db4a0dd11a0aaeca08a7f542de33b6f2a63685fd933f1edce8b07"]

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
