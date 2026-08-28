//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert {
    public enum TextToSpeech {}
}

extension Predictions.Convert.Request where
Input == String,
Options == Predictions.Convert.TextToSpeech.Options,
Output == Predictions.Convert.TextToSpeech.Result {

    public static func textToSpeech(_ text: String) -> Self {
        .init(input: text, kind: .textToSpeech(.lift))
    }
}
