//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Data class for each item shown in the Device Info screen
struct DeviceInfoItem: Identifiable, InfoItemProvider {
    let id = UUID()
    let type: DeviceInfoItemType

    var displayName: String {
        switch type {
        case .deviceName:
            return "Device Name"
        case  .systemName:
            return "System Name"
        case .systemVersion:
            return "System Version"
        case .modelName:
            return "Model Name"
        case .localizedModelName:
            return "Localized Model Name"
        case .isSimulator:
            return "Running on simulator"
        }
    }

    var information: String {
        switch type {
        case .deviceName(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case  .systemName(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .systemVersion(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .modelName(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .localizedModelName(let value):
            return value ?? DevMenuStringConstants.notAvailable
        case .isSimulator(let value):
            guard  let value = value else {
                return DevMenuStringConstants.notAvailable
            }
            return value ? "Yes" : "No"
        }
    }
}
#endif
