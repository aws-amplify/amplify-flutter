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

import 'package:smithy/ast.dart';
import 'package:smithy_codegen/src/generator/enum_generator.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_codegen/src/generator/union_generator.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_test/smithy_test.dart';

import 'common.dart';

void main() {
  group('Naming', () {
    group('Struct', () {
      test('valid name', () {
        final shape = StructureShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyStruct')
          ..members = NamedMembersMap({}));
        final context = createTestContext([shape]);
        final name = StructureGenerator(shape, context).className;
        expect(name, equals('MyStruct'));
      });

      test('conflict with builder of another class', () {
        final myStruct = StructureShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyStruct')
          ..members = NamedMembersMap({}));
        final myStructBuilder = StructureShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyStructBuilder')
          ..members = NamedMembersMap({}));
        final shapes = [myStruct, myStructBuilder];
        final context = createTestContext(shapes);
        final name = StructureGenerator(myStruct, context).className;
        expect(name, equals('TestMyStruct'));
      });

      test('member names', () {
        final shape = StructureShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyStruct')
          ..members = NamedMembersMap({
            'build': MemberShape((b) => b
              ..memberName = 'build'
              ..target = Shape.unit),
            'update': MemberShape((b) => b
              ..memberName = 'update'
              ..target = Shape.unit),
            'rebuild': MemberShape((b) => b
              ..memberName = 'rebuild'
              ..target = Shape.unit),
            'replace': MemberShape((b) => b
              ..memberName = 'replace'
              ..target = Shape.unit),
            'toBuilder': MemberShape((b) => b
              ..memberName = 'toBuilder'
              ..target = Shape.unit),
          }));
        final memberNames =
            shape.members.values.map((m) => m.dartName(ShapeType.structure));
        expect(
          memberNames,
          unorderedEquals([
            'build_',
            'update_',
            'rebuild_',
            'replace_',
            'toBuilder_',
          ]),
        );
      });
    });

    group('Union', () {
      test('valid name', () {
        final shape = UnionShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyUnion')
          ..members = NamedMembersMap({}));
        final context = createTestContext([shape]);
        final name = UnionGenerator(shape, context).className;
        expect(name, equals('MyUnion'));
      });

      test('conflict with builder of another class', () {
        final myUnion = UnionShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyUnion')
          ..members = NamedMembersMap({}));
        final myUnionBuilder = UnionShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyUnionBuilder')
          ..members = NamedMembersMap({}));
        final shapes = [myUnion, myUnionBuilder];
        final context = createTestContext(shapes);
        final name = UnionGenerator(myUnion, context).className;
        expect(name, equals('TestMyUnion'));
      });

      test('member names', () {
        final shape = UnionShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyStruct')
          ..members = NamedMembersMap({
            'value': MemberShape((b) => b
              ..memberName = 'value'
              ..target = Shape.unit),
            'sdkUnknown': MemberShape((b) => b
              ..memberName = 'sdkUnknown'
              ..target = Shape.unit),
            'unknown': MemberShape((b) => b
              ..memberName = 'unknown'
              ..target = Shape.unit),
          }));
        final context = createTestContext([shape]);
        final generator = UnionGenerator(shape, context);
        final memberNames = shape.members.values.map(generator.variantName);
        expect(
          memberNames,
          unorderedEquals([
            'value\$',
            'sdkUnknown\$',
            'unknown\$',
          ]),
        );
      });
    });

    group('Enum', () {
      test('valid name', () {
        final shape = StringShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyEnum')
          ..traits = TraitMap.fromTraits([
            const EnumTrait([EnumDefinition(value: 'test')])
          ]));
        final context = createTestContext([shape]);
        final name = EnumGenerator(shape, context).className;
        expect(name, equals('MyEnum'));
      });

      test('conflict with builder of another class', () {
        final myEnum = StringShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyEnum')
          ..traits = TraitMap.fromTraits([
            const EnumTrait([EnumDefinition(value: 'test')])
          ]));
        final myEnumBuilder = StringShape((b) => b
          ..shapeId = ShapeId.parse('com.example#MyEnumBuilder')
          ..traits = TraitMap.fromTraits([
            const EnumTrait([EnumDefinition(value: 'test')])
          ]));
        final shapes = [myEnum, myEnumBuilder];
        final context = createTestContext(shapes);
        final name = EnumGenerator(myEnum, context).className;
        expect(name, equals('TestMyEnum'));
      });

      test('member names', () {
        const trait = EnumTrait([
          EnumDefinition(value: 'name'),
          EnumDefinition(value: 'value'),
          EnumDefinition(value: 'index'),
        ]);
        final memberNames = trait.definitions.map((def) => def.variantName);
        expect(
          memberNames,
          unorderedEquals([
            'name\$',
            'value\$',
            'index\$',
          ]),
        );
      });
    });
  });
}
