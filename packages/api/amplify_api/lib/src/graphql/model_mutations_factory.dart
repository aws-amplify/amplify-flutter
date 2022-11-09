import 'package:amplify_api/src/graphql/graphql_request_factory.dart';
import 'package:amplify_core/amplify_core.dart';

// ignore_for_file: public_member_api_docs

class ModelMutationsFactory extends ModelMutationsInterface {
  // Singleton methods/properties
  // usage: ModelQueriesFactory.instance;
  ModelMutationsFactory._();

  static final ModelMutationsFactory _instance = ModelMutationsFactory._();

  static ModelMutationsFactory get instance => _instance;

  @override
  GraphQLRequest<M> create<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>(M model) {
    final input =
        GraphQLRequestFactory.instance.buildInputVariableForMutations(model);
    // Does not use buildVariablesForMutationRequest because creations don't have conditions.
    final variables = {'input': input};

    return GraphQLRequestFactory.instance
        .buildRequest<ModelIdentifier, M, PartialModel<ModelIdentifier, M>, M>(
      model: model,
      variables: variables,
      modelType: model.modelType,
      requestType: GraphQLRequestType.mutation,
      requestOperation: GraphQLRequestOperation.create,
    );
  }

  @override
  GraphQLRequest<M> delete<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>(
    M model, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    return deleteById(
      model.modelType,
      model.modelIdentifier,
      where: where,
    );
  }

  @override
  GraphQLRequest<M> deleteById<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType,
    ModelIdentifier id, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    final condition = GraphQLRequestFactory.instance
        .queryPredicateToGraphQLFilter(where, modelType);
    final input = {
      idFieldName: id
    }; // Simpler input than other mutations so don't use helper.
    final variables = GraphQLRequestFactory.instance
        .buildVariablesForMutationRequest(input: input, condition: condition);

    return GraphQLRequestFactory.instance
        .buildRequest<ModelIdentifier, M, P, M>(
      variables: variables,
      modelType: modelType,
      requestType: GraphQLRequestType.mutation,
      requestOperation: GraphQLRequestOperation.delete,
    );
  }

  @override
  GraphQLRequest<M> update<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>(
    M model, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    final condition =
        GraphQLRequestFactory.instance.queryPredicateToGraphQLFilter(
      where,
      model.modelType,
    );
    final input =
        GraphQLRequestFactory.instance.buildInputVariableForMutations(model);

    final variables = GraphQLRequestFactory.instance
        .buildVariablesForMutationRequest(input: input, condition: condition);

    return GraphQLRequestFactory.instance.buildRequest(
        model: model,
        variables: variables,
        modelType: model.modelType,
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.update);
  }
}
