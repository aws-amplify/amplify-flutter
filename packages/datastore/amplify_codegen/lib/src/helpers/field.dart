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
import 'package:amplify_codegen/src/generator/visitors.dart';
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

class _FromJsonVisitor extends SchemaTypeVisitor<Expression> {
  _FromJsonVisitor(
    this._field,
    this._jsonRef, {
    required this.orElse,
    this.hierarchyType,
  });

  final ModelField _field;
  final Expression Function() orElse;
  final ModelHierarchyType? hierarchyType;
  Expression _jsonRef;
  var _depth = -1;

  Expression _visitWithRef(SchemaType type, Expression jsonRef) {
    final saved = _jsonRef;
    _jsonRef = jsonRef;
    final visited = visit(type);
    _jsonRef = saved;
    return visited;
  }

  @override
  Expression visit(SchemaType type) {
    _depth++;
    final visited = super.visit(type);
    _depth--;
    return visited;
  }

  Expression _deserialize({
    required SchemaType type,
    Reference? asA,
    Expression? constructor,
  }) {
    final val = _depth == 0 && asA != null ? _jsonRef.asA(asA) : _jsonRef;
    final exp = constructor == null ? val : constructor.call([val]);
    final isRequired = type.isRequired;
    return _depth == 0 || constructor != null
        ? _jsonRef
            .equalTo(literalNull)
            .conditional(isRequired ? orElse() : literalNull, exp)
        : (isRequired ? _jsonRef.ifNullThen(orElse()) : _jsonRef);
  }

  @override
  Expression visitEnumType(EnumType type) {
    return _deserialize(
      type: type,
      asA: DartTypes.core.string,
      constructor: type.reference.nonNull.property('fromJson'),
    );
  }

  @override
  Expression visitListType(ListType type) {
    final val = _jsonRef.asA(
      DartTypes.core.list(
        DartTypes.core.object.nullable,
      ),
    );
    final elementType = type.elementType;
    final isPrimitive = elementType.isPrimitive;
    var exp =
        val.property('cast').call([], {}, [elementType.wireType.nullable]);
    if (!isPrimitive || elementType.isRequired) {
      exp = exp.property('map').call([
        Method(
          (m) => m
            ..lambda = true
            ..requiredParameters.add(Parameter((p) => p..name = 'el'))
            ..body = _visitWithRef(elementType, refer('el')).code,
        ).closure,
      ]);
    }
    exp = exp.property('toList').call([]);
    return _jsonRef
        .equalTo(literalNull)
        .conditional(type.isRequired ? orElse() : literalNull, exp);
  }

  @override
  Expression visitModelType(ModelType type) {
    return _deserialize(
      type: type,
      asA: DartTypes.core.json,
      constructor:
          _field.typeReference(hierarchyType).nonNull.property('fromJson'),
    );
  }

  @override
  Expression visitNonModelType(NonModelType type) {
    return _deserialize(
      type: type,
      asA: DartTypes.core.json,
      constructor: type.reference.nonNull.property('fromJson'),
    );
  }

  @override
  Expression visitScalar(ScalarType type) {
    Expression? constructor;
    switch (type.value) {
      case AppSyncScalar.awsDate:
      case AppSyncScalar.awsDateTime:
      case AppSyncScalar.awsTime:
        constructor = type.reference.nonNull.property('fromString');
        break;
      case AppSyncScalar.awsTimestamp:
        constructor = type.reference.nonNull.property('fromSeconds');
        break;
      case AppSyncScalar.awsUrl:
        constructor = type.reference.nonNull.property('parse');
        break;
      case AppSyncScalar.awsJson:
        if (!type.isRequired) {
          // Already an `Object?` coming off the JSON map.
          return _jsonRef;
        }
        break;
      case AppSyncScalar.awsEmail:
      case AppSyncScalar.awsIpAddress:
      case AppSyncScalar.awsPhone:
      case AppSyncScalar.boolean:
      case AppSyncScalar.float:
      case AppSyncScalar.id:
      case AppSyncScalar.int_:
      case AppSyncScalar.string:
        break;
    }
    return _deserialize(
      type: type,
      asA: type.wireType.nonNull,
      constructor: constructor,
    );
  }
}

class _ToJsonVisitor extends SchemaTypeVisitor<Expression> {
  _ToJsonVisitor(this._fieldRef);

  Expression _fieldRef;

  Expression _visitWithRef(SchemaType type, Expression fieldRef) {
    final saved = _fieldRef;
    _fieldRef = fieldRef;
    final visited = visit(type);
    _fieldRef = saved;
    return visited;
  }

  @override
  Expression visitEnumType(EnumType type) {
    final isNullable = !type.isRequired;
    return _fieldRef.nullableProperty('value', isNullable);
  }

  @override
  Expression visitListType(ListType type) {
    final isNullable = !type.isRequired;
    final elementType = type.elementType;
    return elementType.isPrimitive
        ? _fieldRef
        : _fieldRef
            .nullableProperty('map', isNullable)
            .call([
              Method(
                (m) => m
                  ..lambda = true
                  ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                  ..body = _visitWithRef(elementType, refer('el')).code,
              ).closure
            ])
            .property('toList')
            .call([]);
  }

  @override
  Expression visitModelType(ModelType type) {
    final isNullable = !type.isRequired;
    return _fieldRef.nullableProperty('toJson', isNullable).call([]);
  }

  @override
  Expression visitNonModelType(NonModelType type) {
    final isNullable = !type.isRequired;
    return _fieldRef.nullableProperty('toJson', isNullable).call([]);
  }

  @override
  Expression visitScalar(ScalarType type) {
    final isNullable = !type.isRequired;
    switch (type.value) {
      case AppSyncScalar.awsDate:
      case AppSyncScalar.awsDateTime:
      case AppSyncScalar.awsTime:
        return _fieldRef.nullableProperty('format', isNullable).call([]);
      case AppSyncScalar.awsTimestamp:
        return _fieldRef.nullableProperty('toSeconds', isNullable).call([]);
      case AppSyncScalar.awsUrl:
        return _fieldRef.nullableProperty('toString', isNullable).call([]);
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
    return _fieldRef;
  }
}

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
    if (type is ListType) {
      final elementType = type.elementType;
      if (elementType is ModelType) {
        return _typeReferences[type] = DartTypes.amplifyCore
            .asyncModelCollection(
              refer('${type.name}Identifier'),
              modelRef(elementType.name, ModelHierarchyType.model),
              modelRef(elementType.name, ModelHierarchyType.partial),
              modelRef(elementType.name, hierarchyType!),
            )
            .withRequired(type.isRequired);
      }
      final ref = elementType is ScalarType
          ? elementType.reference
          : elementType is EnumType
              ? elementType.reference
              : (elementType as NonModelType).reference;
      return _typeReferences[type] =
          DartTypes.core.list(ref).withRequired(type.isRequired);
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
    return DartTypes.amplifyCore
        .asyncModel(
          refer('${type.name}Identifier'),
          modelRef(type.name, ModelHierarchyType.model),
          modelRef(type.name, ModelHierarchyType.partial),
          modelRef(type.name, hierarchyType!),
        )
        .withRequired(type.isRequired);
  }

  /// Returns the expression needed to decode the Dart type from [jsonRef].
  Expression fromJsonExp(
    Expression jsonRef, {
    required Expression Function() orElse,
    ModelHierarchyType? hierarchyType,
  }) {
    return _FromJsonVisitor(
      this,
      jsonRef,
      orElse: orElse,
      hierarchyType: hierarchyType,
    ).visit(type);
  }

  /// Returns the expression needed to encode `this` to JSON.
  Expression toJsonExp(Expression fieldRef) {
    return _ToJsonVisitor(fieldRef).visit(type);
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
