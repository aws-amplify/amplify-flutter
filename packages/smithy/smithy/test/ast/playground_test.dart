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

const playgroundV1 = '''
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

const playgroundV2 = '''
{
    "smithy": "2.0",
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
            "type": "enum",
            "members": {
              "VARIANT_1": {
                "target": "smithy.api#Unit",
                "traits": {
                  "smithy.api#enumValue": "rawValue1"
                }
              },
              "VARIANT_2": {
                "target": "smithy.api#Unit",
                "traits": {
                  "smithy.api#enumValue": "rawValue2"
                }
              }
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
    test('V1 Parse', () {
      expect(
        () => SmithyAst.fromJson(
          jsonDecode(playgroundV1) as Map<String, Object?>,
        ),
        returnsNormally,
      );
    });

    test('V2 Parse', () {
      expect(
        () => SmithyAst.fromJson(
          jsonDecode(playgroundV2) as Map<String, Object?>,
        ),
        returnsNormally,
      );
    });
  });
}
