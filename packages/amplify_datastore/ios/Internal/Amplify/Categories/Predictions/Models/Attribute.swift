//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions {
    /// Attribute of an entity identified as a result of identify() API
    public struct Attribute {
        public let name: String
        public let value: Bool
        public let confidence: Double

        public init(
            name: String,
            value: Bool,
            confidence: Double
        ) {
            self.name = name
            self.value = value
            self.confidence = confidence
        }
    }
}
