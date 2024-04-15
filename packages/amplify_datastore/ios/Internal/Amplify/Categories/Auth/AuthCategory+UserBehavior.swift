//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension AuthCategory: AuthCategoryUserBehavior {

    public func getCurrentUser() async throws -> AuthUser {
        try await plugin.getCurrentUser()
    }

    public func fetchUserAttributes(
        options: AuthFetchUserAttributesRequest.Options? = nil
    ) async throws -> [AuthUserAttribute] {
        try await plugin.fetchUserAttributes(options: options)
    }

    public func update(
        userAttribute: AuthUserAttribute,
        options: AuthUpdateUserAttributeRequest.Options? = nil
    ) async throws -> AuthUpdateAttributeResult {
        try await plugin.update(userAttribute: userAttribute, options: options)
    }

    public func update(userAttributes: [AuthUserAttribute],
                       options: AuthUpdateUserAttributesRequest.Options? = nil)
        async throws -> [AuthUserAttributeKey: AuthUpdateAttributeResult] {
            try await plugin.update(userAttributes: userAttributes, options: options)
    }

    @available(*, deprecated, renamed: "sendVerificationCode(forUserAttributeKey:options:)")
    public func resendConfirmationCode(
        forUserAttributeKey userAttributeKey: AuthUserAttributeKey,
        options: AuthAttributeResendConfirmationCodeRequest.Options? = nil
    ) async throws -> AuthCodeDeliveryDetails {
        try await plugin.resendConfirmationCode(forUserAttributeKey: userAttributeKey, options: options)
    }

    public func sendVerificationCode(
        forUserAttributeKey userAttributeKey: AuthUserAttributeKey,
        options: AuthSendUserAttributeVerificationCodeRequest.Options? = nil
    ) async throws -> AuthCodeDeliveryDetails {
        try await plugin.sendVerificationCode(forUserAttributeKey: userAttributeKey, options: options)
    }

    public func confirm(userAttribute: AuthUserAttributeKey,
                        confirmationCode: String,
                        options: AuthConfirmUserAttributeRequest.Options? = nil) async throws {
        try await plugin.confirm(
            userAttribute: userAttribute,
            confirmationCode: confirmationCode,
            options: options
        )
    }

    public func update(
        oldPassword: String,
        to newPassword: String,
        options: AuthChangePasswordRequest.Options? = nil
    ) async throws {
        try await plugin.update(oldPassword: oldPassword, to: newPassword, options: options)
    }

}
