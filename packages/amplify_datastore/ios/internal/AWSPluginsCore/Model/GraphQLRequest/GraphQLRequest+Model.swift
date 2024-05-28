//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation

public typealias IncludedAssociations<M: Model> = (ModelPath<M>) -> [PropertyContainerPath]

// MARK: - Protocol

/// Protocol that represents the integration between `GraphQLRequest` and `Model`.
///
/// The methods defined here are used to build a valid `GraphQLRequest` from types
/// conforming to `Model`.
protocol ModelGraphQLRequestFactory {

    // MARK: Query

    /// Creates a `GraphQLRequest` that represents a query that expects multiple values as a result.
    /// The request will be created with the correct document based on the `ModelSchema` and
    /// variables based on the the predicate.
    ///
    /// - Parameters:
    ///   - modelType: the metatype of the model
    ///   - predicate: an optional predicate containing the criteria for the query
    ///   - includes: the closure to determine which associations should be included in the selection set
    ///   - limit: the maximum number of results to be retrieved. The result list may be less than the `limit`
    /// - Returns: a valid `GraphQLRequest` instance
    ///
    /// - seealso: `GraphQLQuery`, `GraphQLQueryType.list`
    static func list<M: Model>(_ modelType: M.Type,
                               where predicate: QueryPredicate?,
                               includes: IncludedAssociations<M>,
                               limit: Int?,
                               authMode: AWSAuthorizationType?) -> GraphQLRequest<List<M>>

    /// Creates a `GraphQLRequest` that represents a query that expects a single value as a result.
    /// The request will be created with the correct correct document based on the `ModelSchema` and
    /// variables based on given `id`.
    ///
    /// - Parameters:
    ///   - modelType: the metatype of the model
    ///   - id: the model identifier
    ///   - includes: the closure to determine which associations should be included in the selection set
    /// - Returns: a valid `GraphQLRequest` instance
    ///
    /// - seealso: `GraphQLQuery`, `GraphQLQueryType.get`
    static func get<M: Model>(_ modelType: M.Type,
                              byId id: String,
                              includes: IncludedAssociations<M>,
                              authMode: AWSAuthorizationType?) -> GraphQLRequest<M?>

    static func get<M: Model>(_ modelType: M.Type,
                              byIdentifier id: String,
                              includes: IncludedAssociations<M>,
                              authMode: AWSAuthorizationType?) -> GraphQLRequest<M?>
        where M: ModelIdentifiable, M.IdentifierFormat == ModelIdentifierFormat.Default

    static func get<M: Model>(_ modelType: M.Type,
                              byIdentifier id: ModelIdentifier<M, M.IdentifierFormat>,
                              includes: IncludedAssociations<M>,
                              authMode: AWSAuthorizationType?) -> GraphQLRequest<M?>
        where M: ModelIdentifiable

    // MARK: Mutation

    /// Creates a `GraphQLRequest` that represents a mutation of a given `type` for a `model` instance.
    ///
    /// - Parameters:
    ///   - model: the model instance populated with values
    ///   - modelSchema: the model schema of the model
    ///   - predicate: a predicate passed as the condition to apply the mutation
    ///   - type: the mutation type, either `.create`, `.update`, or `.delete`
    /// - Returns: a valid `GraphQLRequest` instance
    static func mutation<M: Model>(of model: M,
                                   modelSchema: ModelSchema,
                                   where predicate: QueryPredicate?,
                                   includes: IncludedAssociations<M>,
                                   type: GraphQLMutationType,
                                   authMode: AWSAuthorizationType?) -> GraphQLRequest<M>

    /// Creates a `GraphQLRequest` that represents a create mutation
    /// for a given `model` instance.
    ///
    /// - Parameters:
    ///   - model: the model instance populated with values
    /// - Returns: a valid `GraphQLRequest` instance
    /// - seealso: `GraphQLRequest.mutation(of:where:type:)`
    static func create<M: Model>(_ model: M, 
                                 includes: IncludedAssociations<M>,
                                 authMode: AWSAuthorizationType?) -> GraphQLRequest<M>

    /// Creates a `GraphQLRequest` that represents an update mutation
    /// for a given `model` instance.
    ///
    /// - Parameters:
    ///   - model: the model instance populated with values
    ///   - predicate: a predicate passed as the condition to apply the mutation
    /// - Returns: a valid `GraphQLRequest` instance
    /// - seealso: `GraphQLRequest.mutation(of:where:type:)`
    static func update<M: Model>(_ model: M,
                                 where predicate: QueryPredicate?,
                                 includes: IncludedAssociations<M>,
                                 authMode: AWSAuthorizationType?) -> GraphQLRequest<M>

    /// Creates a `GraphQLRequest` that represents a delete mutation
    /// for a given `model` instance.
    ///
    /// - Parameters:
    ///   - model: the model instance populated with values
    ///   - predicate: a predicate passed as the condition to apply the mutation
    /// - Returns: a valid `GraphQLRequest` instance
    /// - seealso: `GraphQLRequest.mutation(of:where:type:)`
    static func delete<M: Model>(_ model: M,
                                 where predicate: QueryPredicate?,
                                 includes: IncludedAssociations<M>,
                                 authMode: AWSAuthorizationType?) -> GraphQLRequest<M>

    // MARK: Subscription

    /// Creates a `GraphQLRequest` that represents a subscription of a given `type` for a `model` type.
    /// The request will be created with the correct document based on the `ModelSchema`.
    ///
    /// - Parameters:
    ///   - modelType: the metatype of the model
    ///   - type: the subscription type, either `.onCreate`, `.onUpdate` or `.onDelete`
    ///   - includes: the closure to determine which associations should be included in the selection set
    /// - Returns: a valid `GraphQLRequest` instance
    ///
    /// - seealso: `GraphQLSubscription`, `GraphQLSubscriptionType`
    static func subscription<M: Model>(of: M.Type,
                                       type: GraphQLSubscriptionType,
                                       includes: IncludedAssociations<M>,
                                       authMode: AWSAuthorizationType?) -> GraphQLRequest<M>
}

// MARK: - Extension

/// Extension that provides an integration layer between `Model`,
/// `GraphQLDocument` and `GraphQLRequest` by conforming to `ModelGraphQLRequestFactory`.
///
/// This is particularly useful when using the GraphQL API to interact
/// with static types that conform to the `Model` protocol.
extension GraphQLRequest: ModelGraphQLRequestFactory {
    private static func modelSchema<M: Model>(for model: M) -> ModelSchema {
        let modelType = ModelRegistry.modelType(from: model.modelName) ?? Swift.type(of: model)
        return modelType.schema
    }

    public static func create<M: Model>(
        _ model: M,
        includes: IncludedAssociations<M> = { _ in [] },
        authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
            return create(
                model,
                modelSchema: modelSchema(for: model),
                includes: includes,
                authMode: authMode)
    }

    public static func update<M: Model>(_ model: M,
                                        where predicate: QueryPredicate? = nil,
                                        includes: IncludedAssociations<M> = { _ in [] },
                                        authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
        return update(
            model,
            modelSchema: modelSchema(for: model),
            where: predicate,
            includes: includes,
            authMode: authMode)
    }

    public static func delete<M: Model>(_ model: M,
                                        where predicate: QueryPredicate? = nil,
                                        includes: IncludedAssociations<M> = { _ in [] },
                                        authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
        return delete(
            model,
            modelSchema: modelSchema(for: model),
            where: predicate, 
            includes: includes,
            authMode: authMode)
    }

    public static func create<M: Model>(_ model: M, 
                                        modelSchema: ModelSchema,
                                        includes: IncludedAssociations<M> = { _ in [] },
                                        authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
        return mutation(of: model, 
                        modelSchema: modelSchema,
                        includes: includes,
                        type: .create,
                        authMode: authMode)
    }

    public static func update<M: Model>(_ model: M,
                                        modelSchema: ModelSchema,
                                        where predicate: QueryPredicate? = nil,
                                        includes: IncludedAssociations<M> = { _ in [] },
                                        authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
        return mutation(of: model, 
                        modelSchema: modelSchema,
                        where: predicate,
                        includes: includes,
                        type: .update,
                        authMode: authMode)
    }

    public static func delete<M: Model>(_ model: M,
                                        modelSchema: ModelSchema,
                                        where predicate: QueryPredicate? = nil,
                                        includes: IncludedAssociations<M> = { _ in [] },
                                        authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
        return mutation(of: model, 
                        modelSchema: modelSchema,
                        where: predicate,
                        includes: includes,
                        type: .delete,
                        authMode: authMode)
    }

    public static func mutation<M: Model>(of model: M,
                                          where predicate: QueryPredicate? = nil,
                                          includes: IncludedAssociations<M> = { _ in [] },
                                          type: GraphQLMutationType,
                                          authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
        mutation(of: model, 
                 modelSchema: model.schema,
                 where: predicate,
                 includes: includes, 
                 type: type,
                 authMode: authMode)
    }

    public static func mutation<M: Model>(of model: M,
                                          modelSchema: ModelSchema,
                                          where predicate: QueryPredicate? = nil,
                                          includes: IncludedAssociations<M> = { _ in [] },
                                          type: GraphQLMutationType,
                                          authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelSchema: modelSchema,
                                                               operationType: .mutation)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: type))

        if let modelPath = M.rootPath as? ModelPath<M> {
            let associations = includes(modelPath)
            documentBuilder.add(decorator: IncludeAssociationDecorator(associations))
        }

        switch type {
        case .create:
            documentBuilder.add(decorator: ModelDecorator(model: model, mutationType: type))
        case .delete:
            documentBuilder.add(decorator: ModelIdDecorator(model: model,
                                                            schema: modelSchema))
            if let predicate = predicate {
                documentBuilder.add(decorator: FilterDecorator(filter: predicate.graphQLFilter(for: modelSchema)))
            }
        case .update:
            documentBuilder.add(decorator: ModelDecorator(model: model, mutationType: type))
            if let predicate = predicate {
                documentBuilder.add(decorator: FilterDecorator(filter: predicate.graphQLFilter(for: modelSchema)))
            }
        }

        let document = documentBuilder.build()
        return GraphQLRequest<M>(document: document.stringValue,
                                 variables: document.variables,
                                 responseType: M.self,
                                 decodePath: document.name,
                                 authMode: authMode)
    }

    public static func get<M: Model>(_ modelType: M.Type,
                                     byId id: String,
                                     includes: IncludedAssociations<M> = { _ in [] },
                                     authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M?> {
        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelSchema: modelType.schema,
                                                               operationType: .query)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: .get))

        if let modelPath = modelType.rootPath as? ModelPath<M> {
            let associations = includes(modelPath)
            documentBuilder.add(decorator: IncludeAssociationDecorator(associations))
        }

        documentBuilder.add(decorator: ModelIdDecorator(id: id))
        let document = documentBuilder.build()

        return GraphQLRequest<M?>(document: document.stringValue,
                                  variables: document.variables,
                                  responseType: M?.self,
                                  decodePath: document.name, 
                                  authMode: authMode)
    }

    public static func get<M: Model>(_ modelType: M.Type,
                                     byIdentifier id: String,
                                     includes: IncludedAssociations<M> = { _ in [] },
                                     authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M?>
    where M: ModelIdentifiable, M.IdentifierFormat == ModelIdentifierFormat.Default {
        return .get(modelType, byId: id, includes: includes, authMode: authMode)
    }

    public static func get<M: Model>(_ modelType: M.Type,
                                     byIdentifier id: ModelIdentifier<M, M.IdentifierFormat>,
                                     includes: IncludedAssociations<M> = { _ in [] },
                                     authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M?>
        where M: ModelIdentifiable {
            var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelSchema: modelType.schema,
                                                                   operationType: .query)
            documentBuilder.add(decorator: DirectiveNameDecorator(type: .get))

            if let modelPath = modelType.rootPath as? ModelPath<M> {
                let associations = includes(modelPath)
                documentBuilder.add(decorator: IncludeAssociationDecorator(associations))
            }
            documentBuilder.add(decorator: ModelIdDecorator(identifierFields: id.fields))
            let document = documentBuilder.build()

            return GraphQLRequest<M?>(document: document.stringValue,
                                      variables: document.variables,
                                      responseType: M?.self,
                                      decodePath: document.name, 
                                      authMode: authMode)
    }

    public static func list<M: Model>(_ modelType: M.Type,
                                      where predicate: QueryPredicate? = nil,
                                      includes: IncludedAssociations<M> = { _ in [] },
                                      limit: Int? = nil,
                                      authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<List<M>> {
        let primaryKeysOnly = (M.rootPath != nil) ? true : false
        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelSchema: modelType.schema,
                                                               operationType: .query)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: .list))

        if let modelPath = modelType.rootPath as? ModelPath<M> {
            let associations = includes(modelPath)
            documentBuilder.add(decorator: IncludeAssociationDecorator(associations))
        }

        if let predicate = predicate {
            documentBuilder.add(decorator: FilterDecorator(filter: predicate.graphQLFilter(for: modelType.schema)))
        }

        documentBuilder.add(decorator: PaginationDecorator(limit: limit))
        let document = documentBuilder.build()

        return GraphQLRequest<List<M>>(document: document.stringValue,
                                       variables: document.variables,
                                       responseType: List<M>.self,
                                       decodePath: document.name,
                                       authMode: authMode)
    }

    public static func subscription<M: Model>(of modelType: M.Type,
                                              type: GraphQLSubscriptionType,
                                              includes: IncludedAssociations<M> = { _ in [] },
                                              authMode: AWSAuthorizationType? = nil) -> GraphQLRequest<M> {
        var documentBuilder = ModelBasedGraphQLDocumentBuilder(modelSchema: modelType.schema,
                                                               operationType: .subscription)
        documentBuilder.add(decorator: DirectiveNameDecorator(type: type))

        if let modelPath = modelType.rootPath as? ModelPath<M> {
            let associations = includes(modelPath)
            documentBuilder.add(decorator: IncludeAssociationDecorator(associations))
        }

        let document = documentBuilder.build()

        return GraphQLRequest<M>(document: document.stringValue,
                                 variables: document.variables,
                                 responseType: modelType,
                                 decodePath: document.name,
                                 authMode: authMode)
    }
}
