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

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_test/smithy_test.dart';

import 'common.dart';

void main() {
  void testDefaultValue(StructureShape struct, CodegenContext context) {
    final generator = StructureGenerator(struct, context);
    final method = generator.defaultValues(
      members: generator.payloadMembers,
      builderSymbol: generator.payloadBuilderSymbol,
    );
    final emitter = buildEmitter(Allocator.none);
    final output = method.accept(emitter).toString();
    expect(output, contains('b.defaultValue = 0'));
  }

  group('default value', () {
    test('v1', () {
      const primitiveId = ShapeId(namespace: 'example', shape: 'MyPrimitive');
      final primitive = PrimitiveDoubleShape((b) => b..shapeId = primitiveId);
      final struct = StructureShape(
        (b) => b
          ..shapeId = const ShapeId(namespace: 'example', shape: 'MyStruct')
          ..members = NamedMembersMap({
            'defaultValue': MemberShape((b) => b
              ..memberName = 'defaultValue'
              ..shapeId = const ShapeId(
                namespace: 'example',
                shape: 'MyStruct',
                member: 'defaultValue',
              )
              ..target = primitiveId),
          })
          ..traits = TraitMap.fromTraits(const [InputTrait()]),
      );
      final context = createTestContext([primitive, struct]);
      testDefaultValue(struct, context);
    });

    test('v2', () {
      const primitiveId = ShapeId(namespace: 'example', shape: 'MyPrimitive');
      final primitive = DoubleShape((b) => b..shapeId = primitiveId);
      final struct = StructureShape(
        (b) => b
          ..shapeId = const ShapeId(namespace: 'example', shape: 'MyStruct')
          ..members = NamedMembersMap({
            'defaultValue': MemberShape(
              (b) => b
                ..memberName = 'defaultValue'
                ..shapeId = const ShapeId(
                  namespace: 'example',
                  shape: 'MyStruct',
                  member: 'defaultValue',
                )
                ..target = primitiveId
                ..traits = TraitMap.fromTraits(const [DefaultTrait(0)]),
            ),
          })
          ..traits = TraitMap.fromTraits(const [InputTrait()]),
      );
      final context = createTestContext([primitive, struct]);
      testDefaultValue(struct, context);
    });
  });
}
