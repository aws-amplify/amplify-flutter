import 'package:amplify_datastore_example/codegen/Blog.dart';
import 'package:amplify_datastore_example/codegen/Comment.dart';
import 'package:amplify_datastore_example/codegen/Post.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "testVersion0";

  @override
  List<ModelSchema> modelSchemas = [Blog.schema, Comment.schema, Post.schema];

  static final ModelProvider _instance = ModelProvider();
  static ModelProvider get instance => _instance;
}
