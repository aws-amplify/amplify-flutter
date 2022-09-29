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

import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:gql/ast.dart';

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
  AppSyncScalar get awsType => AppSyncScalar.valueOf(typeName);
}

/// Helpers for [SchemaType].
extension SchemaTypeHelpers on SchemaType {
  /// Whether this type represents an enum.
  bool get isEnum => this is EnumType;

  /// Whether this type represents a Model.
  bool get isModel => this is ModelType;

  /// Whether this type represents a list.
  bool get isList => this is ListType;
}
