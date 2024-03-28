//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Interpret {
    public struct Result {
        public let keyPhrases: [Predictions.KeyPhrase]?
        public let sentiment: Predictions.Sentiment?
        public let entities: [Predictions.Entity.DetectionResult]?
        public let language: Predictions.Language.DetectionResult?
        public let syntax: [Predictions.SyntaxToken]?

        public init(
            keyPhrases: [Predictions.KeyPhrase]?,
            sentiment: Predictions.Sentiment?,
            entities: [Predictions.Entity.DetectionResult]?,
            language: Predictions.Language.DetectionResult?,
            syntax: [Predictions.SyntaxToken]?
        ) {
            self.keyPhrases = keyPhrases
            self.sentiment = sentiment
            self.entities = entities
            self.language = language
            self.syntax = syntax
        }
    }
}
