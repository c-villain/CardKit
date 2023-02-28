// swift-tools-version:5.3

import PackageDescription

let frameworks = [  "CardKitCore": "4e5dfc9b31cf2f883bee377bcaf62eb8ee7833c55a5eb28d46bf261e4d77c1ea",
                    "ThreeDSSDK": "cca0cb0c9c5db762d2b6e8036f5af3d5c1791c9ee18c0338e9cb80e3193e6cb3",
                    "CardKit": "108cbbf433a34306f8b081cb03fbaeb9c11832b8a1dc26c2690ba5146bc1c674"  ]

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
