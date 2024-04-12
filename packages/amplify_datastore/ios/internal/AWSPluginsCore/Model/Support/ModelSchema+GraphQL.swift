//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

/// Extension that adds GraphQL specific utilities to `ModelSchema`.
extension ModelSchema {

    /// The GraphQL directive name translated from a GraphQL query operation and model schema data
    func graphQLName(queryType: GraphQLQueryType) -> String {
        let graphQLName: String
        switch queryType {
        case .list:
            if let listPluralName = listPluralName {
                graphQLName = queryType.rawValue + listPluralName
            } else if let pluralName = pluralName {
                graphQLName = queryType.rawValue + pluralName
            } else {
                graphQLName = (queryType.rawValue + name).pluralize()
            }
        case .sync:
            if let syncPluralName = syncPluralName {
                graphQLName = queryType.rawValue + syncPluralName
            } else if let pluralName = pluralName {
                graphQLName = queryType.rawValue + pluralName
            } else {
                graphQLName = (queryType.rawValue + name).pluralize()
            }
        case .get:
            graphQLName = queryType.rawValue + name
        }

        return graphQLName
    }

    /// The GraphQL directive name translated from a GraphQL subsription operation and model schema name
    func graphQLName(subscriptionType: GraphQLSubscriptionType) -> String {
        subscriptionType.rawValue + name
    }

    /// The GraphQL directive name translated from a GraphQL mutation operation and model schema name
    func graphQLName(mutationType: GraphQLMutationType) -> String {
        mutationType.rawValue + name
    }

    /// The list of fields formatted for GraphQL usage.
    var graphQLFields: [ModelField] {
        sortedFields.filter { field in
            !field.hasAssociation || field._isBelongsToOrHasOne
        }
    }
}
