//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Emotion {
    /// Different emotion types returned as a result of
    /// identify() API call
    public struct Kind: Equatable {
        let id: UInt8

        public static let unknown = Self(id: 0)
        public static let angry = Self(id: 1)
        public static let calm = Self(id: 2)
        public static let confused = Self(id: 3)
        public static let disgusted = Self(id: 4)
        public static let fear = Self(id: 5)
        public static let happy = Self(id: 6)
        public static let sad = Self(id: 7)
        public static let surprised = Self(id: 8)
    }
}
