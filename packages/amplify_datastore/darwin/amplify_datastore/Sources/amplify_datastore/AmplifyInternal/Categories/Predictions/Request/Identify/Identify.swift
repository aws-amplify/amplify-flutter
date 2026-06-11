//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Identification criteria provided to
/// type parameter in identify() API
extension Predictions {
    public enum Identify {
        public struct Request<Output> {
            @_spi(PredictionsIdentifyRequestKind)
            public let kind: Kind
        }

        public struct Options {
            /// The default NetworkPolicy for the operation. The default value will be `auto`.
            public let defaultNetworkPolicy: DefaultNetworkPolicy
            /// Extra plugin specific options, only used in special circumstances when the existing options do not provide
            /// a way to utilize the underlying storage system's functionality. See plugin documentation for expected
            /// key/values
            public let pluginOptions: Any?

            public init(
                defaultNetworkPolicy: DefaultNetworkPolicy = .auto,
                uploadToRemote: Bool = false,
                pluginOptions: Any? = nil
            ) {
                self.defaultNetworkPolicy = defaultNetworkPolicy
                self.pluginOptions = pluginOptions

            }
        }
    }
}

extension Predictions.Identify.Request {
    @_spi(PredictionsIdentifyRequestKind)
    public enum Kind {
        public typealias Lifting<T> = ((T) -> Output, (Output) -> T)

        case detectCelebrities(
            Lift<Predictions.Identify.Celebrities.Result, Output>
        )

        case detectEntities(
            Lift<Predictions.Identify.Entities.Result, Output>
        )

        case detectEntitiesCollection(
            String,
            Lift<Predictions.Identify.EntityMatches.Result, Output>
        )

        case detectLabels(
            Predictions.LabelType,
            Lift<Predictions.Identify.Labels.Result, Output>
        )

        case detectTextInDocument(
            Predictions.TextFormatType,
            Lift<Predictions.Identify.DocumentText.Result, Output>
        )

        case detectText(
            Lift<Predictions.Identify.Text.Result, Output>
        )
    }
}
