//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension AuthCategory: AuthCategoryDeviceBehavior {

    public func fetchDevices(
        options: AuthFetchDevicesRequest.Options? = nil
    ) async throws -> [AuthDevice] {
        return try await plugin.fetchDevices(options: options)
    }

    public func forgetDevice(
        _ device: AuthDevice? = nil,
        options: AuthForgetDeviceRequest.Options? = nil
    ) async throws {
        try await plugin.forgetDevice(device, options: options)
    }

    public func rememberDevice(options: AuthRememberDeviceRequest.Options? = nil) async throws {
        try await plugin.rememberDevice(options: options)
    }

}
