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
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Helpers for [TypeNode].
extension TypeHelpers on TypeNode {
  /// Whether `this` is a list type.
  bool get isList => this is ListTypeNode;

  /// `this` as a list type.
  ListTypeNode get asList => this as ListTypeNode;

  /// The name of the base type.
  ///
  /// If this is a list type, the name of the wrapped type.
  String get typeName {
    if (this is NamedTypeNode) {
      return (this as NamedTypeNode).name.value;
    } else if (this is ListTypeNode) {
      return (this as ListTypeNode).type.typeName;
    }
    throw ArgumentError(runtimeType);
  }

  /// The type of model field this represents.
  SchemaType schemaType({
    required Map<String, ObjectTypeDefinitionNode> models,
    required Map<String, EnumTypeDefinitionNode> enums,
  }) {
    final node = this;
    if (node is NamedTypeNode) {
      AppSyncScalar? scalarType;
      try {
        scalarType =
            (AppSyncScalar.serializer as PrimitiveSerializer<AppSyncScalar>)
                .deserialize(
          Serializers(),
          node.name.value,
        );
      } on Object {
        // no-op
      }
      if (scalarType != null) {
        return SchemaType.scalar(scalarType, isRequired: node.isNonNull);
      }
      final modelName = node.name.value;
      final objectNode = models[modelName];
      if (objectNode == null) {
        assert(
          enums.containsKey(modelName),
          'Must be an enum if not a scalar or recognized model',
        );
        return SchemaType.enum_(modelName, isRequired: node.isNonNull);
      }
      final isNonModel = !objectNode.hasDirective('model');
      if (isNonModel) {
        return SchemaType.nonModel(modelName, isRequired: node.isNonNull);
      }
      return SchemaType.model(modelName, isRequired: node.isNonNull);
    } else if (node is ListTypeNode) {
      final valueType = node.type.schemaType(
        models: models,
        enums: enums,
      );
      assert(valueType is! ListType, 'Nested lists are not supported');
      return SchemaType.list(valueType, isRequired: node.isNonNull);
    }
    throw ArgumentError(node.runtimeType);
  }
}

/// Helpers for [SchemaType].
extension SchemaTypeHelpers on SchemaType {
  /// Whether this type represents an enum.
  bool get isEnum => this is EnumType;

  /// Whether this type represents a Model.
  bool get isModel => this is ModelType;

  /// Whether this type represents a list.
  bool get isList => this is ListType;

  /// The type transmitted on the wire when `this` is serialized.
  Reference get wireType {
    final type = this;
    if (type is ScalarType) {
      switch (type.value) {
        case AppSyncScalar.awsDate:
        case AppSyncScalar.awsDateTime:
        case AppSyncScalar.awsEmail:
        case AppSyncScalar.awsIpAddress:
        case AppSyncScalar.awsPhone:
        case AppSyncScalar.awsTime:
        case AppSyncScalar.awsUrl:
        case AppSyncScalar.id:
        case AppSyncScalar.string:
          return DartTypes.core.string.withRequired(isRequired);
        case AppSyncScalar.awsJson:
          return DartTypes.core.object.withRequired(isRequired);
        case AppSyncScalar.awsTimestamp:
        case AppSyncScalar.int_:
          return DartTypes.core.int.withRequired(isRequired);
        case AppSyncScalar.boolean:
          return DartTypes.core.bool.withRequired(isRequired);
        case AppSyncScalar.float:
          return DartTypes.core.double.withRequired(isRequired);
      }
    }
    if (type is EnumType) {
      return DartTypes.core.string.withRequired(isRequired);
    }
    if (type is ModelType || type is NonModelType) {
      return DartTypes.core.json.withRequired(isRequired);
    }
    type as ListType;
    return DartTypes.core
        .list(type.elementType.wireType)
        .withRequired(isRequired);
  }

  /// Whether this type is represented by a primitive, `dart:core` type.
  bool get isPrimitive {
    const primitiveScalars = [
      AppSyncScalar.awsEmail,
      AppSyncScalar.awsIpAddress,
      AppSyncScalar.awsJson,
      AppSyncScalar.awsPhone,
      AppSyncScalar.boolean,
      AppSyncScalar.float,
      AppSyncScalar.id,
      AppSyncScalar.int_,
      AppSyncScalar.string,
    ];
    final type = this;
    return type is ScalarType && primitiveScalars.contains(type.value);
  }

  /// The Dart name for `this`.
  String get dartName {
    final name = this.name.pascalCase;
    if (reservedTypeNames.contains(name)) {
      return '$name\$';
    }
    return name;
  }

  /// The code_builder reference for `this`.
  Reference get reference {
    final type = this;
    if (type is ScalarType) {
      return DartTypes.scalar(type.value).withRequired(isRequired);
    } else if (type is NonModelType || type is ModelType || type is EnumType) {
      return refer(dartName, '${name.snakeCase}.dart').withRequired(isRequired);
    }
    throw ArgumentError('Invalid type: $type');
  }
}

/// Helpers for [TypeDefinitionNode].
extension TypeDefinitionHelpers on TypeDefinitionNode {
  /// This type's name as a library name.
  String get libraryName {
    final libName = name.value.snakeCase;
    if (hardReservedWords.contains(libName)) {
      return '${libName}_';
    }
    return libName;
  }
}

/// Helpers for [Reference] types.
extension ReferenceHelpers on Reference {
  /// Returns a nullable version of `this`.
  TypeReference get nullable {
    return typeRef.rebuild((t) => t.isNullable = true);
  }

  /// Returns a non-nullable version of `this`.
  TypeReference get nonNull {
    return typeRef.rebuild((t) => t.isNullable = false);
  }

  /// Returns a version of `this` with nullability equal to [isNullable].
  // ignore: avoid_positional_boolean_parameters
  TypeReference withNullable(bool isNullable) {
    return isNullable ? nullable : nonNull;
  }

  /// Returns a version of `this` with nullability equal to ![isRequired].
  // ignore: avoid_positional_boolean_parameters
  TypeReference withRequired(bool isRequired) {
    return withNullable(!isRequired);
  }
}
