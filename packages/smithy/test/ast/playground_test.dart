import 'dart:convert';

import 'package:smithy/ast.dart';
import 'package:test/test.dart';

const playgroundIdl = '''
{
    "smithy": "1.0",
    "shapes": {
        "com.test#GetFoo": {
            "type": "operation",
            "input": {
                "target": "com.test#GetFooInput"
            },
            "output": {
                "target": "com.test#GetFooOutput"
            }
        },
        "com.test#GetFooInput": {
            "type": "structure",
            "members": {
                "e": {
                    "target": "com.test#MyEnum"
                }
            }
        },
        "com.test#GetFooOutput": {
            "type": "structure",
            "members": {
                "result": {
                    "target": "com.test#MyUnion"
                }
            }
        },
        "com.test#MyEnum": {
            "type": "string",
            "traits": {
                "smithy.api#enum": [
                    {
                        "value": "rawValue1",
                        "name": "Variant1"
                    },
                    {
                        "value": "rawValue2",
                        "name": "Variant2"
                    }
                ]
            }
        },
        "com.test#MyService": {
            "type": "service",
            "version": "1.0.0",
            "operations": [
                {
                    "target": "com.test#GetFoo"
                }
            ]
        },
        "com.test#MyUnion": {
            "type": "union",
            "members": {
                "anInt": {
                    "target": "smithy.api#Integer"
                },
                "aLong": {
                    "target": "smithy.api#Long"
                }
            }
        }
    }
}
''';

void main() {
  group('Playground', () {
    test('Parse', () {
      expect(
        () => SmithyAst.fromJson(jsonDecode(playgroundIdl)),
        returnsNormally,
      );
    });
  });
}
