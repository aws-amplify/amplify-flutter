import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class ModelQueries extends ModelQueriesInterface {
  
  @override
  static GraphQLRequest<T> get<T extends Model>(
    ModelType modelType, String id) {
      throw UnimplementedError("get() has not been implemented.");
    }
}