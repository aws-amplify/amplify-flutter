//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

/// Adds conflict resolution information onto the document based on the operation type (query or mutation)
/// All selection sets are decorated with conflict resolution fields and inputs are added based on the values that it
/// was instantiated with. If `version` is passed, the input with key "input" will contain "_version" with the `version`
/// value. If `lastSync` is passed, the input will contain new key "lastSync" with the `lastSync` value.
public struct ConflictResolutionDecorator: ModelBasedGraphQLDocumentDecorator {

    private let version: Int?
    private let lastSync: Int64?
    private let graphQLType: GraphQLOperationType
    private var primaryKeysOnly: Bool

    public init(version: Int? = nil,
                lastSync: Int64? = nil,
                graphQLType: GraphQLOperationType,
                primaryKeysOnly: Bool = true) {
        self.version = version
        self.lastSync = lastSync
        self.graphQLType = graphQLType
        self.primaryKeysOnly = primaryKeysOnly
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelType: Model.Type) -> SingleDirectiveGraphQLDocument {
        decorate(document, modelSchema: modelType.schema)
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument {
        var primaryKeysOnly = primaryKeysOnly
        if primaryKeysOnly && ModelRegistry.modelType(from: modelSchema.name)?.rootPath == nil {
            primaryKeysOnly = false
        }
        var inputs = document.inputs

        if let version = version,
            case .mutation = document.operationType,
            var input = inputs["input"],
            case var .object(value) = input.value {

            value["_version"] = version
            input.value = .object(value)
            inputs["input"] = input
        }

        if let lastSync = lastSync, case .query = document.operationType {
            inputs["lastSync"] = GraphQLDocumentInput(type: "AWSTimestamp", value: .scalar(lastSync))
        }

        if let selectionSet = document.selectionSet {
            addConflictResolution(selectionSet: selectionSet, primaryKeysOnly: primaryKeysOnly)
            return document.copy(inputs: inputs, selectionSet: selectionSet)
        }

        return document.copy(inputs: inputs)
    }

    enum SyncMetadataFields {
        case full
        case deletedFieldOnly
    }
    /// Append the correct conflict resolution fields for `model` and `pagination` selection sets.
    private func addConflictResolution(selectionSet: SelectionSet,
                                       primaryKeysOnly: Bool,
                                       includeSyncMetadataFields: SyncMetadataFields = .full) {
        var includeSyncMetadataFields = includeSyncMetadataFields
        switch selectionSet.value.fieldType {
        case .value, .embedded:
            break
        case .model, .collection:
            switch includeSyncMetadataFields {
            case .full:
                selectionSet.addChild(settingParentOf: .init(value: .init(name: "_version", fieldType: .value)))
                selectionSet.addChild(settingParentOf: .init(value: .init(name: "_deleted", fieldType: .value)))
                selectionSet.addChild(settingParentOf: .init(value: .init(name: "_lastChangedAt", fieldType: .value)))
                includeSyncMetadataFields = .deletedFieldOnly
            case .deletedFieldOnly:
                selectionSet.addChild(settingParentOf: .init(value: .init(name: "_deleted", fieldType: .value)))
            }
        case .pagination:
            selectionSet.addChild(settingParentOf: .init(value: .init(name: "startedAt", fieldType: .value)))
        }

        if !primaryKeysOnly || graphQLType == .mutation {
            // Continue to add version fields for all levels, for backwards compatibility
            // Reduce the selection set only when the type is "subscription" and "query"
            // (specifically for syncQuery). Selection set for mutation should not be reduced 
            // because it needs to be the full selection set to send mutation events to older iOS clients,
            // which do not have the reduced subscription selection set.
            // subscriptions and sync query is to receive data, so it can be reduced to allow decoding to the
            // LazyReference type.
            selectionSet.children.forEach { child in
                addConflictResolution(selectionSet: child,
                                      primaryKeysOnly: primaryKeysOnly,
                                      includeSyncMetadataFields: .full)
            }
        } else {
            // Only add all the sync metadata fields once. Once this was done once, `includeSyncMetadataFields`
            // should be set to `.deletedFieldOnly` and passed down to the recursive call stack.
            selectionSet.children.forEach { child in
                addConflictResolution(selectionSet: child,
                                      primaryKeysOnly: primaryKeysOnly,
                                      includeSyncMetadataFields: includeSyncMetadataFields)
            }
        }
    }
}
