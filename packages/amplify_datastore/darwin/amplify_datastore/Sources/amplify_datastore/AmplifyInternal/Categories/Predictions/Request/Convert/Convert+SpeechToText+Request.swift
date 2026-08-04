//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert.SpeechToText {
    public struct Request {
        /// The text to synthesize to speech
        public let speechToText: URL

        /// Options to adjust the behavior of this request, including plugin options
        public let options: Options

        public init(speechToText: URL, options: Options) {
            self.speechToText = speechToText
            self.options = options
        }
    }
}
