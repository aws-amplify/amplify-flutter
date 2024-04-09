//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import CoreGraphics

extension Predictions {
    /// Describes a word identified in an image as a result of
    /// identify() API call
    public struct IdentifiedWord: IdentifiedText {
        public let text: String
        public let boundingBox: CGRect
        public let polygon: Polygon?
        public let page: Int?

        public init(text: String, boundingBox: CGRect, polygon: Polygon? = nil, page: Int? = nil) {
            self.text = text
            self.boundingBox = boundingBox
            self.polygon = polygon
            self.page = page
        }
    }
}
