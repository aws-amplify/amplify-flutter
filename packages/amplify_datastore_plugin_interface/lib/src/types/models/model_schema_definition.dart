import 'auth_rule.dart';
import 'model_field.dart';
import 'model_field_definition.dart';
import 'model_schema.dart';

class ModelSchemaDefinition {
  String name;
  String pluralName;
  List<AuthRule> authRules;
  Map<String, ModelField> fields;

  ModelSchemaDefinition({
    this.name,
    this.pluralName,
    this.authRules = const [],
  }) {
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
    );
  }
}
