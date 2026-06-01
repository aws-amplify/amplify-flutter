// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "amplify_datastore",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "amplify-datastore", targets: ["amplify_datastore"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", exact: "0.13.2")
    ],
    targets: [
        .target(
            name: "AmplifyInternal",
            dependencies: [],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AWSPluginsCoreInternal",
            dependencies: ["AmplifyInternal"],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AWSDataStorePluginInternal",
            dependencies: [
                "AmplifyInternal",
                "AWSPluginsCoreInternal",
                .product(name: "SQLite", package: "SQLite.swift")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "amplify_datastore_objc",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            publicHeadersPath: "include"
        ),
        .target(
            name: "amplify_datastore",
            dependencies: [
                "amplify_datastore_objc",
                "AmplifyInternal",
                "AWSPluginsCoreInternal",
                "AWSDataStorePluginInternal",
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
