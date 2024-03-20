//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions {
    /// Describes gender of an entity identified as a result of
    /// identify() API
    public struct Gender {
        let id: UInt8

        public static let unknown = Self(id: 0)
        public static let female = Self(id: 1)
        public static let male = Self(id: 2)
    }
}
