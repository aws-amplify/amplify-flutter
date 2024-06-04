//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions.Identify {
    public enum EntityMatches {}
}

extension Predictions.Identify.Request where Output == Predictions.Identify.EntityMatches.Result {
    public static func entitiesFromCollection(withID collectionID: String) -> Self {
        .init(kind: .detectEntitiesCollection(collectionID, .lift))
    }
}
