//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

public typealias SyncQueryResult = PaginatedList<AnyModel>
public typealias MutationSyncResult = MutationSync<AnyModel>

/// TODO document this and change it to work in a way that these functions are not
/// publicly exposed to developers
protocol ModelSyncGraphQLRequestFactory {

    static func query(modelName: String,
                      byId id: String,
                      authType: AWSAuthorizationType?) -> GraphQLRequest<MutationSyncResult?>

    static func createMutation(of model: Model,
                               modelSchema: ModelSchema,
                               version: Int?,
                               authType: AWSAuthorizationType?) -> GraphQLRequest<MutationSyncResult>

    static func updateMutation(of model: Model,
                               modelSchema: ModelSchema,
                               where filter: GraphQLFilter?,
                               version: Int?,
                               authType: AWSAuthorizationType?) -> GraphQLRequest<MutationSyncResult>

    static func deleteMutation(of model: Model,
                               modelSchema: ModelSchema,
                               where filter: GraphQLFilter?,
                               version: Int?,
                               authType: AWSAuthorizationType?) -> GraphQLRequest<MutationSyncResult>

    static func subscription(to modelSchema: ModelSchema,
                             subscriptionType: GraphQLSubscriptionType,
                             authType: AWSAuthorizationType?) -> GraphQLRequest<MutationSyncResult>

    static func subscription(to modelSchema: ModelSchema,
                             subscriptionType: GraphQLSubscriptionType,
                             claims: IdentityClaimsDictionary,
                             authType: AWSAuthorizationType?) -> GraphQLRequest<MutationSyncResult>

    static func syncQuery(modelSchema: ModelSchema,
                          where predicate: QueryPredicate?,
                          limit: Int?,
                          nextToken: String?,
                          lastSync: Int64?,
                          authType: AWSAuthorizationType?) -> GraphQLRequest<SyncQueryResult>

}

/// Extension methods that are useful for `DataStore`. The methods consist of conflict resolution related fields such
/// as `version` and `lastSync` and returns a model that has been erased to `AnyModel`.
extension GraphQLRequest: ModelSyncGraphQLRequestFactory {

    public static func query(modelName: String,
                             byId id: String,
                             authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult?> {
        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelName: modelName,
                                                               operationType: .query,
                                                               primaryKeysOnly: false)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: .get))
        documentBuilder.add(decorator: ModelIdDecorator(id: id))
        documentBuilder.add(decorator: ConflictResolutionDecorator(graphQLType: .query))
        documentBuilder.add(decorator: AuthRuleDecorator(.query, authType: authType))
        let document = documentBuilder.build()

        let awsPluginOptions = AWSAPIPluginDataStoreOptions(authType: authType, modelName: modelName)
        let requestOptions = GraphQLRequest<MutationSyncResult?>.Options(pluginOptions: awsPluginOptions)

        return GraphQLRequest<MutationSyncResult?>(document: document.stringValue,
                                                   variables: document.variables,
                                                   responseType: MutationSyncResult?.self,
                                                   decodePath: document.name,
                                                   options: requestOptions)
    }

    public static func createMutation(of model: Model,
                                      version: Int? = nil,
                                      authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {
        createMutation(of: model, modelSchema: model.schema, version: version, authType: authType)
    }

    public static func updateMutation(of model: Model,
                                      where filter: GraphQLFilter? = nil,
                                      version: Int? = nil,
                                      authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {
        updateMutation(of: model, modelSchema: model.schema, where: filter, version: version, authType: authType)
    }

    public static func subscription(to modelType: Model.Type,
                                    subscriptionType: GraphQLSubscriptionType,
                                    authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {
        subscription(to: modelType.schema, subscriptionType: subscriptionType, authType: authType)
    }

    public static func subscription(to modelType: Model.Type,
                                    subscriptionType: GraphQLSubscriptionType,
                                    claims: IdentityClaimsDictionary,
                                    authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {
        subscription(to: modelType.schema, subscriptionType: subscriptionType, claims: claims, authType: authType)
    }

    public static func syncQuery(modelType: Model.Type,
                                 where predicate: QueryPredicate? = nil,
                                 limit: Int? = nil,
                                 nextToken: String? = nil,
                                 lastSync: Int64? = nil,
                                 authType: AWSAuthorizationType? = nil) -> GraphQLRequest<SyncQueryResult> {
        syncQuery(modelSchema: modelType.schema,
                         where: predicate,
                         limit: limit,
                         nextToken: nextToken,
                         lastSync: lastSync,
                         authType: authType)
    }

    public static func createMutation(of model: Model,
                                      modelSchema: ModelSchema,
                                      version: Int? = nil,
                                      authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {
        createOrUpdateMutation(of: model, modelSchema: modelSchema, type: .create, version: version, authType: authType)
    }

    public static func updateMutation(of model: Model,
                                      modelSchema: ModelSchema,
                                      where filter: GraphQLFilter? = nil,
                                      version: Int? = nil,
                                      authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {
        createOrUpdateMutation(of: model,
                               modelSchema: modelSchema,
                               where: filter,
                               type: .update,
                               version: version,
                               authType: authType)
    }

    public static func deleteMutation(of model: Model,
                                      modelSchema: ModelSchema,
                                      where filter: GraphQLFilter? = nil,
                                      version: Int? = nil,
                                      authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {
        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelName: modelSchema.name,
                                                               operationType: .mutation,
                                                               primaryKeysOnly: false)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: .delete))
        documentBuilder.add(decorator: ModelIdDecorator(model: model,
                                                        schema: modelSchema))
        if let filter = filter {
            documentBuilder.add(decorator: FilterDecorator(filter: filter))
        }
        documentBuilder.add(decorator: ConflictResolutionDecorator(version: version, graphQLType: .mutation, primaryKeysOnly: false))
        documentBuilder.add(decorator: AuthRuleDecorator(.mutation, authType: authType))
        let document = documentBuilder.build()

        let awsPluginOptions = AWSAPIPluginDataStoreOptions(authType: authType, modelName: modelSchema.name)
        let requestOptions = GraphQLRequest<MutationSyncResult>.Options(pluginOptions: awsPluginOptions)

        return GraphQLRequest<MutationSyncResult>(document: document.stringValue,
                                                  variables: document.variables,
                                                  responseType: MutationSyncResult.self,
                                                  decodePath: document.name,
                                                  options: requestOptions)
    }

    public static func subscription(to modelSchema: ModelSchema,
                                    subscriptionType: GraphQLSubscriptionType,
                                    authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {

        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelSchema: modelSchema,
                                                               operationType: .subscription,
                                                               primaryKeysOnly: true)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: subscriptionType))
        documentBuilder.add(decorator: ConflictResolutionDecorator(graphQLType: .subscription, primaryKeysOnly: true))
        documentBuilder.add(decorator: AuthRuleDecorator(.subscription(subscriptionType, nil), authType: authType))
        let document = documentBuilder.build()

        let awsPluginOptions = AWSAPIPluginDataStoreOptions(authType: authType, modelName: modelSchema.name)
        let requestOptions = GraphQLRequest<MutationSyncResult>.Options(pluginOptions: awsPluginOptions)
        return GraphQLRequest<MutationSyncResult>(document: document.stringValue,
                                                  variables: document.variables,
                                                  responseType: MutationSyncResult.self,
                                                  decodePath: document.name,
                                                  options: requestOptions)
    }

    public static func subscription(to modelSchema: ModelSchema,
                                    subscriptionType: GraphQLSubscriptionType,
                                    claims: IdentityClaimsDictionary,
                                    authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {

        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelSchema: modelSchema,
                                                               operationType: .subscription,
                                                               primaryKeysOnly: true)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: subscriptionType))
        documentBuilder.add(decorator: ConflictResolutionDecorator(graphQLType: .subscription, primaryKeysOnly: true))
        documentBuilder.add(decorator: AuthRuleDecorator(.subscription(subscriptionType, claims), authType: authType))
        let document = documentBuilder.build()

        let awsPluginOptions = AWSAPIPluginDataStoreOptions(
            authType: authType,
            modelName: modelSchema.name
        )
        let requestOptions = GraphQLRequest<MutationSyncResult>.Options(pluginOptions: awsPluginOptions)
        return GraphQLRequest<MutationSyncResult>(document: document.stringValue,
                                                  variables: document.variables,
                                                  responseType: MutationSyncResult.self,
                                                  decodePath: document.name,
                                                  options: requestOptions)
    }

    public static func syncQuery(modelSchema: ModelSchema,
                                 where predicate: QueryPredicate? = nil,
                                 limit: Int? = nil,
                                 nextToken: String? = nil,
                                 lastSync: Int64? = nil,
                                 authType: AWSAuthorizationType? = nil) -> GraphQLRequest<SyncQueryResult> {
        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelSchema: modelSchema,
                                                               operationType: .query,
                                                               primaryKeysOnly: true)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: .sync))
        if let predicate = optimizePredicate(predicate) {
            documentBuilder.add(decorator: FilterDecorator(filter: predicate.graphQLFilter(for: modelSchema)))
        }
        documentBuilder.add(decorator: PaginationDecorator(limit: limit, nextToken: nextToken))
        documentBuilder.add(decorator: ConflictResolutionDecorator(lastSync: lastSync, graphQLType: .query, primaryKeysOnly: true))
        documentBuilder.add(decorator: AuthRuleDecorator(.query, authType: authType))
        let document = documentBuilder.build()

        let awsPluginOptions = AWSAPIPluginDataStoreOptions(authType: authType, modelName: modelSchema.name)
        let requestOptions = GraphQLRequest<SyncQueryResult>.Options(pluginOptions: awsPluginOptions)

        return GraphQLRequest<SyncQueryResult>(document: document.stringValue,
                                               variables: document.variables,
                                               responseType: SyncQueryResult.self,
                                               decodePath: document.name,
                                               options: requestOptions)
    }

    // MARK: Private methods

    private static func createOrUpdateMutation(of model: Model,
                                               modelSchema: ModelSchema,
                                               where filter: GraphQLFilter? = nil,
                                               type: GraphQLMutationType,
                                               version: Int? = nil,
                                               authType: AWSAuthorizationType? = nil) -> GraphQLRequest<MutationSyncResult> {
        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelName: modelSchema.name,
                                                               operationType: .mutation,
                                                               primaryKeysOnly: false)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: type))
        documentBuilder.add(decorator: ModelDecorator(model: model, mutationType: type))
        if let filter = filter {
            documentBuilder.add(decorator: FilterDecorator(filter: filter))
        }
        documentBuilder.add(decorator: ConflictResolutionDecorator(version: version, graphQLType: .mutation, primaryKeysOnly: false))
        documentBuilder.add(decorator: AuthRuleDecorator(.mutation, authType: authType))
        let document = documentBuilder.build()

        let awsPluginOptions = AWSAPIPluginDataStoreOptions(authType: authType, modelName: modelSchema.name)
        let requestOptions = GraphQLRequest<MutationSyncResult>.Options(pluginOptions: awsPluginOptions)

        return GraphQLRequest<MutationSyncResult>(document: document.stringValue,
                                                  variables: document.variables,
                                                  responseType: MutationSyncResult.self,
                                                  decodePath: document.name,
                                                  options: requestOptions)
    }

    /// This function tries to optimize provided `QueryPredicate` to perform a DynamoDB query instead of a scan.
    /// Wrapping the predicate with a group AND enables AppSync to perform the optimization.
    /// If the provided predicate is already a QueryPredicateGroup, this is not needed.
    /// If the provided group is of type AND, the optimization will occur.
    /// If the top level group is OR or NOT, the optimization is not possible anyway.
    private static func optimizePredicate(_ predicate: QueryPredicate?) -> QueryPredicate? {
        guard let predicate = predicate else {
            return nil
        }
        if predicate as? QueryPredicateGroup != nil {
            return predicate
        } else if let predicate = predicate as? QueryPredicateConstant,
                  predicate == .all {
            return predicate
        }
        return QueryPredicateGroup(type: .and, predicates: [predicate])
    }
}
