import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/paginated_result_impl.dart';
import 'package:amplify_core/amplify_core.dart';

/// An implementation of [PaginatedModelType] used as the [modelType] for decoding list query requests.
class PaginatedModelTypeImpl<T extends Model> extends PaginatedModelType<T> {
  /// Pass a [modelType] to create the [PaginatedModelType] used to decode list requests
  /// ```dart
  /// String graphQLDocument = '''query GetBlogsCustomDecoder {
  ///   listBlogs {
  ///     items {
  ///       id
  ///       name
  ///       createdAt
  ///     }
  ///   }
  /// }''';
  /// final request = GraphQLRequest<PaginatedResult<Blog>>(
  ///     document: graphQLDocument,
  ///     modelType: const PaginatedModelTypeImpl(Blog.classType),
  ///     decodePath: 'listBlogs');
  /// ```
  const PaginatedModelTypeImpl(ModelType<T> modelType) : super(modelType);

  @override
  PaginatedResult<T> fromJson(Map<String, dynamic> jsonData,
      {Map<String, dynamic>? filter, int? limit}) {
    final itemsJson = jsonData['items'] as List?;

    if (itemsJson == null || itemsJson.isEmpty) {
      return PaginatedResultImpl<T>([], limit, null, filter);
    }

    final items = itemsJson
        .cast<Map?>()
        .map(
          // ignore: implicit_dynamic_method
          (e) => e != null ? modelType.fromJson(e.cast()) : null,
        )
        .toList();

    return PaginatedResultImpl<T>(
        items, limit, jsonData['nextToken'] as String?, filter);
  }

  @override
  String modelName() {
    return modelType.modelName();
  }
}
