import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class MockModelType extends ModelType<Model> {
  const MockModelType();

  @override
  MockModel fromJson(Map<String, dynamic> jsonData) {
    return MockModel(jsonData['id']);
  }
}

class MockModel extends Model {
  final String id;

  const MockModel(this.id);

  @override
  String getId() => id;

  @override
  ModelType<Model> getInstanceType() => const MockModelType();

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
      };
}

class MockModelProvider extends ModelProviderInterface {
  @override
  String get version => '12345';

  @override
  List<ModelSchema> get modelSchemas => [
        ModelSchema(
          name: 'MockModel',
          pluralName: 'MockModels',
          fields: {
            'id': ModelFieldDefinition.id().build(),
          },
        )
      ];

  @override
  ModelType<Model> getModelTypeByModelName(String modelName) {
    return const MockModelType();
  }
}
