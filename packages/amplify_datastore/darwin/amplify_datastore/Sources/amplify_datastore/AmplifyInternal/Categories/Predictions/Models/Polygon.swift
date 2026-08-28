//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import CoreGraphics

extension Predictions {
    public struct Polygon {
        public let points: [CGPoint]

        public init(points: [CGPoint]) {
            self.points = points
        }
    }
}
