# CardKit SDK

[![Latest release](https://img.shields.io/github/v/release/c-villain/CardKit?color=brightgreen&label=version)](https://github.com/c-villain/CardKit/releases/latest)
[![](https://img.shields.io/badge/SPM-supported-DE5C43.svg?color=brightgreen)](https://swift.org/package-manager/)


[![contact: @lexkraev](https://img.shields.io/badge/contact-%40lexkraev-blue.svg?style=flat)](https://t.me/lexkraev)
[![Telegram Group](https://img.shields.io/endpoint?color=neon&style=flat-square&url=https%3A%2F%2Ftg.sumanjay.workers.dev%2Fswiftui_dev)](https://telegram.dog/swiftui_dev)

Swift Package with [XCFrameworks](https://github.com/c-villain/CardKit/releases) for [CardKit SDK](https://github.com/Radarpayments/ios-sdk) as binary library originally by [Radarpayments](https://github.com/Radarpayments).

‼️ The rights to this code do not belong to me. This repo is only support of SPM for this [one](https://github.com/Radarpayments/ios-sdk) which has been archived by the owner.

## Swift Package Manager

To integrate `CardKit SDK` into your project using SwiftPM add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/c-villain/CardKit", from: "0.0.20"),
],
```

or via [XcodeGen](https://github.com/yonaskolb/XcodeGen) insert into your `project.yml`:

```yaml
name: YourProjectName
options:
  deploymentTarget:
    iOS: 10.0
packages:
  CardKit:
    url: https://github.com/c-villain/CardKit
    from: 0.0.20
targets:
  YourTarget:
    type: application
    ...
    dependencies:
       - package: CardKit
```

## Communication

👨🏻‍💻 Feel free to subscribe to channel **[SwiftUI dev](https://t.me/swiftui_dev)** in telegram.

If you like this repository, please do :star: to make this useful for others.
