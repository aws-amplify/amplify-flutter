//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Decorate the document input with "limit" and "nextToken". Also paginates the selection set with pagination fields.
public struct PaginationDecorator: ModelBasedGraphQLDocumentDecorator {

    private let limit: Int?
    private let nextToken: String?

    public init(limit: Int? = nil, nextToken: String? = nil) {
        self.limit = limit
        self.nextToken = nextToken
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelType: Model.Type) -> SingleDirectiveGraphQLDocument {
        decorate(document, modelSchema: modelType.schema)
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument {
        var inputs = document.inputs

        if let limit = limit {
            inputs["limit"] = GraphQLDocumentInput(type: "Int", value: .scalar(limit))
        } else {
            inputs["limit"] = GraphQLDocumentInput(type: "Int", value: .scalar(1_000))
        }

        if let nextToken = nextToken {
            inputs["nextToken"] = GraphQLDocumentInput(type: "String", value: .scalar(nextToken))
        }

        if let selectionSet = document.selectionSet {

            return document.copy(inputs: inputs,
                                 selectionSet: withPagination(selectionSet: selectionSet))
        }

        return document.copy(inputs: inputs)
    }

    /// Wrap the selectionSet with a pagination selection set,
    func withPagination(selectionSet: SelectionSet) -> SelectionSet {
        let paginatedNode = SelectionSetField(fieldType: .pagination)
        let newRoot = SelectionSet(value: paginatedNode)
        selectionSet.value.name = "items"
        newRoot.addChild(settingParentOf: selectionSet)
        newRoot.addChild(settingParentOf: SelectionSet(value: SelectionSetField(name: "nextToken", fieldType: .value)))
        return newRoot
    }
}
