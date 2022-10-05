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

import 'package:amplify_codegen/src/helpers/node.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:gql/ast.dart';

/// Returns the query field name for [fieldName].
String queryFieldName(String fieldName) => ('$fieldName\$').camelCase;

/// Helpers for [ModelField].
extension ModelFieldHelpers on ModelField {
  /// The wire name as it shows in JSON.
  String get wireName => name;
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
