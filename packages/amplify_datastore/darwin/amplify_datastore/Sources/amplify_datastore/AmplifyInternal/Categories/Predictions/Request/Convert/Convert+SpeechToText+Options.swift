//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Convert.SpeechToText {
    public struct Options {
        /// The default NetworkPolicy for the operation. The default value will be `auto`.
        public let defaultNetworkPolicy: DefaultNetworkPolicy

        /// The language of the audio file you are transcribing
        public let language: Predictions.Language?

        /// Extra plugin specific options, only used in special circumstances when the existing options do not
        /// provide a way to utilize the underlying storage system's functionality. See plugin documentation for
        /// expected key/values
        public let pluginOptions: Any?

        public init(
            defaultNetworkPolicy: DefaultNetworkPolicy = .auto,
            language: Predictions.Language? = nil,
            pluginOptions: Any? = nil
        ) {
            self.defaultNetworkPolicy = defaultNetworkPolicy
            self.language = language
            self.pluginOptions = pluginOptions
        }
    }
}
