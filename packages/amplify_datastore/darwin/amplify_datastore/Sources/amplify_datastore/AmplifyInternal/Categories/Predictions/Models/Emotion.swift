//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions {
    /// Emotion identified in an entity(faces/celebrities)
    /// as a result of identify() API with associated `EmotionType`
    /// and confidence value
    public struct Emotion {
        public let emotion: Kind
        public let confidence: Double

        public init(
            emotion: Kind,
            confidence: Double
        ) {
            self.emotion = emotion
            self.confidence = confidence
        }
    }
}
