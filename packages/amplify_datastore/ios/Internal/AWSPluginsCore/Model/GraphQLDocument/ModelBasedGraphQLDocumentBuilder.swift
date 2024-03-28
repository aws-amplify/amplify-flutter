//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Helps construct a `SingleDirectiveGraphQLDocument`. Collects instances of the decorators and applies the changes
/// on the document.
public struct ModelBasedGraphQLDocumentBuilder {
    private var decorators = [ModelBasedGraphQLDocumentDecorator]()
    private var document: SingleDirectiveGraphQLDocument
    private let modelSchema: ModelSchema

    public init(modelName: String, operationType: GraphQLOperationType, primaryKeysOnly: Bool = true) {
        guard let modelSchema = ModelRegistry.modelSchema(from: modelName) else {
            preconditionFailure("Missing ModelSchema in ModelRegistry for model name: \(modelName)")
        }

        self.init(modelSchema: modelSchema, operationType: operationType, primaryKeysOnly: primaryKeysOnly)
    }

    @available(*, deprecated, message: """
    Init with modelType is deprecated, use init with modelSchema instead.
    """)
    public init(modelType: Model.Type, operationType: GraphQLOperationType, primaryKeysOnly: Bool = true) {
        self.init(modelSchema: modelType.schema, operationType: operationType, primaryKeysOnly: primaryKeysOnly)
    }

    public init(modelSchema: ModelSchema, operationType: GraphQLOperationType, primaryKeysOnly: Bool = true) {
        self.modelSchema = modelSchema
        var primaryKeysOnly = primaryKeysOnly
        if primaryKeysOnly && ModelRegistry.modelType(from: modelSchema.name)?.rootPath == nil {
            primaryKeysOnly = false
        }

        switch operationType {
        case .query:
            self.document = GraphQLQuery(modelSchema: modelSchema, primaryKeysOnly: primaryKeysOnly)
        case .mutation:
            self.document = GraphQLMutation(modelSchema: modelSchema, primaryKeysOnly: primaryKeysOnly)
        case .subscription:
            self.document = GraphQLSubscription(modelSchema: modelSchema, primaryKeysOnly: primaryKeysOnly)
        }
    }

    public mutating func add(decorator: ModelBasedGraphQLDocumentDecorator) {
        decorators.append(decorator)
    }

    public mutating func build() -> SingleDirectiveGraphQLDocument {

        let decoratedDocument = decorators.reduce(document) { doc, decorator in
            decorator.decorate(doc, modelSchema: self.modelSchema)
        }

        return decoratedDocument
    }
}
