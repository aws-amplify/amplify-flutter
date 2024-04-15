//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

extension MutationSyncMetadataMigration {
    public struct MutationSyncMetadataCopy: Model {
        public let id: String
        public var deleted: Bool
        public var lastChangedAt: Int64
        public var version: Int

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
            let sync = MutationSyncMetadataCopy.keys

            definition.attributes(.isSystem)

            definition.fields(
                .id(),
                .field(sync.deleted, is: .required, ofType: .bool),
                .field(sync.lastChangedAt, is: .required, ofType: .int),
                .field(sync.version, is: .required, ofType: .int)
            )
        }
    }
}
