//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A basic implementation of `UserProfile`
public struct BasicUserProfile: UserProfile {
    public var name: String?

    public var email: String?

    public var plan: String?

    public var location: UserProfileLocation?

    public var customProperties: [String: UserProfilePropertyValue]?

    /// Initializer
    /// - Parameters:
    ///   - name: Name of user
    ///   - email: The user's e-mail
    ///   - plan: The plan for the user
    ///   - location: Location data about the user
    ///   - customProperties: Properties of the user profile
    public init(name: String? = nil,
                email: String? = nil,
                plan: String? = nil,
                location: UserProfileLocation? = nil,
                customProperties: [String: UserProfilePropertyValue]? = nil) {
        self.name = name
        self.email = email
        self.plan = plan
        self.location = location
        self.customProperties = customProperties
    }
}
