//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert.TranslateText {
    public struct Request {
        /// The text to translate.
        public let textToTranslate: String

        /// The language to translate
        public let targetLanguage: Predictions.Language?

        /// Source language of the text given.
        public let language: Predictions.Language?

        /// Options to adjust the behavior of this request, including plugin options
        public let options: Options

        public init(
            textToTranslate: String,
            targetLanguage: Predictions.Language?,
            language: Predictions.Language?,
            options: Options
        ) {
            self.textToTranslate = textToTranslate
            self.language = language
            self.targetLanguage = targetLanguage
            self.options = options
        }
    }
}
