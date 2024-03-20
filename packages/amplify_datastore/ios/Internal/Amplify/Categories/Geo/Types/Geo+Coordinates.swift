//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import CoreLocation

public extension Geo {
    /// A pair of coordinates to represent a location (point).
    struct Coordinates {
        /// The latitude of the location.
        public let latitude: Double
        /// The longitude of the location.
        public let longitude: Double

        /// Initializer
        public init(latitude: Double, longitude: Double) {
            self.latitude = latitude
            self.longitude = longitude
        }
    }
}

public extension Geo.Coordinates {
    /// Initialize a Location from a CLLocationCoordinate2D
    /// - Parameter location: The CLLocationCoordinate2D to use to initialize the
    /// Location.
    init(_ coordinates: CLLocationCoordinate2D) {
        self.init(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}
