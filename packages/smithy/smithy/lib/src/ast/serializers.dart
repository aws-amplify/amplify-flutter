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

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:meta/meta.dart';
import 'package:smithy/ast.dart';

part 'serializers.g.dart';

@SerializersFor([
  SmithyAst,
  Shape,
  ShapeId,
  ApplyShape,
  BigDecimalShape,
  BigIntegerShape,
  BlobShape,
  BooleanShape,
  ByteShape,
  DocumentShape,
  DoubleShape,
  FloatShape,
  IntegerShape,
  ListShape,
  LongShape,
  MapShape,
  MemberShape,
  OperationShape,
  ResourceShape,
  ServiceShape,
  SetShape,
  ShortShape,
  StringShape,
  StructureShape,
  TimestampShape,
  UnionShape
])
@internal
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(ShapeIdSerializer())
      ..add(ShapeMapSerializer())
      ..add(ShapeSerializer())
      ..add(NamedMembersMapSerializer())
      ..add(TraitMapSerializer()))
    .build();
