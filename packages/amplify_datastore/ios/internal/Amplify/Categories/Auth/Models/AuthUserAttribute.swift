//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public struct AuthUserAttribute {
    public let key: AuthUserAttributeKey
    public let value: String

    public init(_ key: AuthUserAttributeKey, value: String) {
        self.key = key
        self.value = value
    }
}

/// Represents the keys used for different user attributes.
///
public enum AuthUserAttributeKey {
    // Attribute ref - https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html

    /// Attribute key for user's address
    case address

    /// Attribute key for user's birthdate
    case birthDate

    /// Attribute key for user's email
    case email

    /// Attribute key for user's email verfication status
    case emailVerified

    /// Attribute key for user's family name
    case familyName

    /// Attribute key for user's gender
    case gender

    /// Attribute key for user's given name
    case givenName

    /// Attribute key for user's locale
    case locale

    /// Attribute key for user's middle name
    case middleName

    /// Attribute key for user's name
    case name

    /// Attribute key for user's nickname
    case nickname

    /// Attribute key for user's phone number
    case phoneNumber

    /// Attribute key for user's phone number verficiation status
    case phoneNumberVerified

    /// Attribute key for user's picture
    case picture

    /// Attribute key for user's preferred user name
    case preferredUsername

    /// Attribute key for user's profile
    case profile

    /// Attribute key for user's identifier
    case sub

    /// Attribute key for time of user's information last updated
    case updatedAt

    /// Attribute key for user's web page
    case website

    /// Attribute key for user's time zone
    case zoneInfo

    /// Attribute key for providing custom attributes
    case custom(String)

    /// Attribute key for representing any other keys not mentioned here
    case unknown(String)
}

extension AuthUserAttributeKey: Hashable {}

extension AuthUserAttributeKey: Equatable {}
