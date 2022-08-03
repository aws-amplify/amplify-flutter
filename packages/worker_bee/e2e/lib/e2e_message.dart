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
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart';

part 'e2e_message.g.dart';

abstract class CustomType implements Built<CustomType, CustomTypeBuilder> {
  CustomType._();
  factory CustomType([void Function(CustomTypeBuilder) updates]) = _$CustomType;

  String get customField;

  static Serializer<CustomType> get serializer => _$customTypeSerializer;
}

abstract class E2EMessage implements Built<E2EMessage, E2EMessageBuilder> {
  factory E2EMessage([void Function(E2EMessageBuilder) updates]) = _$E2EMessage;
  E2EMessage._();

  BigInt get bigInt;
  bool get bool_;
  BuiltList<String> get builtList;
  BuiltListMultimap<String, String> get builtListMultimap;
  BuiltMap<String, String> get builtMap;
  BuiltSet<String> get builtSet;
  BuiltSetMultimap<String, String> get builtSetMultimap;
  DateTime get dateTime;
  double get double_;
  Duration get duration;
  int get int_;
  Int64 get int64;
  JsonObject get jsonObject;
  num get num_;
  RegExp get regExp;
  String get string;
  Uri get uri;

  static Serializer<E2EMessage> get serializer => _$e2EMessageSerializer;
}

abstract class E2EResult implements Built<E2EResult, E2EResultBuilder> {
  factory E2EResult([void Function(E2EResultBuilder) updates]) = _$E2EResult;
  E2EResult._();

  E2EMessage get message;

  static Serializer<E2EResult> get serializer => _$e2EResultSerializer;
}

@SerializersFor([
  E2EMessage,
  E2EResult,
  CustomType,
])
final Serializers serializers = _$serializers;

const intStreamElements = [1, 2, 3, 4, 5];
final customTypeStreamElements = [
  CustomType((b) => b..customField = 'a'),
  CustomType((b) => b..customField = 'b'),
  CustomType((b) => b..customField = 'c'),
  CustomType((b) => b..customField = 'd'),
  CustomType((b) => b..customField = 'e'),
];

E2EMessage get message => E2EMessage(
      (b) => b
        ..bigInt = BigInt.from(123)
        ..bool_ = true
        ..builtList.add('abc')
        ..builtListMultimap.addValues('a', ['1', '2', '3'])
        ..builtMap.addAll({'a': '1', 'b': '2', 'c': '3'})
        ..builtSet.add('abc')
        ..builtSetMultimap.addValues('a', ['1', '2', '3'])
        ..dateTime = DateTime.utc(1990, 1, 1)
        ..double_ = 123.0
        ..duration = const Duration(minutes: 4)
        ..int_ = 123
        ..int64 = Int64(123)
        ..jsonObject = JsonObject(123)
        ..num_ = 123
        ..regExp = RegExp(r'^\w{3}$')
        ..string = 'abc'
        ..uri = Uri.parse('https://example.com'),
    );
