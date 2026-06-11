//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert {
    public enum TranslateText {}
}

extension Predictions.Convert.Request where
Input == (String, Predictions.Language?, Predictions.Language?),
Options == Predictions.Convert.TranslateText.Options,
Output == Predictions.Convert.TranslateText.Result {

    public static func translateText(
        _ text: String,
        from: Predictions.Language? = nil,
        to: Predictions.Language? = nil
    ) -> Self {
        .init(
            input: (text, from, to),
            kind: .textToTranslate(.lift)
        )
    }
}
