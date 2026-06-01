//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension Geo {
    /// A place defined by coordinates and optional additional locality information.
    struct Place {
        /// The coordinates of the place. (required)
        public let coordinates: Geo.Coordinates
        /// The full name and address of the place.
        public let label: String?
        /// The numerical portion of the address of the place, such as a building number.
        public let addressNumber: String?
        /// The name for the street or road of the place. For example, Main Street.
        public let street: String?
        /// The name of the local area of the place, such as a city or town name. For example, Toronto.
        public let municipality: String?
        /// The name of a community district.
        public let neighborhood: String?
        /// The name for the area or geographical division, such as a province or state
        /// name, of the place. For example, British Columbia.
        public let region: String?
        /// An area that's part of a larger region for the place.  For example, Metro Vancouver.
        public let subRegion: String?
        /// A group of numbers and letters in a country-specific format, which accompanies
        /// the address for the purpose of identifying the place.
        public let postalCode: String?
        /// The country of the place.
        public let country: String?

        /// Initializer
        public init(coordinates: Coordinates,
                    label: String?,
                    addressNumber: String?,
                    street: String?,
                    municipality: String?,
                    neighborhood: String?,
                    region: String?,
                    subRegion: String?,
                    postalCode: String?,
                    country: String?) {
            self.coordinates = coordinates
            self.label = label
            self.addressNumber = addressNumber
            self.street = street
            self.municipality = municipality
            self.neighborhood = neighborhood
            self.region = region
            self.subRegion = subRegion
            self.postalCode = postalCode
            self.country = country
        }
    }
}
