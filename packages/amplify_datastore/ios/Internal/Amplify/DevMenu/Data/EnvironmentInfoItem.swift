//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Data class for  each item showing Developer Environment Information
struct EnvironmentInfoItem: Identifiable, InfoItemProvider {

    let id = UUID()
    let type: EnvironmentInfoItemType

    var displayName: String {
        switch type {
        case .nodejsVersion:
            return "Node.js version"
        case .npmVersion:
            return "npm version"
        case .amplifyCLIVersion:
            return "Amplify CLI version"
        case .podVersion:
            return "CocoaPods version"
        case .xcodeVersion:
            return "Xcode version"
        case .osVersion:
            return "macOS version"
        }
    }

    var information: String {
        switch type {
        case .nodejsVersion(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .npmVersion(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .amplifyCLIVersion(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .podVersion(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .xcodeVersion(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .osVersion(let value):
            return value ?? DevMenuStringConstants.notAvailable
        }
    }
}
#endif
