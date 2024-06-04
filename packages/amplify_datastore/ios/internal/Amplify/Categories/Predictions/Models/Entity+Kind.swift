//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Entity {
    /// Different entity types detected in a text as a result of
    /// interpret() API
    public struct Kind: Equatable, Hashable {
        let id: UInt8

        public static let unknown = Self(id: 0)
        public static let commercialItem = Self(id: 1)
        public static let date = Self(id: 2)
        public static let event = Self(id: 3)
        public static let location = Self(id: 4)
        public static let organization = Self(id: 5)
        public static let other = Self(id: 6)
        public static let person = Self(id: 7)
        public static let quantity = Self(id: 8)
        public static let title = Self(id: 9)
    }
}
