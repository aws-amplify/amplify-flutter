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
      return SchemaType.list(valueType, isRequired: node.isNonNull);
    }
    throw ArgumentError(node.runtimeType);
  }
}

// Cache for type references.
final _typeReferences = Expando<Reference>();

/// Helpers for [SchemaType].
extension SchemaTypeHelpers on SchemaType {
  /// Whether this type represents an enum.
  bool get isEnum => this is EnumType;

  /// Whether this type represents a Model.
  bool get isModel => this is ModelType;

  /// Whether this type represents a list.
  bool get isList => this is ListType;

  /// The code_builder reference for `this`.
  Reference get reference {
    final type = this;
    final cached = _typeReferences[this];
    if (cached != null) {
      return cached;
    }
    if (type is ListType) {
      return _typeReferences[this] = DartTypes.core
          .list(type.elementType.reference)
          .withRequired(type.isRequired);
    }
    if (type is ScalarType) {
      return _typeReferences[this] =
          DartTypes.scalar(type.value).withRequired(type.isRequired);
    }
    return _typeReferences[this] = Reference(
      type.name.pascalCase,
      '${type.name.snakeCase}.dart',
    ).withRequired(type.isRequired);
  }

  /// Returns the expression needed to encode [field] to JSON.
  Expression toJsonExp(
    Expression field, {
    required bool isNullable,
  }) {
    final fieldType = this;
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
        case AppSyncScalar.awsJson:
        case AppSyncScalar.awsIpAddress:
        case AppSyncScalar.awsEmail:
        case AppSyncScalar.awsPhone:
        case AppSyncScalar.awsUrl:
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
    } else {
      // TODO(dnys1): Complete model/non-model serialization.
      throw ArgumentError(this);
    }
    return builder(field);
  }

  /// Returns the expression needed to decode the Dart type from [json].
  Expression fromJsonExp(
    Expression json, {
    required bool isNullable,
    required Expression Function() orElse,
  }) {
    final fieldType = this;
    final fieldRef = reference.withNullable(isNullable);
    var builder = (Expression json) {
      final exp = json.asA(fieldRef);
      return json
          .equalTo(literalNull)
          .conditional(isNullable ? literalNull : orElse(), exp);
    };
    if (fieldType is ScalarType) {
      switch (fieldType.value) {
        case AppSyncScalar.awsDate:
        case AppSyncScalar.awsDateTime:
        case AppSyncScalar.awsTime:
          builder = (json) {
            final val = json.asA(DartTypes.core.string);
            final exp =
                fieldType.reference.nonNull.property('fromString').call([val]);
            return json
                .equalTo(literalNull)
                .conditional(isNullable ? literalNull : orElse(), exp);
          };
          break;
        case AppSyncScalar.awsTimestamp:
          builder = (json) {
            final val = json.asA(DartTypes.core.int);
            final exp =
                fieldType.reference.nonNull.property('fromSeconds').call([val]);
            return json
                .equalTo(literalNull)
                .conditional(isNullable ? literalNull : orElse(), exp);
          };

          break;
        case AppSyncScalar.awsJson:
          if (isNullable) {
            // Already an `Object?` coming off the JSON map.
            builder = (json) => json;
          }
          break;
        case AppSyncScalar.awsIpAddress:
        case AppSyncScalar.awsEmail:
        case AppSyncScalar.awsPhone:
        case AppSyncScalar.awsUrl:
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
        final val = json.asA(DartTypes.core.string);
        final exp = reference.nonNull.property('fromJson').call([val]);
        return json
            .equalTo(literalNull)
            .conditional(isNullable ? literalNull : orElse(), exp);
      };
    } else {
      // TODO(dnys1): Complete model/non-model deserialization.
      throw ArgumentError(this);
    }
    return builder(json);
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
