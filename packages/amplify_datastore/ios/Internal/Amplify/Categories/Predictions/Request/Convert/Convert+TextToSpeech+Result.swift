//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert.TextToSpeech {
    /// Results are mapped to TextToSpeechResult when convert() API is
    /// called to convert a text to audio
    public struct Result {
        /// Resulting audio from text to speech conversion
        public let audioData: Data

        public init(audioData: Data) {
            self.audioData = audioData
        }
    }
}
