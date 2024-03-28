//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Entity {
    /// Describes the result of interpret() API when the analyzed text
    /// contains a person/place
    public struct DetectionResult {
        public let type: Predictions.Entity.Kind
        public let targetText: String
        public let score: Float?
        public let range: Range<String.Index>

        public init(
            type: Predictions.Entity.Kind,
            targetText: String,
            score: Float?,
            range: Range<String.Index>
        ) {
            self.type = type
            self.targetText = targetText
            self.score = score
            self.range = range
        }
    }
}
