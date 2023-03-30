// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/models/auth_rule.dart';
import 'package:amplify_core/src/types/models/model_field.dart';
import 'package:amplify_core/src/types/models/model_field_definition.dart';
import 'package:amplify_core/src/types/models/model_index.dart';
import 'package:amplify_core/src/types/models/model_schema.dart';

class ModelSchemaDefinition {
  ModelSchemaDefinition() {
    fields = {};
  }

  late String name;
  String? pluralName;
  List<AuthRule>? authRules;
  late Map<String, ModelField> fields;
  List<ModelIndex>? indexes;

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
