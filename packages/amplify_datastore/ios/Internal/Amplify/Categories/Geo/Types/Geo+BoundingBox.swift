//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension Geo {
    /// A bounding box defined by southwest and northeast corners.
    struct BoundingBox {
        /// The southwest corner of the bounding box.
        public let southwest: Geo.Coordinates
        /// The northeast corner of the bounding box.
        public let northeast: Geo.Coordinates

        /// Initializer
        public init(southwest: Geo.Coordinates, northeast: Geo.Coordinates) {
            self.southwest = southwest
            self.northeast = northeast
        }
    }
}
