//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import CoreGraphics

extension Predictions.Entity {
    /// Describes the result for an entity matched in an entity collection
    /// created on AWS Rekogniton and detected from identify() API call
    public struct Match {
        public let boundingBox: CGRect
        public let metadata: Metadata

        public init(
            boundingBox: CGRect,
            metadata: Metadata
        ) {
            self.boundingBox = boundingBox
            self.metadata = metadata
        }
    }
}
extension Predictions.Entity.Match {
    public struct Metadata {
        public let externalImageId: String?
        public let similarity: Double

        public init(
            externalImageId: String?,
            similarity: Double
        ) {
            self.externalImageId = externalImageId
            self.similarity = similarity
        }
    }
}
