//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension Geo {
    /// Optional parameters when searching for text.
    struct SearchForTextOptions {
        /// The area (.near or .boundingBox) for the search.
        public var area: Geo.SearchArea?
        /// Limits the search to the given a list of countries/regions.
        public var countries: [Geo.Country]?
        /// The maximum number of results returned per request.
        public var maxResults: Int?
        /// Extra plugin-specific options, only used in special circumstances when the
        /// existing options do not provide a way to utilize the underlying Geo plugin
        /// functionality. See plugin documentation for expected key/values.
        public var pluginOptions: Any?

        public init(area: Geo.SearchArea? = nil,
                    countries: [Geo.Country]? = nil,
                    maxResults: Int? = nil,
                    pluginOptions: Any? = nil) {
            self.area = area
            self.countries = countries
            self.maxResults = maxResults
            self.pluginOptions = pluginOptions
        }
    }
}

public extension Geo {
    /// Optional parameters when searching for coordinates.
    struct SearchForCoordinatesOptions {
        /// The maximum number of results returned per request.
        public var maxResults: Int?
        /// Extra plugin-specific options, only used in special circumstances when the
        /// existing options do not provide a way to utilize the underlying Geo plugin
        /// functionality. See plugin documentation for expected key/values.
        public var pluginOptions: Any?

        public init(maxResults: Int? = nil,
                    pluginOptions: Any? = nil) {
            self.maxResults = maxResults
            self.pluginOptions = pluginOptions
        }
    }
}
