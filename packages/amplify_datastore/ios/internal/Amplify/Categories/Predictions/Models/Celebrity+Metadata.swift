//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Celebrity {
    /// Celebrity metadata identified as a result of identify() API
    public struct Metadata {
        public let name: String
        public let identifier: String
        public let urls: [URL]
        public let pose: Predictions.Pose

        public init(
            name: String,
            identifier: String,
            urls: [URL],
            pose: Predictions.Pose
        ) {
            self.name = name
            self.identifier = identifier
            self.urls = urls
            self.pose = pose
        }
    }
}
