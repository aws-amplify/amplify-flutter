//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.PartOfSpeech {
    /// Part of speech identified in a text from interpret() API
    public struct DetectionResult {
        public let partOfSpeech: Predictions.PartOfSpeech
        public let score: Float?

        public init(partOfSpeech: Predictions.PartOfSpeech, score: Float?) {
            self.partOfSpeech = partOfSpeech
            self.score = score
        }
    }
}
