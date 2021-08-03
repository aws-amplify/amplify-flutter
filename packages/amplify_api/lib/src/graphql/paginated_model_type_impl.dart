import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/paginated_result_impl.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class PaginatedModelTypeImpl<T extends Model> extends PaginatedModelType<T> {
  const PaginatedModelTypeImpl(ModelType<T> modelType) : super(modelType);

  @override
  PaginatedResultImpl<T> fromJson(Map<String, dynamic> jsonData) {
    final itemsJson = jsonData['items'] as List?;

    if (itemsJson == null || itemsJson.isEmpty) {
      return PaginatedResultImpl<T>([], null);
    }

    final items = itemsJson
        .cast<Map>()
        .map(
          (e) => modelType.fromJson(e.cast()),
        )
        .toList();

    return PaginatedResultImpl<T>(items, jsonData['nextToken'] as String?);
  }

  @override
  String modelName() {
    return modelType.modelName();
  }
}
