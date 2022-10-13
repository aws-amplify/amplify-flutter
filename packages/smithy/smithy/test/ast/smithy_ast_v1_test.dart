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

import 'dart:convert';

import 'package:smithy/ast.dart';
import 'package:test/test.dart';

void main() {
  group('Smithy AST', () {
    group('Deserialize', () {
      test('a', () {
        const json = '''
        {
          "smithy": "1.0",
          "metadata": {},
          "shapes": {
            "smithy.example#MyString": {
              "type": "string"
            }
          }
        }''';
        final map = (jsonDecode(json) as Map).cast<String, Object?>();
        final ast = SmithyAst.fromJson(map);
        const shapeId = ShapeId(namespace: 'smithy.example', shape: 'MyString');
        final expected = SmithyAst((b) => b
          ..version = SmithyVersion.v1
          ..shapes = ShapeMap({
            shapeId: StringShape((b) => b..shapeId = shapeId),
          }));
        expect(ast, expected);
        expect(expected.toJson(), equals(map));
      });

      test('ShapeRef', () {
        const json = '''
        {
          "smithy": "1.0",
          "shapes": {
              "smithy.example#Service": {
                  "type": "service",
                  "operations": [
                      {
                          "target": "smithy.example#Operation"
                      }
                  ]
              },
              "smithy.example#Operation": {
                  "type": "operation"
              }
          }
        }''';

        const serviceId =
            ShapeId(namespace: 'smithy.example', shape: 'Service');
        const operationId =
            ShapeId(namespace: 'smithy.example', shape: 'Operation');

        final expected = SmithyAst((b) => b
          ..version = SmithyVersion.v1
          ..shapes = ShapeMap({
            serviceId: ServiceShape((s) => s
              ..shapeId = serviceId
              ..operations.add(ShapeRef((b) => b.target = operationId))),
            operationId: OperationShape((b) => b.shapeId = operationId),
          }));
        final decoded =
            SmithyAst.fromJson(jsonDecode(json) as Map<String, Object?>);
        expect(decoded, equals(expected));
      });

      test('Member', () {
        const json = '''
        {
            "smithy": "1.0",
            "shapes": {
                "smithy.example#MyList": {
                    "type": "list",
                    "member": {
                        "target": "smithy.api#String",
                        "traits": {
                            "smithy.api#documentation": "Member documentation"
                        }
                    }
                }
            }
        }''';

        const listId = ShapeId(namespace: 'smithy.example', shape: 'MyList');

        final memberShape = MemberShape((b) {
          b
            ..target = ShapeId.parse('smithy.api#String')
            ..shapeId = listId.replace(member: 'member')
            ..memberName = 'member'
            ..traits = TraitMap({
              DocumentationTrait.id:
                  const DocumentationTrait('Member documentation')
            });
        });

        final expected = SmithyAst((b) => b
          ..version = SmithyVersion.v1
          ..shapes = ShapeMap({
            listId: ListShape(
              (b) => b
                ..shapeId = listId
                ..member.replace(memberShape),
            )
          }));

        final decoded = SmithyAst.fromJson(
          jsonDecode(json) as Map<String, Object?>,
        );
        expect(decoded, equals(expected));
      });

      test('17.7 Map shape', () {
        const json = '''
        {
            "smithy": "1.0",
            "shapes": {
                "smithy.example#IntegerMap": {
                    "type": "map",
                    "key": {
                        "target": "smithy.api#String"
                    },
                    "value": {
                        "target": "smithy.api#Integer"
                    }
                }
            }
        }''';

        const mapId = ShapeId(namespace: 'smithy.example', shape: 'IntegerMap');
        const stringId = ShapeId(namespace: 'smithy.api', shape: 'String');
        const integerId = ShapeId(namespace: 'smithy.api', shape: 'Integer');

        final expected = SmithyAst((b) => b
          ..version = SmithyVersion.v1
          ..shapes = ShapeMap({
            mapId: MapShape((b) {
              b
                ..shapeId = mapId
                ..key.target = stringId
                ..value.target = integerId;
            }),
          }));

        final decoded =
            SmithyAst.fromJson(jsonDecode(json) as Map<String, Object?>);
        expect(decoded, equals(expected));
      });

      test('17.7a Structure shape', () {
        const json = '''
        {
          "smithy": "1.0",
          "shapes": {
              "smithy.example#MyStructure": {
                  "type": "structure",
                  "members": {
                      "stringMember": {
                          "target": "smithy.api#String",
                          "traits": {
                              "smithy.api#required": {}
                          }
                      },
                      "numberMember": {
                          "target": "smithy.api#Integer"
                      }
                  }
              }
          }
      }''';

        const structureId =
            ShapeId(namespace: 'smithy.example', shape: 'MyStructure');
        const stringId = ShapeId(namespace: 'smithy.api', shape: 'String');
        const integerId = ShapeId(namespace: 'smithy.api', shape: 'Integer');
        const requiredId = ShapeId(namespace: 'smithy.api', shape: 'required');

        final expected = SmithyAst((b) => b
          ..version = SmithyVersion.v1
          ..shapes = ShapeMap({
            structureId: StructureShape((b) => b
              ..shapeId = structureId
              ..members = NamedMembersMap({
                'stringMember': MemberShape((b) => b
                  ..shapeId = structureId.replace(member: 'stringMember')
                  ..target = stringId
                  ..memberName = 'stringMember'
                  ..traits = TraitMap({
                    requiredId: const RequiredTrait(),
                  })),
                'numberMember': MemberShape((b) => b
                  ..shapeId = structureId.replace(member: 'numberMember')
                  ..memberName = 'numberMember'
                  ..target = integerId),
              }))
          }));

        final decoded =
            SmithyAst.fromJson(jsonDecode(json) as Map<String, Object?>);
        expect(decoded, equals(expected));
      });

      test('Apply', () {
        const json = r'''
        {
          "smithy": "1.0",
          "shapes": {
              "smithy.example#Struct": {
                  "type": "structure",
                  "members": {
                      "foo": {
                          "target": "smithy.api#String"
                      }
                  }
              },
              "smithy.example#Struct$foo": {
                  "type": "apply",
                  "traits": {
                      "smithy.api#documentation": "My documentation string"
                  }
              }
          }
      }''';

        final structId = ShapeId.parse('smithy.example#Struct');
        final stringId = ShapeId.parse('smithy.api#String');

        final expected = SmithyAst((b) => b
          ..version = SmithyVersion.v1
          ..shapes = ShapeMap({
            structId: StructureShape((b) => b
              ..shapeId = structId
              ..members = NamedMembersMap({
                'foo': MemberShape((b) => b
                  ..shapeId = structId.replace(member: 'foo')
                  ..memberName = 'foo'
                  ..target = stringId
                  ..traits = TraitMap({
                    DocumentationTrait.id:
                        const DocumentationTrait('My documentation string')
                  }))
              }))
          }));

        final decoded = SmithyAst.fromJson(
          jsonDecode(json) as Map<String, Object?>,
        );

        expect(decoded, equals(expected));
      });

      test('Enum', () {
        const json = r'''
        {
          "smithy": "1.0",
          "shapes": {
              "smithy.example#FooEnum": {
                  "type": "string",
                  "traits": {
                    "smithy.api#enum": [
                      {
                        "name": "FOO",
                        "value": "Foo"
                      },
                      {
                        "name": "BAR",
                        "value": "bar"
                      },
                      {
                        "value": "baz"
                      }
                    ]
                  }
              }
          }
      }''';

        final stringId = ShapeId.parse('smithy.example#FooEnum');

        final expected = SmithyAst((b) => b
          ..version = SmithyVersion.v1
          ..shapes = ShapeMap({
            stringId: EnumShape(
              (e) => e
                ..shapeId = stringId
                ..members = NamedMembersMap({
                  'FOO': MemberShape(
                    (b) => b
                      ..target = Shape.unit
                      ..memberName = 'FOO'
                      ..shapeId = stringId.replace(member: 'FOO')
                      ..traits = TraitMap({
                        EnumValueTrait.id: const EnumValueTrait('Foo'),
                      }),
                  ),
                  'BAR': MemberShape(
                    (b) => b
                      ..target = Shape.unit
                      ..memberName = 'BAR'
                      ..shapeId = stringId.replace(member: 'BAR')
                      ..traits = TraitMap({
                        EnumValueTrait.id: const EnumValueTrait('bar'),
                      }),
                  ),
                  'baz': MemberShape(
                    (b) => b
                      ..target = Shape.unit
                      ..memberName = 'baz'
                      ..shapeId = stringId.replace(member: 'baz')
                      ..traits = TraitMap({
                        EnumValueTrait.id: const EnumValueTrait('baz'),
                      }),
                  ),
                }),
            ),
          }));

        final decoded = SmithyAst.fromJson(
          jsonDecode(json) as Map<String, Object?>,
        );

        expect(decoded, equals(expected));
      });
    });
  });
}
