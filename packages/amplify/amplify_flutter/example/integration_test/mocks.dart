// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';

class MockModelType extends ModelType<Model> {
  const MockModelType();

  @override
  MockModel fromJson(Map<String, dynamic> jsonData) {
    return MockModel(jsonData['id'] as String);
  }
}

class MockModel extends Model {
  const MockModel(this.id);

  final String id;

  @override
  String getId() => id;

  @override
  ModelType<Model> getInstanceType() => const MockModelType();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
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
  List<ModelSchema> get customTypeSchemas => const [];

  @override
  ModelType<Model> getModelTypeByModelName(String modelName) {
    return const MockModelType();
  }
}
