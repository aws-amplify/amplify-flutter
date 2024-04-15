//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions {
    /// Describes different text formats passed a type parameter
    /// to identify().
    public struct TextFormatType: Equatable {
        let id: UInt8

        public static let all = Self(id: 0)
        public static let form = Self(id: 1)
        public static let table = Self(id: 2)
        public static let plain = Self(id: 3)
    }
}
