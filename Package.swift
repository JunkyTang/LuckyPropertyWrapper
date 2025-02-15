//
//  Package.swift
//  LuckyPropertyWrapper_Example
//
//  Created by junky on 2025/2/15.
//  Copyright © 2025 CocoaPods. All rights reserved.
//


import PackageDescription

let package = Package(
    name: "LuckyPropertyWrapper",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LuckyPropertyWrapper",
            targets: ["LuckyPropertyWrapper"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LuckyPropertyWrapper"
        ),
        .testTarget(
            name: "CommonTests",
            dependencies: ["Common"]
        ),
    ]
)

