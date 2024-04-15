//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Identify.Text {
    /// Results are mapped to IdentifyTextResult when .plain is passed for .detectText in the type: field
    /// in identify() API
    public struct Result {
        public let fullText: String?
        public let words: [Predictions.IdentifiedWord]?
        public let rawLineText: [String]?
        public let identifiedLines: [Predictions.IdentifiedLine]?

        public init(
            fullText: String?,
            words: [Predictions.IdentifiedWord]?,
            rawLineText: [String]?,
            identifiedLines: [Predictions.IdentifiedLine]?
        ) {
            self.fullText = fullText
            self.words = words
            self.rawLineText = rawLineText
            self.identifiedLines = identifiedLines
        }
    }
}
