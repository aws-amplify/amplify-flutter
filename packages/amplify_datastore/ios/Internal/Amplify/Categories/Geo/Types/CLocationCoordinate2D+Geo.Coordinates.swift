//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import CoreLocation

public extension CLLocationCoordinate2D {
    /// Initialize a Location from a CLLocationCoordinate2D
    /// - Parameter location: The CLLocationCoordinate2D to use to initialize the
    /// Location.
    init(_ coordinates: Geo.Coordinates) {
        self.init(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}
