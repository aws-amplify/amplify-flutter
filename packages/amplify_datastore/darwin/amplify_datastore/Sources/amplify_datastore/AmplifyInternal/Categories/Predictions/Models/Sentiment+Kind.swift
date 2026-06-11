//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Sentiment {
    public struct Kind: Equatable, Hashable {
        let id: UInt8

        public static let unknown = Self(id: 0)
        public static let positive = Self(id: 1)
        public static let negative = Self(id: 2)
        public static let neutral = Self(id: 3)
        public static let mixed = Self(id: 4)
    }
}
