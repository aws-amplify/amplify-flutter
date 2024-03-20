//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions {
    public struct LabelType: Equatable {
        let id: UInt8

        public static let all = Self(id: 0)
        public static let moderation = Self(id: 1)
        public static let labels = Self(id: 2)
    }
}
