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

import 'auth_rule.dart';
import 'model_field.dart';
import 'model_field_definition.dart';
import 'model_index.dart';
import 'model_schema.dart';

class ModelSchemaDefinition {
  late String name;
  String? pluralName;
  List<AuthRule>? authRules;
  List<ModelIndex>? indexes;
  ModelIndex? primaryKey;
  late Map<String, ModelField> fields;

  ModelSchemaDefinition() {
    fields = Map<String, ModelField>();
  }

  void addField(ModelFieldDefinition fieldDefinition) {
    fields[fieldDefinition.name] = fieldDefinition.build();
  }

  ModelSchema build() {
    return ModelSchema(
      name: name,
      pluralName: pluralName,
      authRules: authRules,
      fields: fields,
      indexes: indexes,
      primaryKey: primaryKey,
    );
  }
}
