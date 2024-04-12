//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

public struct MutationSyncMetadata: Model {
    /// Alias of MutationSyncMetadata's identifier, which has the format of `{modelName}|{modelId}`
    public typealias MutationSyncIdentifier = String
    public typealias ModelId = String

    public let id: MutationSyncIdentifier
    public var deleted: Bool
    public var lastChangedAt: Int64
    public var version: Int

    static let deliminator = "|"

    public var modelId: String {
        id.components(separatedBy: MutationSyncMetadata.deliminator).last ?? ""
    }
    public var modelName: String {
        id.components(separatedBy: MutationSyncMetadata.deliminator).first ?? ""
    }

    @available(*, deprecated, message: """
        The format of the `id` has changed to support unique ids across mutiple model types.
        Use init(modelId:modelName:deleted:lastChangedAt) to pass in the `modelName`.
    """)
    public init(id: MutationSyncIdentifier, deleted: Bool, lastChangedAt: Int64, version: Int) {
        self.id = id
        self.deleted = deleted
        self.lastChangedAt = lastChangedAt
        self.version = version
    }

    public init(modelId: ModelId, modelName: String, deleted: Bool, lastChangedAt: Int64, version: Int) {
        self.id = Self.identifier(modelName: modelName, modelId: modelId)
        self.deleted = deleted
        self.lastChangedAt = lastChangedAt
        self.version = version
    }

    public static func identifier(modelName: String, modelId: String) -> MutationSyncIdentifier {
        "\(modelName)\(deliminator)\(modelId)"
    }
}
