// swift-tools-version:5.3

import PackageDescription

let frameworks = [  "CardKitCore-bitcode-no": "a7ccc99fe180c3282d2634b092b3bb0ad855fc1c48439a71ceaa37ae2ca59942",
                    "ThreeDSSDK-bitcode-no": "6db4f731c01fae44b0f4528e6a39c3405b46634573cc6c7504c9842a535fd3d3",
                    "CardKit-bitcode-no": "1884d624560bb51762bdfb5ffe0616e1ade14604082716b6bc3258c5e0cd570c"  ]

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
