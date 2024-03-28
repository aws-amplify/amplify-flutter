//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import CoreGraphics

extension Predictions {
    /// Describes a celebrity identified in an image
    /// with information about its location(bounding box) and
    /// facial features(landmarks)
    public struct Celebrity {
        public let metadata: Metadata
        public let boundingBox: CGRect
        public let landmarks: [Landmark]

        public init(
            metadata: Metadata,
            boundingBox: CGRect,
            landmarks: [Landmark]
        ) {
            self.metadata = metadata
            self.boundingBox = boundingBox
            self.landmarks = landmarks
        }
    }
}
