//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Identify.DocumentText {
    /// Results are mapped to IdentifyDocumentTextResult when .form, .table
    /// or .all is passed for .detectText in the type: field
    /// in identify() API
    public struct Result {
        public let fullText: String
        public let words: [Predictions.IdentifiedWord]
        public let rawLineText: [String]
        public let identifiedLines: [Predictions.IdentifiedLine]
        public let selections: [Predictions.Selection]
        public let tables: [Predictions.Table]
        public let keyValues: [Predictions.BoundedKeyValue]

        public init(
            fullText: String,
            words: [Predictions.IdentifiedWord],
            rawLineText: [String],
            identifiedLines: [Predictions.IdentifiedLine],
            selections: [Predictions.Selection],
            tables: [Predictions.Table],
            keyValues: [Predictions.BoundedKeyValue]
        ) {
            self.fullText = fullText
            self.words = words
            self.rawLineText = rawLineText
            self.identifiedLines = identifiedLines
            self.selections = selections
            self.tables = tables
            self.keyValues = keyValues
        }
    }
}
