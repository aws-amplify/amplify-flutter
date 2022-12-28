// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'auth_rule.dart';
import 'model_field.dart';
import 'model_field_definition.dart';
import 'model_index.dart';
import 'model_schema.dart';

class ModelSchemaDefinition {
  late String name;
  String? pluralName;
  List<AuthRule>? authRules;
  late Map<String, ModelField> fields;
  List<ModelIndex>? indexes;

  ModelSchemaDefinition() {
    fields = {};
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
    );
  }
}
