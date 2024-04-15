//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension Geo {
    /// Identifies the name and style for a map resource.
    struct MapStyle: Equatable {
        /// The name of the map resource.
        public let mapName: String
        /// The map style selected from an available provider.
        public let style: String
        /// The URL to retrieve the style descriptor of the map resource.
        public let styleURL: URL

        /// Initializer
        public init(mapName: String, style: String, styleURL: URL) {
            self.mapName = mapName
            self.style = style
            self.styleURL = styleURL
        }
    }
}
