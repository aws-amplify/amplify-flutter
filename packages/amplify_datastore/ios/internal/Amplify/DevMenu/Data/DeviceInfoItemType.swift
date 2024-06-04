//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Item types for a row in the Device Info screen
enum DeviceInfoItemType {

    /// Device name represents the name of the device it is running.
    ///
    /// For example if the app is running in a device named "John's iPhone" the associated value of
    /// .deviceName will be "John's iPhone".
    case deviceName(String?)

    case systemName(String?)

    case systemVersion(String?)

    case modelName(String?)

    case localizedModelName(String?)

    case isSimulator(Bool?)
}
#endif
