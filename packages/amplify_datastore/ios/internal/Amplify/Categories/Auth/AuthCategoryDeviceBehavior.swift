//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public protocol AuthCategoryDeviceBehavior: AnyObject {

    /// Fetch devices assigned to the current device
    /// - Parameters:
    ///   - options: Parameters specific to plugin behavior.
    func fetchDevices(options: AuthFetchDevicesRequest.Options?) async throws -> [AuthDevice]

    /// Forget device from the user
    ///
    /// - Parameters:
    ///   - authDevice: Device to be forgotten
    ///   - options: Parameters specific to plugin behavior.
    func forgetDevice( _ device: AuthDevice?, options: AuthForgetDeviceRequest.Options?) async throws

    /// Make the current user device as remebered
    ///
    /// - Parameters:
    ///   - options: Parameters specific to plugin behavior.
    func rememberDevice( options: AuthRememberDeviceRequest.Options?) async throws
}
