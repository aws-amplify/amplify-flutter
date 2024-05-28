//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Decorate the GraphQL document with the data from an instance of the model. This is added as a single parameter
/// called "input" that can be referenced by other decorators to append additional document inputs. This decorator
/// constructs the input's type using the document name.
public struct ModelDecorator: ModelBasedGraphQLDocumentDecorator {

    private let model: Model
    private let mutationType: GraphQLMutationType

    public init(model: Model, mutationType: GraphQLMutationType) {
        self.model = model
        self.mutationType = mutationType
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelType: Model.Type) -> SingleDirectiveGraphQLDocument {
        decorate(document, modelSchema: modelType.schema)
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument {
        var inputs = document.inputs
        var graphQLInput = model.graphQLInputForMutation(modelSchema, mutationType: mutationType)

        if !modelSchema.authRules.isEmpty {
            modelSchema.authRules.forEach { authRule in
                if authRule.allow == .owner {
                    let ownerField = authRule.getOwnerFieldOrDefault()
                    graphQLInput = graphQLInput.filter { (field, value) -> Bool in
                        if field == ownerField, value == nil {
                            return false
                        }
                        return true
                    }
                }
            }
        }

        inputs["input"] = GraphQLDocumentInput(type: "\(document.name.pascalCased())Input!",
            value: .object(graphQLInput))
        return document.copy(inputs: inputs)
    }
}
