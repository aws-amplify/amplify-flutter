// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_codegen/src/generator/types.dart';
import 'package:amplify_codegen/src/helpers/language.dart';
import 'package:amplify_codegen/src/helpers/model.dart';
import 'package:amplify_codegen/src/helpers/node.dart';
import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:gql/ast.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Returns the query field name for [fieldName].
String queryFieldName(String fieldName) => ('$fieldName\$').camelCase;

// Cache for type references.
final _typeReferences = Expando<Reference>();

/// Helpers for [ModelField].
extension ModelFieldHelpers on ModelField {
  /// The wire name as it shows in JSON.
  String get wireName => name;

  /// The re-cased Dart name (camelCase).
  String get dartName {
    final name = this.name.camelCase;
    if (hardReservedWords.contains(name)) {
      return '${name}_';
    }
    return name;
  }

  /// The code_builder reference for `this`.
  Reference typeReference([ModelHierarchyType? hierarchyType]) {
    final type = this.type;
    final cached = _typeReferences[type];
    if (cached != null) {
      return cached;
    }
    Reference generatedTypeReference(
      SchemaType type,
      ModelHierarchyType hierarchyType,
    ) {
      final String typeName;
      switch (hierarchyType) {
        case ModelHierarchyType.model:
          typeName = type.name.pascalCase;
          break;
        case ModelHierarchyType.partial:
          typeName = 'Partial${type.name.pascalCase}';
          break;
        case ModelHierarchyType.remote:
          typeName = 'Remote${type.name.pascalCase}';
          break;
      }
      return Reference(
        typeName,
        '${type.name.snakeCase}.dart',
      ).withRequired(type.isRequired);
    }

    if (type is ListType) {
      final elementType = type.elementType;
      if (elementType is ScalarType) {
        return _typeReferences[type] = DartTypes.core
            .list(elementType.reference)
            .withRequired(type.isRequired);
      } else {
        return _typeReferences[type] = DartTypes.amplifyCore
            .asyncModelCollection(
              refer('${type.name}Identifier'),
              generatedTypeReference(elementType, ModelHierarchyType.model),
              generatedTypeReference(elementType, ModelHierarchyType.partial),
              generatedTypeReference(elementType, hierarchyType!),
            )
            .withRequired(type.isRequired);
      }
    }
    if (type is ScalarType) {
      return _typeReferences[type] = type.reference;
    }
    if (type is EnumType) {
      return _typeReferences[type] = type.reference;
    }
    if (type is NonModelType) {
      return _typeReferences[type] = type.reference;
    }
    type as ModelType;
    return DartTypes.amplifyCore.asyncModel(
      refer('${type.name}Identifier'),
      generatedTypeReference(type, ModelHierarchyType.model),
      generatedTypeReference(type, ModelHierarchyType.partial),
      generatedTypeReference(type, hierarchyType!),
    );
  }

  /// Returns the expression needed to decode the Dart type from [json].
  Expression fromJsonExp(
    Expression json, {
    required SchemaType fieldType,
    required Expression Function() orElse,
    ModelHierarchyType? hierarchyType,
    int depth = 0,
  }) {
    final isRequired = fieldType.isRequired;
    var builder = (Expression json) {
      final exp = depth == 0 ? json.asA(fieldType.wireType) : json;
      return depth == 0
          ? json
              .equalTo(literalNull)
              .conditional(isRequired ? orElse() : literalNull, exp)
          : (isRequired ? json.ifNullThen(orElse()) : json);
    };
    if (fieldType is ScalarType) {
      switch (fieldType.value) {
        case AppSyncScalar.awsDate:
        case AppSyncScalar.awsDateTime:
        case AppSyncScalar.awsTime:
          builder = (json) {
            final val = depth == 0 ? json.asA(DartTypes.core.string) : json;
            final exp =
                fieldType.reference.nonNull.property('fromString').call([val]);
            return json
                .equalTo(literalNull)
                .conditional(isRequired ? orElse() : literalNull, exp);
          };
          break;
        case AppSyncScalar.awsTimestamp:
          builder = (json) {
            final val = depth == 0 ? json.asA(DartTypes.core.int) : json;
            final exp =
                fieldType.reference.nonNull.property('fromSeconds').call([val]);
            return json
                .equalTo(literalNull)
                .conditional(isRequired ? orElse() : literalNull, exp);
          };

          break;
        case AppSyncScalar.awsJson:
          if (!isRequired) {
            // Already an `Object?` coming off the JSON map.
            builder = (json) => json;
          }
          break;
        case AppSyncScalar.awsUrl:
          builder = (json) {
            final val = depth == 0 ? json.asA(DartTypes.core.string) : json;
            final exp =
                fieldType.reference.nonNull.property('parse').call([val]);
            return json
                .equalTo(literalNull)
                .conditional(isRequired ? orElse() : literalNull, exp);
          };
          break;
        case AppSyncScalar.awsIpAddress:
        case AppSyncScalar.awsEmail:
        case AppSyncScalar.awsPhone:
        case AppSyncScalar.boolean:
        case AppSyncScalar.float:
        case AppSyncScalar.id:
        case AppSyncScalar.int_:
        case AppSyncScalar.string:
          break;
      }
    } else if (fieldType is EnumType) {
      builder = (json) {
        // Use the generated `fromJson` handler for deserializing the enum.
        final val = depth == 0 ? json.asA(DartTypes.core.string) : json;
        final exp =
            fieldType.reference.nonNull.property('fromJson').call([val]);
        return json
            .equalTo(literalNull)
            .conditional(isRequired ? orElse() : literalNull, exp);
      };
    } else if (fieldType is NonModelType) {
      builder = (json) {
        // Use the generated `fromJson` handler for deserializing the non-model.
        final val = depth == 0 ? json.asA(DartTypes.core.json) : json;
        final exp =
            fieldType.reference.nonNull.property('fromJson').call([val]);
        return json
            .equalTo(literalNull)
            .conditional(isRequired ? orElse() : literalNull, exp);
      };
    } else if (fieldType is ModelType) {
      builder = (json) {
        // Use the generated `fromJson` handler for deserializing the model.
        final val = depth == 0 ? json.asA(DartTypes.core.json) : json;
        final exp = typeReference(hierarchyType)
            .nonNull
            .property('fromJson')
            .call([val]);
        return json
            .equalTo(literalNull)
            .conditional(isRequired ? orElse() : literalNull, exp);
      };
    } else {
      fieldType as ListType;
      builder = (json) {
        final val = json.asA(
          DartTypes.core.list(
            DartTypes.core.object.nullable,
          ),
        );
        final elementType = fieldType.elementType;
        final isPrimitive = elementType.isPrimitive;
        var exp =
            val.property('cast').call([], {}, [elementType.wireType.nullable]);
        if (!isPrimitive || elementType.isRequired) {
          exp = exp.property('map').call([
            Method(
              (m) => m
                ..lambda = true
                ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                ..body = fromJsonExp(
                  refer('el'),
                  fieldType: elementType,
                  orElse: orElse,
                  hierarchyType: hierarchyType,
                  depth: depth + 1,
                ).code,
            ).closure,
          ]);
        }
        exp = exp.property('toList').call([]);
        return json
            .equalTo(literalNull)
            .conditional(isRequired ? orElse() : literalNull, exp);
      };
    }
    return builder(json);
  }

  /// Returns the expression needed to encode [field] to JSON.
  Expression toJsonExp(
    Expression field, {
    required SchemaType fieldType,
  }) {
    final isNullable = !fieldType.isRequired;
    var builder = (Expression field) => field;
    if (fieldType is ScalarType) {
      switch (fieldType.value) {
        case AppSyncScalar.awsDate:
        case AppSyncScalar.awsDateTime:
        case AppSyncScalar.awsTime:
          builder = (field) {
            return field.nullableProperty('format', isNullable).call([]);
          };
          break;
        case AppSyncScalar.awsTimestamp:
          builder = (field) {
            return field.nullableProperty('toSeconds', isNullable).call([]);
          };
          break;
        case AppSyncScalar.awsUrl:
          builder = (field) {
            return field.nullableProperty('toString', isNullable).call([]);
          };
          break;
        case AppSyncScalar.awsJson:
        case AppSyncScalar.awsIpAddress:
        case AppSyncScalar.awsEmail:
        case AppSyncScalar.awsPhone:
        case AppSyncScalar.boolean:
        case AppSyncScalar.float:
        case AppSyncScalar.id:
        case AppSyncScalar.int_:
        case AppSyncScalar.string:
          break;
      }
    } else if (fieldType is EnumType) {
      builder = (field) {
        return field.nullableProperty('value', isNullable);
      };
    } else if (fieldType is NonModelType || fieldType is ModelType) {
      builder = (field) {
        return field.nullableProperty('toJson', isNullable).call([]);
      };
    } else {
      fieldType as ListType;
      builder = (field) {
        final elementType = fieldType.elementType;
        return elementType.isPrimitive
            ? field
            : field
                .nullableProperty('map', isNullable)
                .call([
                  Method(
                    (m) => m
                      ..lambda = true
                      ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                      ..body =
                          toJsonExp(refer('el'), fieldType: elementType).code,
                  ).closure
                ])
                .property('toList')
                .call([]);
      };
    }
    return builder(field);
  }
}

/// Helpers for [ArgumentNode].
extension ArgumentHelpers on ArgumentNode {
  /// Returns the argument's value as a string.
  String get stringValue => (value as StringValueNode).value;

  /// Returns the argument's value as a list of strings.
  List<String> get stringListValue => (value as ListValueNode)
      .values
      .cast<StringValueNode>()
      .map((el) => el.value)
      .toList();
}

/// Helpers for [DirectiveNode].
extension DirectiveHelpers on DirectiveNode {
  /// Whether the argument named [argumentName] is defined.
  bool hasArgument(String argumentName) =>
      arguments.any((arg) => arg.name.value == argumentName);

  /// Gets the argument named [argumentName], if present.
  ArgumentNode? argumentNamed(String argumentName) =>
      arguments.firstWhereOrNull((arg) => arg.name.value == argumentName);
}

/// Helpers for [FieldDefinitionNode].
extension FieldHelpers on FieldDefinitionNode {
  /// Whether this field has a directive named [directiveName].
  bool hasDirective(String directiveName) =>
      directives.any((directive) => directive.name.value == directiveName);

  /// Locates the directive named [directiveName], if present.
  DirectiveNode? directiveNamed(String directiveName) => directives
      .firstWhereOrNull((directive) => directive.name.value == directiveName);

  /// Whether this field has a foreign relationship.
  bool get hasRelationship =>
      hasDirective('hasOne') ||
      hasDirective('belongsTo') ||
      hasDirective('hasMany') ||
      hasDirective('manyToMany');

  /// The foreign relationship directive, if any.
  DirectiveNode? get relationshipDirective {
    if (!hasRelationship) {
      return null;
    }
    return directives.singleWhere(
      (directive) =>
          directive.name.value == 'hasOne' ||
          directive.name.value == 'belongsTo' ||
          directive.name.value == 'hasMany' ||
          directive.name.value == 'manyToMany',
    );
  }

  /// The name of the connection, if any.
  String? get connectionName {
    if (!hasRelationship) {
      return null;
    }
    return directiveNamed('index')?.argumentNamed('name')?.stringValue;
  }

  /// The name of the connection's `indexName` property, if any.
  String? get indexName {
    if (!hasRelationship) {
      return null;
    }
    return relationshipDirective?.argumentNamed('indexName')?.stringValue;
  }

  /// The value of the connection `fields` property, if any.
  List<String>? get connectionFields {
    if (!hasRelationship) {
      return null;
    }
    return relationshipDirective!.argumentNamed('fields')?.stringListValue;
  }

  /// Whether this field represents a `hasMany` relationship.
  bool get isHasMany => hasDirective('hasMany');

  /// Whether this field represents a `hasOne` relationship.
  bool get isHasOne => hasDirective('hasOne');

  /// Whether this field represents a `belongsTo` relationship.
  bool get isBelongsTo => hasDirective('belongsTo');

  /// Whether this field represents a `manyToMany` relationship.
  bool get isManyToMany => hasDirective('manyToMany');

  /// The re-cased Dart name (camelCase).
  String get dartName => name.value.camelCase;

  /// The wire name as it shows in JSON.
  String get wireName => name.value;
}

/// Helpers for [DirectiveNode]s.
extension AuthRules on List<DirectiveNode> {
  /// The `@auth` directive, if any.
  DirectiveNode? get authRuleDirective {
    return firstWhereOrNull((node) => node.name.value == 'auth');
  }

  /// The `@auth` rules.
  ///
  /// Will be empty if [authRuleDirective] is `null`.
  Iterable<AuthRule> get authRules sync* {
    final directive = authRuleDirective;
    if (directive == null) {
      return;
    }
    final rulesArg = directive.arguments.single.value as ListValueNode;
    final ruleValues = rulesArg.values.cast<ObjectValueNode>();
    for (final ruleValue in ruleValues) {
      final rule = AuthRuleBuilder();
      for (final field in ruleValue.fields) {
        final node = field.value;
        switch (field.name.value) {
          case 'allow':
            rule.authStrategy = AuthStrategy.valueOf(node.stringValue);
            break;
          case 'provider':
            rule.provider = AuthRuleProvider.valueOf(node.stringValue);
            break;
          case 'ownerField':
            rule.ownerField = node.stringValue;
            break;
          case 'identityClaim':
            rule.identityClaim = node.stringValue;
            break;
          case 'groupClaim':
            rule.groupClaim = node.stringValue;
            break;
          case 'groups':
            rule.groups.addAll(node.stringListValue);
            break;
          case 'groupsField':
            rule.groupsField = node.stringValue;
            break;
          case 'operations':
            rule.operations
                .addAll(node.stringListValue.map(ModelOperation.valueOf));
            break;
          default:
            throw StateError('Unknown key: ${field.name.value}');
        }
      }
      yield rule.build();
    }
  }
}
