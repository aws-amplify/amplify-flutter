//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

/// Tuple-like type that holds a `Model` instance and its `MutationSyncMetadata`.
/// THe sync metadata constains information about the model state in the backend.
public struct MutationSync<ModelType: Model>: Decodable {

    public let model: ModelType
    public let syncMetadata: MutationSyncMetadata

    public init(model: ModelType, syncMetadata: MutationSyncMetadata) {
        self.model = model
        self.syncMetadata = syncMetadata
    }

    /// Custom decoder initializar that decodes a single JSON object into the `MutationSync`.
    /// The fields (`_deleted`, `_lastChangedAt` and `_version`) are decoded into `MutationSyncMetadata`
    /// and the remaining fields are decoded into the given `ModelType`.
    /// - Throws:
    ///   - `DataStoreError.decodingError` in case the `ModelType` can't be resolved or in case the
    ///   field from `MutationSyncMetadata` are missing.
    public init(from decoder: Decoder) throws {
        let modelType = ModelType.self
        let json = try JSONValue(from: decoder)

        var resolvedModelName = modelType.modelName

        // in case of `AnyModel`, decode the underlying type and erase to `AnyModel`
        if modelType == AnyModel.self {
            guard case let .string(modelName) = json["__typename"] else {
                throw DataStoreError.decodingError(
                    "The key `__typename` was not found",
                    "Check if the parsed JSON contains the expected `__typename`")
            }
            guard let actualModelType = ModelRegistry.modelType(from: modelName) else {
                throw DataStoreError.decodingError(
                    "Model named `\(modelName)` could not be resolved.",
                    "Make sure `\(modelName)` was registered using `ModelRegistry.register`")
            }
            let model = try actualModelType.init(from: decoder)
            guard let anyModel = try model.eraseToAnyModel() as? ModelType else {
                throw DataStoreError.decodingError(
                    "Could not erase `\(modelName)` to `AnyModel`",
                    """
                    Please take a look at https://github.com/aws-amplify/amplify-ios/issues
                    to see if there are any existing issues that match your scenario,
                    and file an issue with the details of the bug if there isn't.
                    """)
            }
            self.model = anyModel
            resolvedModelName = modelName
        } else {
            self.model = try modelType.init(from: decoder)
        }

        guard case let .boolean(deleted) = json.value(at: "_deleted", withDefault: .boolean(false)),
              case let .number(lastChangedAt) = json["_lastChangedAt"],
              case let .number(version) = json["_version"] else {

                  // TODO query name could be useful for the message, but re-creating it here is not great
                  let queryName = modelType.schema.syncPluralName ?? modelType.schema.pluralName ?? modelType.modelName
                  throw DataStoreError.decodingError(
                """
                Error decoding the the sync metadata from the delta sync query result.
                """,
                """
                The sync metadata should contain fields named `_deleted`, `_lastChangedAt` and `_version`.
                Check your sync`\(queryName)` query and make sure it returns the correct set of sync fields.
                """
                  )
              }

        // get the schema of the resolved model
        guard let modelSchema = ModelRegistry.modelSchema(from: resolvedModelName) else {
            throw DataStoreError.invalidModelName(resolvedModelName)
        }

        let modelIdentifier = model.identifier(schema: modelSchema).stringValue

        self.syncMetadata = MutationSyncMetadata(modelId: modelIdentifier,
                                                 modelName: resolvedModelName,
                                                 deleted: deleted,
                                                 lastChangedAt: Int64(lastChangedAt),
                                                 version: Int(version))
    }
}
