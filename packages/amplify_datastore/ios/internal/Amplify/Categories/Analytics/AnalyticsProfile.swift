//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// User specific data
public struct AnalyticsUserProfile {

    /// Name of the user
    public var name: String?

    /// The user's email
    public var email: String?

    /// The plan for the user
    public var plan: String?

    /// Location data about the user
    public var location: Location?

    /// Properties of the user profile
    public var properties: AnalyticsProperties?

    /// Initializer
    /// - Parameters:
    ///   - name: Name of user
    ///   - email: The user's e-mail
    ///   - plan: The plan for the user
    ///   - location: Location data about the user
    ///   - properties: Properties of the user profile
    public init(name: String? = nil,
                email: String? = nil,
                plan: String? = nil,
                location: Location? = nil,
                properties: AnalyticsProperties? = nil) {
        self.name = name
        self.email = email
        self.plan = plan
        self.location = location
        self.properties = properties
    }
}

extension AnalyticsUserProfile {

    /// Location specific data
    public typealias Location = UserProfileLocation
}

extension AnalyticsUserProfile: UserProfile {
    public var customProperties: [String: UserProfilePropertyValue]? {
        properties as? [String: UserProfilePropertyValue]
    }
}
