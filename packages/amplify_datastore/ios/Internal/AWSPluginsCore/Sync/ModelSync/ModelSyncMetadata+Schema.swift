//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

extension ModelSyncMetadata {

    // MARK: - CodingKeys

    public enum CodingKeys: String, ModelKey {
        case id
        case lastSync
        case syncPredicate
    }

    public static let keys = CodingKeys.self

    // MARK: - ModelSchema

    public static let schema = defineSchema { definition in

        definition.attributes(.isSystem)

        definition.fields(
            .id(),
            .field(keys.lastSync, is: .optional, ofType: .int),
            .field(keys.syncPredicate, is: .optional, ofType: .string)
        )
    }
}
