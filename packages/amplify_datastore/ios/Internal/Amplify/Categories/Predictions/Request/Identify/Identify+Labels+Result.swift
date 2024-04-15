//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import CoreGraphics

extension Predictions.Identify.Labels {
    /// Results are mapped to IdentifyLabelsResult when .labels in passed to .detectLabels
    /// in the type: field in identify() API
    public struct Result {
        public let labels: [Predictions.Label]
        public let unsafeContent: Bool?

        public init(labels: [Predictions.Label], unsafeContent: Bool? = nil) {
            self.labels = labels
            self.unsafeContent = unsafeContent
        }
    }
}

extension Predictions {
    /// Describes a real world object (e.g., chair, desk) identified in an image
    public struct Label {
        public let name: String
        public let metadata: Metadata?
        public let boundingBoxes: [CGRect]?

        public init(
            name: String,
            metadata: Metadata? = nil,
            boundingBoxes: [CGRect]? = nil
        ) {
            self.name = name
            self.metadata = metadata
            self.boundingBoxes = boundingBoxes
        }
    }

    public struct Parent {
        public let name: String

        public init(name: String) {
            self.name = name
        }
    }
}

extension Predictions.Label {
    public struct Metadata {
        public let confidence: Double
        public let parents: [Predictions.Parent]?

        public init(confidence: Double, parents: [Predictions.Parent]? = nil) {
            self.confidence = confidence
            self.parents = parents
        }
    }
}
