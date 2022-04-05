/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class MockModelType extends ModelType<Model> {
  const MockModelType();

  @override
  MockModel fromJson(Map<String, dynamic> jsonData) {
    return MockModel(jsonData['id']);
  }
}

class _MockModelIdentifier implements ModelIdentifier {
  final List<Map<String, dynamic>> emptyList = const [];
  final Map<String, dynamic> emptyMap = const <String, dynamic>{};
  final String emptyString = '';

  const _MockModelIdentifier();

  @override
  List<Map<String, dynamic>> serializeAsList() => emptyList;

  @override
  Map<String, dynamic> serializeAsMap() => emptyMap;

  @override
  String serializeAsString() => emptyString;
}

class MockModel extends Model {
  final String id;

  const MockModel(this.id);

  @override
  String getId() => id;

  @override
  ModelIdentifier get modelIdentifier {
    return const _MockModelIdentifier();
  }

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
