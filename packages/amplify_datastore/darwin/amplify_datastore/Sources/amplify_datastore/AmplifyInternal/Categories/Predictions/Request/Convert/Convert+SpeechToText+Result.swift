//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert.SpeechToText {
    /// Results are mapped to SpeechToTextResult when convert() API is
    /// called to convert a text to audio
    public struct Result {
        /// Resulting string from speech to text conversion
        public let transcription: String

        public init(transcription: String) {
            self.transcription = transcription
        }
    }
}
