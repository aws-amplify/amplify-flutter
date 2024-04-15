//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert.TextToSpeech {
    public struct Request {
        /// The text to synthesize to speech
        public let textToSpeech: String

        /// Options to adjust the behavior of this request, including plugin options
        public let options: Options

        public init(textToSpeech: String, options: Options) {
            self.textToSpeech = textToSpeech
            self.options = options
        }
    }
}
