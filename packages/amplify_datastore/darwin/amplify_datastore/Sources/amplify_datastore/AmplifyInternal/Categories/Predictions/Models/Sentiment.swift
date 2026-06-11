//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions {
    /// Sentiment Analysis result for Predictions category
    public struct Sentiment {
        public let predominantSentiment: Kind
        public let sentimentScores: [Kind: Double]?

        public init(
            predominantSentiment: Kind,
            sentimentScores: [Kind: Double]?
        ) {
            self.predominantSentiment = predominantSentiment
            self.sentimentScores = sentimentScores
        }
    }
}
