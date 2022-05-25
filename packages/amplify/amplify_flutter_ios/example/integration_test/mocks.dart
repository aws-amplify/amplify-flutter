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

import 'package:amplify_core/amplify_core.dart';

class MockModelType extends ModelType<Model> {
  const MockModelType();

  @override
  MockModel fromJson(Map<String, dynamic> jsonData) {
    return MockModel(jsonData['id'] as String);
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
