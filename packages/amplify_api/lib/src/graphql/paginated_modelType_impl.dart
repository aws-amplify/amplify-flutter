import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/paginated_result_impl.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class PaginatedModelTypeImpl<T extends Model> extends PaginatedModelType<T> {
  final ModelType<T> modelType;

  PaginatedModelTypeImpl(this.modelType) : super(modelType);

  @override
  PaginatedResultImpl<T> fromJson(Map<String, dynamic> jsonData) {
    List<dynamic>? dataList = List<dynamic>.from(jsonData['items']);

    List<T> decodedData = dataList.map((e) => modelType.fromJson(e)).toList();

    return PaginatedResultImpl<T>(decodedData, jsonData['nextToken']);
  }

  @override
  String modelName() {
    return modelType.modelName();
  }
}
