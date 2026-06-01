//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions {
    /// Describes the pose of a person identified in an image from identify() API
    public struct Pose {
        public let pitch: Double
        public let roll: Double
        public let yaw: Double

        public init(
            pitch: Double,
            roll: Double,
            yaw: Double
        ) {
            self.pitch = pitch
            self.roll = roll
            self.yaw = yaw
        }
    }
}
