//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Contains specific data for a User
public protocol UserProfile {
    /// Name of the user
    var name: String? { get }

    /// The user's email
    var email: String? { get }

    /// The plan for the user
    var plan: String? { get }

    /// Location data about the user
    var location: UserProfileLocation? { get }

    /// Additional properties of the user profile
    var customProperties: [String: UserProfilePropertyValue]? { get }
}

/// Contains specific data for a Location
public struct UserProfileLocation {

    /// The user's latitude
    public var latitude: Double?

    /// The user's longitude
    public var longitude: Double?

    /// The user's postal code
    public var postalCode: String?

    /// The user's city
    public var city: String?

    /// The user's region
    public var region: String?

    /// The user's country
    public var country: String?

    /// Initializer
    /// - Parameters:
    ///   - latitude: The user's latitude
    ///   - longitude: The user's longitude
    ///   - postalCode: The user's postal code
    ///   - city: The user's city
    ///   - region: The user's region
    ///   - country: The user's country
    public init(latitude: Double? = nil,
                longitude: Double? = nil,
                postalCode: String? = nil,
                city: String? = nil,
                region: String? = nil,
                country: String? = nil) {
        self.latitude = latitude
        self.longitude = longitude
        self.postalCode = postalCode
        self.city = city
        self.region = region
        self.country = country
    }
}
