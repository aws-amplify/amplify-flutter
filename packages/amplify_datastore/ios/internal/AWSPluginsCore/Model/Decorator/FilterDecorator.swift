//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

/// Decorates a GraphQL mutation with a "condition" input or a GraphQL query with a "filter" input.
/// The value is a `GraphQLFilter` object
public struct FilterDecorator: ModelBasedGraphQLDocumentDecorator {

    private let filter: GraphQLFilter

    public init(filter: GraphQLFilter) {
        self.filter = filter
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelType: Model.Type) -> SingleDirectiveGraphQLDocument {
        decorate(document, modelSchema: modelType.schema)
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument {
        guard !filter.isEmpty else {
            return document.copy(inputs: document.inputs)
        }

        var inputs = document.inputs
        let modelName = modelSchema.name
        if case .mutation = document.operationType {
            inputs["condition"] = GraphQLDocumentInput(type: "Model\(modelName)ConditionInput",
                value: .object(filter))
        } else if case .query = document.operationType {
            inputs["filter"] = GraphQLDocumentInput(type: "Model\(modelName)FilterInput",
                value: .object(filter))
        }

        return document.copy(inputs: inputs)
    }
}
