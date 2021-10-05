import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/graphql_request_factory.dart';
import 'package:amplify_datastore_plugin_interface/src/types/query/query_field.dart';
import 'package:amplify_datastore_plugin_interface/src/types/models/model.dart';

class ModelMutationsFactory extends ModelMutationsInterface {
  // Singleton methods/properties
  // usage: ModelQueriesFactory.instance;
  ModelMutationsFactory._();

  static final ModelMutationsFactory _instance = ModelMutationsFactory._();

  static ModelMutationsFactory get instance => _instance;

  @override
  GraphQLRequest<T> create<T extends Model>(T model) {
    // ignore: implicit_dynamic_map_literal
    Map<String, dynamic> variables = {"input": model.toJson()};

    return GraphQLRequestFactory.instance.buildRequest(
        model: model,
        variables: variables,
        modelType: model.getInstanceType(),
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.create);
  }

  @override
  GraphQLRequest<T> delete<T extends Model>(T model, {QueryPredicate? where}) {
    return deleteById(model.getInstanceType() as ModelType<T>, model.getId());
  }

  @override
  GraphQLRequest<T> deleteById<T extends Model>(
      ModelType<T> modelType, String id) {
    Map<String, Map<String, String>> variables = {
      "input": {"id": id}
    };

    return GraphQLRequestFactory.instance.buildRequest(
        variables: variables,
        modelType: modelType,
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.delete);
  }

  @override
  GraphQLRequest<T> update<T extends Model>(T model, {QueryPredicate? where}) {
    // ignore: implicit_dynamic_map_literal
    Map<String, dynamic> variables = {"input": model.toJson()};

    return GraphQLRequestFactory.instance.buildRequest(
        model: model,
        variables: variables,
        modelType: model.getInstanceType(),
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.update);
  }
}
