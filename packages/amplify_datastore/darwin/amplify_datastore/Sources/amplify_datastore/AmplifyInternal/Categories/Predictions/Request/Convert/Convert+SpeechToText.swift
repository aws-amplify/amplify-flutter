//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert {
    public enum SpeechToText {}
}

extension Predictions.Convert.Request where
Input == URL,
Options == Predictions.Convert.SpeechToText.Options,
Output == AsyncThrowingStream<Predictions.Convert.SpeechToText.Result, Error> {

    public static func speechToText(url: URL) -> Self {
        .init(input: url, kind: .speechToText(.lift))
    }
}
