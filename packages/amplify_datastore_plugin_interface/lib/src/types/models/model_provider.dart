import 'model_schema.dart';

abstract class ModelProviderInterface {
  String version;

  List<ModelSchema> modelSchemas;
}
