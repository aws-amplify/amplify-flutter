//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Language {
    /// Result describing language identified in a text
    /// from interpret() API call
    public struct DetectionResult {
        public let languageCode: Predictions.Language
        public let score: Double?

        public init(
            languageCode: Predictions.Language,
            score: Double?
        ) {
            self.languageCode = languageCode
            self.score = score
        }
    }
}
