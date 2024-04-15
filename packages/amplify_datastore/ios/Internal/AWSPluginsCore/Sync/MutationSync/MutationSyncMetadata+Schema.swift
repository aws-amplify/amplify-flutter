//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

extension MutationSyncMetadata {

    // MARK: - CodingKeys

    public enum CodingKeys: String, ModelKey {
        case id
        case deleted
        case lastChangedAt
        case version
    }

    public static let keys = CodingKeys.self

    // MARK: - ModelSchema

    public static let schema = defineSchema { definition in
        let sync = MutationSyncMetadata.keys

        definition.attributes(.isSystem)

        definition.fields(
            .id(),
            .field(sync.deleted, is: .required, ofType: .bool),
            .field(sync.lastChangedAt, is: .required, ofType: .int),
            .field(sync.version, is: .required, ofType: .int)
        )
    }
}

extension MutationSyncMetadata: ModelIdentifiable {
    public typealias IdentifierProtocol = ModelIdentifier<Self, ModelIdentifierFormat.Default>
    public typealias IdentifierFormat = ModelIdentifierFormat.Default
}
