//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Convert.TranslateText {
    /// Results are mapped to TranslateTextResult when convert() API is
    /// called to translate a text into another language
    public struct Result {
        /// Translated text
        public let text: String

        /// Language to which the text was translated.
        public let targetLanguage: Predictions.Language

        public init(text: String, targetLanguage: Predictions.Language) {
            self.text = text
            self.targetLanguage = targetLanguage
        }
    }
}
