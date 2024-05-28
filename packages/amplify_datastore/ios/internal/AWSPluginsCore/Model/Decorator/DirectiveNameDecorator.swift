//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

/// Replaces the directive name of the GraphQL document based on Amplify GraphQL operation types such as "get", "list",
/// "sync", "create", "update", "delete", "onCreate", "onUpdate", and "onDelete". The GraphQL name is constructed based
/// on the data from the Model schema and the operation type.
public struct DirectiveNameDecorator: ModelBasedGraphQLDocumentDecorator {

    private let queryType: GraphQLQueryType?
    private let mutationType: GraphQLMutationType?
    private let subscriptionType: GraphQLSubscriptionType?

    public init(type: GraphQLQueryType) {
        self.queryType = type
        self.mutationType = nil
        self.subscriptionType = nil
    }

    public init(type: GraphQLMutationType) {
        self.queryType = nil
        self.mutationType = type
        self.subscriptionType = nil
    }

    public init(type: GraphQLSubscriptionType) {
        self.queryType = nil
        self.mutationType = nil
        self.subscriptionType = type
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelType: Model.Type) -> SingleDirectiveGraphQLDocument {
        decorate(document, modelSchema: modelType.schema)
    }

    public func decorate(_ document: SingleDirectiveGraphQLDocument,
                         modelSchema: ModelSchema) -> SingleDirectiveGraphQLDocument {

        if let queryType = queryType {
            return document.copy(name: modelSchema.graphQLName(queryType: queryType))
        }

        if let mutationType = mutationType {
            return document.copy(name: modelSchema.graphQLName(mutationType: mutationType))
        }

        if let subscriptionType = subscriptionType {
            return document.copy(name: modelSchema.graphQLName(subscriptionType: subscriptionType))
        }

        return document
    }
}
