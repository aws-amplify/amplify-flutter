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
    Map<String, dynamic> variables = model.toJson();

    return GraphQLRequestFactory.instance.buildQuery(
        model: model,
        variables: variables,
        modelType: model.getInstanceType(),
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.create);
  }

  @override
  GraphQLRequest<T> delete<T extends Model>(T model, {QueryPredicate? where}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  GraphQLRequest<T> deleteById<T extends Model>(
      ModelType<T> modelType, String id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  GraphQLRequest<T> update<T extends Model>(T model, {QueryPredicate? where}) {
    Map<String, dynamic> variables = model.toJson();

    return GraphQLRequestFactory.instance.buildQuery(
        model: model,
        variables: variables,
        modelType: model.getInstanceType(),
        requestType: GraphQLRequestType.mutation,
        requestOperation: GraphQLRequestOperation.update);
  }
}
