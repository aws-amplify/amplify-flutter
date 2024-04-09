//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import CoreGraphics

extension Predictions {
    /// Describes the facial feature in a celebrity/entity
    /// identified as a result of identify() API
    public struct Landmark {
        public let kind: Kind
        public let points: [CGPoint]

        public init(
            kind: Kind,
            points: [CGPoint]
        ) {
            self.kind = kind
            self.points = points
        }
    }
}

extension Predictions.Landmark {
    /// different types of facial features
    public struct Kind {
        let id: UInt8

        public static let allPoints = Self(id: 0)
        public static let leftEye = Self(id: 1)
        public static let rightEye = Self(id: 2)
        public static let leftEyebrow = Self(id: 3)
        public static let rightEyebrow = Self(id: 4)
        public static let nose = Self(id: 5)
        public static let noseCrest = Self(id: 6)
        public static let medianLine = Self(id: 7)
        public static let outerLips = Self(id: 8)
        public static let innerLips = Self(id: 9)
        public static let leftPupil = Self(id: 10)
        public static let rightPupil = Self(id: 11)
        public static let faceContour = Self(id: 12)
    }
}
