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
import 'package:smithy/ast.dart';

import 'serializers.dart';

part 'smithy_ast.g.dart';

abstract class SmithyAst implements Built<SmithyAst, SmithyAstBuilder> {
  factory SmithyAst([void Function(SmithyAstBuilder) updates]) = _$SmithyAst;
  SmithyAst._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SmithyAstBuilder b) {
    b.version = '1.0';
  }

  @BuiltValueField(wireName: 'smithy')
  String get version;
  BuiltMap<String, JsonObject> get metadata;
  ShapeMap get shapes;

  Map<String, Object?> toJson() {
    return serializers.serializeWith(SmithyAst.serializer, this)
        as Map<String, Object?>;
  }

  static SmithyAst fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(SmithyAst.serializer, json) as SmithyAst;
  }

  static Serializer<SmithyAst> get serializer => _$smithyAstSerializer;

  SmithyAst merge(SmithyAst other) {
    return SmithyAst(
      (b) => b
        ..version = version
        ..metadata.addAll(metadata.toMap())
        ..metadata.addAll(other.metadata.toMap())
        ..shapes = ShapeMap(shapes)
        ..shapes!.addAll(other.shapes),
    );
  }
}
