// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
  ShapeType,
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
  IntEnumShape,
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
  StringEnumShape,
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
