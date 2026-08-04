//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import CoreGraphics

extension Predictions {
    /// Result returned as part of identify() API call with
    /// `IdentifyAction.detectEntities` type parameter
    public struct Entity {
        public let boundingBox: CGRect
        public let landmarks: [Landmark]
        public let ageRange: ClosedRange<Int>?
        public let attributes: [Attribute]?
        public let gender: GenderAttribute?
        public let metadata: Metadata
        public let emotions: [Emotion]?

        public init(
            boundingBox: CGRect,
            landmarks: [Landmark],
            ageRange: ClosedRange<Int>?,
            attributes: [Attribute]?,
            gender: GenderAttribute?,
            metadata: Metadata,
            emotions: [Emotion]?
        ) {
            self.boundingBox = boundingBox
            self.landmarks = landmarks
            self.ageRange = ageRange
            self.attributes = attributes
            self.gender = gender
            self.metadata = metadata
            self.emotions = emotions
        }
    }
}
