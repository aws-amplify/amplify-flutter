//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public protocol AuthCategoryUserBehavior: AnyObject {

    /// Returns the currently logged in user.
    ///
    func getCurrentUser() async throws -> AuthUser

    /// Fetch user attributes for the current user.
    ///
    /// - Parameters:
    ///   - options: Parameters specific to plugin behavior
    func fetchUserAttributes(
        options: AuthFetchUserAttributesRequest.Options?
    ) async throws -> [AuthUserAttribute]

    /// Update user attribute for the current user
    ///
    /// - Parameters:
    ///   - userAttribute: Attribute that need to be updated
    ///   - options: Parameters specific to plugin behavior
    func update(
        userAttribute: AuthUserAttribute,
        options: AuthUpdateUserAttributeRequest.Options?
    ) async throws -> AuthUpdateAttributeResult

    /// Update a list of user attributes for the current user
    ///
    /// - Parameters:
    ///   - userAttributes: List of attribtues that need ot be updated
    ///   - options: Parameters specific to plugin behavior
    func update(
        userAttributes: [AuthUserAttribute],
        options: AuthUpdateUserAttributesRequest.Options?
    ) async throws -> [AuthUserAttributeKey: AuthUpdateAttributeResult]

    /// Resends the confirmation code required to verify an attribute
    ///
    /// - Parameters:
    ///   - userAttributeKey: Attribute to be verified
    ///   - options: Parameters specific to plugin behavior
    @available(*, deprecated, renamed: "sendVerificationCode(forUserAttributeKey:options:)")
    func resendConfirmationCode(
        forUserAttributeKey userAttributeKey: AuthUserAttributeKey,
        options: AuthAttributeResendConfirmationCodeRequest.Options?
    ) async throws -> AuthCodeDeliveryDetails

    /// Sends the verification code required to verify an attribute
    ///
    /// - Parameters:
    ///   - userAttributeKey: Attribute to be verified
    ///   - options: Parameters specific to plugin behavior
    func sendVerificationCode(
        forUserAttributeKey userAttributeKey: AuthUserAttributeKey,
        options: AuthSendUserAttributeVerificationCodeRequest.Options?
    ) async throws -> AuthCodeDeliveryDetails

    /// Confirm an attribute using confirmation code
    ///
    /// - Parameters:
    ///   - userAttribute: Attribute to verify
    ///   - confirmationCode: Confirmation code received
    ///   - options: Parameters specific to plugin behavior
    func confirm(
        userAttribute: AuthUserAttributeKey,
        confirmationCode: String,
        options: AuthConfirmUserAttributeRequest.Options?
    ) async throws

    /// Update the current logged in user's password
    ///
    /// Check the plugins documentation, you might need to re-authenticate the user after calling this method.
    /// - Parameters:
    ///   - oldPassword: Current password of the user
    ///   - newPassword: New password to be updated
    ///   - options: Parameters specific to plugin behavior
    func update(
        oldPassword: String,
        to newPassword: String,
        options: AuthChangePasswordRequest.Options?
    ) async throws
}
