//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension Predictions.Identify.Entities {
    /// Results are mapped to IdentifyEntitiesResult when .detectEntities is
    /// passed to type: field in identify() API and general entities like facial features, landmarks etc.
    /// are needed to be detected
    public struct Result {
        /// List of 'Entity' as a result of Identify query
        public let entities: [Predictions.Entity]

        public init(entities: [Predictions.Entity]) {
            self.entities = entities
        }
    }
}
