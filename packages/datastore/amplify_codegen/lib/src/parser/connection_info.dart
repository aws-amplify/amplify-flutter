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

import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'connection_info.g.dart';

/// {@template amplify_codegen.connection_info}
/// Connection information created when visiting and analyzing connections
/// (relationships) between models.
/// {@endtemplate}
abstract class ConnectionInfo
    implements Built<ConnectionInfo, ConnectionInfoBuilder> {
  /// {@macro amplify_codegen.connection_info}
  factory ConnectionInfo([
    void Function(ConnectionInfoBuilder) updates,
  ]) = _$ConnectionInfo;
  ConnectionInfo._();

  /// New schema types, e.g. a join table for a manyToMany connection.
  BuiltList<SchemaTypeDefinition> get newTypes;

  /// New fields by model name.
  BuiltListMultimap<String, ModelField> get newFields;

  /// New indexes by model name.
  BuiltListMultimap<String, ModelIndex> get newIndexes;

  /// The association built by this field.
  ModelAssociation get association;
}
