//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions {
    /// Describes syntactical information resulting from text interpretation as
    /// a result of interpret() API
    public struct SyntaxToken {
        public let tokenId: Int
        public let text: String
        public let range: Range<String.Index>
        public let detectedPartOfSpeech: PartOfSpeech.DetectionResult

        public init(
            tokenId: Int,
            text: String,
            range: Range<String.Index>,
            detectedPartOfSpeech: PartOfSpeech.DetectionResult
        ) {
            self.tokenId = tokenId
            self.text = text
            self.range = range
            self.detectedPartOfSpeech = detectedPartOfSpeech
        }
    }
}
