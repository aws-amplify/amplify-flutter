//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Identify.EntityMatches {
    /// Results are mapped to IdentifyEntityMatchesResult when .detectEntities is
    /// passed to type: field in identify() API and matches from your Rekognition Collection
    /// need to be identified
    public struct Result {
        /// List of matched `Entity.Match`
        public let entities: [Predictions.Entity.Match]

        public init(entities: [Predictions.Entity.Match]) {
            self.entities = entities
        }
    }
}
