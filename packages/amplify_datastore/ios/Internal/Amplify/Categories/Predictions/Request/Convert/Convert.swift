//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions {
    public enum Convert {
        public struct Request<Input, Options, Output> {
            public let input: Input
            @_spi(PredictionsConvertRequestKind)
            public let kind: Kind
        }
    }
}

extension Predictions.Convert.Request {
    @_spi(PredictionsConvertRequestKind)
    public enum Kind {
        public typealias BidirectionalLift<T, U> = ((T) -> U, (U) -> T)

        case textToSpeech(
            Lift<
            String, Input,
            Predictions.Convert.TextToSpeech.Options?, Options?,
            Predictions.Convert.TextToSpeech.Result, Output
            >
        )

        case speechToText(
            Lift<
            URL, Input,
            Predictions.Convert.SpeechToText.Options?, Options?,
            AsyncThrowingStream<Predictions.Convert.SpeechToText.Result, Error>, Output
            >
        )

        case textToTranslate(
            Lift<
            (String, Predictions.Language?, Predictions.Language?), Input,
            Predictions.Convert.TranslateText.Options?, Options?,
            Predictions.Convert.TranslateText.Result, Output
            >
        )
    }
}
