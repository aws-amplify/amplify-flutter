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
  GraphQLRequest<T> create<T extends Model>(T model) {
    final input =
        GraphQLRequestFactory.instance.buildInputVariableForMutations(model);
    // Does not use buildVariablesForMutationRequest because creations don't have conditions.
    final variables = {'input': input};

    return GraphQLRequestFactory.instance.buildRequest(
        model: model,
        variables: variables,
        modelType: model.getInstanceType(),
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.create);
  }

  @override
  GraphQLRequest<T> delete<T extends Model>(T model, {QueryPredicate? where}) {
    return deleteById(model.getInstanceType() as ModelType<T>, model.getId(),
        where: where);
  }

  @override
  GraphQLRequest<T> deleteById<T extends Model>(
      ModelType<T> modelType, String id,
      {QueryPredicate? where}) {
    final condition = GraphQLRequestFactory.instance
        .queryPredicateToGraphQLFilter(where, modelType);
    final input = {
      idFieldName: id
    }; // Simpler input than other mutations so don't use helper.
    final variables = GraphQLRequestFactory.instance
        .buildVariablesForMutationRequest(input: input, condition: condition);

    return GraphQLRequestFactory.instance.buildRequest(
        variables: variables,
        modelType: modelType,
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.delete);
  }

  @override
  GraphQLRequest<T> update<T extends Model>(T model, {QueryPredicate? where}) {
    final condition = GraphQLRequestFactory.instance
        .queryPredicateToGraphQLFilter(where, model.getInstanceType());
    final input =
        GraphQLRequestFactory.instance.buildInputVariableForMutations(model);

    final variables = GraphQLRequestFactory.instance
        .buildVariablesForMutationRequest(input: input, condition: condition);

    return GraphQLRequestFactory.instance.buildRequest(
        model: model,
        variables: variables,
        modelType: model.getInstanceType(),
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.update);
  }
}
