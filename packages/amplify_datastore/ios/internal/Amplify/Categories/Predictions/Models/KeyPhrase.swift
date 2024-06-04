//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions {
    /// Describes a key phrase identified in a text as
    /// a result of interpret() API call
    public struct KeyPhrase {
        public let score: Float?
        public let text: String
        public let range: Range<String.Index>

        public init(text: String, range: Range<String.Index>, score: Float?) {
            self.text = text
            self.range = range
            self.score = score
        }
    }
}
