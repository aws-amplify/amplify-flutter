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
        // Single target: the plugin code plus the vendored Amplify, AWSPluginsCore,
        // and AWSDataStorePlugin sources all compile into one module — mirroring how
        // the CocoaPods podspec compiles its subspecs into a single `amplify_datastore`
        // module. This is why the vendored sources do not import each other.
        .target(
            name: "amplify_datastore",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "SQLite", package: "SQLite.swift")
            ],
            exclude: [
                // Privacy manifests vendored from amplify-swift. They were never bundled
                // by the CocoaPods podspec (no resource_bundles), so we exclude them to
                // preserve behavior and avoid duplicate-resource collisions.
                "AmplifyInternal/Resources/PrivacyInfo.xcprivacy",
                "AWSPluginsCoreInternal/Resources/PrivacyInfo.xcprivacy",
                "AWSDataStorePluginInternal/Resources/PrivacyInfo.xcprivacy"
            ]
        )
    ]
)
