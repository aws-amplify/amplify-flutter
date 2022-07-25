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
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/src/ast/serializers.dart';

part 'shape_type.g.dart';

enum Category {
  simple,
  aggregate,
  service,
  apply,
}

class ShapeType extends EnumClass {
  static const ShapeType apply = _$apply;
  static const ShapeType blob = _$blob;
  static const ShapeType boolean = _$boolean;
  static const ShapeType string = _$string;
  static const ShapeType timestamp = _$timestamp;
  static const ShapeType byte = _$byte;
  static const ShapeType short = _$short;
  static const ShapeType integer = _$integer;
  static const ShapeType long = _$long;
  static const ShapeType float = _$float;
  static const ShapeType document = _$document;
  static const ShapeType double = _$double;
  static const ShapeType bigDecimal = _$bigDecimal;
  static const ShapeType bigInteger = _$bigInteger;
  static const ShapeType list = _$list;
  static const ShapeType set = _$set;
  static const ShapeType map = _$map;
  static const ShapeType structure = _$structure;
  static const ShapeType union = _$union;
  static const ShapeType member = _$member;
  static const ShapeType service = _$service;
  static const ShapeType resource = _$resource;
  static const ShapeType operation = _$operation;

  const ShapeType._(String name) : super(name);

  static BuiltSet<ShapeType> get values => _$shapeTypeValues;
  static ShapeType valueOf(String name) => _$shapeTypeValueOf(name);

  String serialize() {
    return serializers.serializeWith(ShapeType.serializer, this) as String;
  }

  static ShapeType deserialize(String string) {
    return serializers.deserializeWith(ShapeType.serializer, string)
        as ShapeType;
  }

  static Serializer<ShapeType> get serializer => _$shapeTypeSerializer;
}

extension ShapeTypeX on ShapeType {
  Category get category {
    switch (this) {
      case ShapeType.apply:
        return Category.apply;
      case ShapeType.blob:
      case ShapeType.boolean:
      case ShapeType.string:
      case ShapeType.timestamp:
      case ShapeType.byte:
      case ShapeType.short:
      case ShapeType.integer:
      case ShapeType.long:
      case ShapeType.float:
      case ShapeType.document:
      case ShapeType.double:
      case ShapeType.bigDecimal:
      case ShapeType.bigInteger:
        return Category.simple;
      case ShapeType.list:
      case ShapeType.set:
      case ShapeType.map:
      case ShapeType.structure:
      case ShapeType.union:
      case ShapeType.member:
        return Category.aggregate;
      case ShapeType.service:
      case ShapeType.resource:
      case ShapeType.operation:
        return Category.service;
    }
    throw ArgumentError();
  }

  Type get type {
    switch (this) {
      case ShapeType.apply:
        return ApplyShape;
      case ShapeType.bigDecimal:
        return BigDecimalShape;
      case ShapeType.bigInteger:
        return BigIntegerShape;
      case ShapeType.blob:
        return BlobShape;
      case ShapeType.boolean:
        return BooleanShape;
      case ShapeType.byte:
        return ByteShape;
      case ShapeType.document:
        return DocumentShape;
      case ShapeType.double:
        return DoubleShape;
      case ShapeType.float:
        return FloatShape;
      case ShapeType.integer:
        return IntegerShape;
      case ShapeType.list:
        return ListShape;
      case ShapeType.long:
        return LongShape;
      case ShapeType.map:
        return MapShape;
      case ShapeType.member:
        return MemberShape;
      case ShapeType.operation:
        return OperationShape;
      case ShapeType.resource:
        return ResourceShape;
      case ShapeType.service:
        return ServiceShape;
      case ShapeType.set:
        return SetShape;
      case ShapeType.short:
        return ShortShape;
      case ShapeType.string:
        return StringShape;
      case ShapeType.structure:
        return StructureShape;
      case ShapeType.timestamp:
        return TimestampShape;
      case ShapeType.union:
        return UnionShape;
    }
    throw ArgumentError.value(this);
  }
}
