//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import CoreLocation

public extension Geo {
    /// The area to search.
    enum SearchArea {
        /// Searches for results closest to the given coordinates.
        case near(Geo.Coordinates)
        /// Filters the results by returning only Places within the provided bounding box.
        case within(Geo.BoundingBox)
    }
}

public extension Geo.SearchArea {
    /// Creates a SearchArea that returns results closest to the given
    /// CLLocationCoordinate2D.
    /// - Parameter coordinates: The coordinates for the search area.
    /// - Returns: The SearchArea.
    static func near(_ coordinates: CLLocationCoordinate2D) -> Geo.SearchArea {
        .near(Geo.Coordinates(coordinates))
    }
}
