// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.json_lists_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_lists_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/structure_list_member.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/json_lists_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonLists (request)',
    () async {
      await _i2.httpRequestTest(
        operation: JsonListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonLists',
          documentation: 'Serializes JSON lists',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "stringList": [\n        "foo",\n        "bar"\n    ],\n    "stringSet": [\n        "foo",\n        "bar"\n    ],\n    "integerList": [\n        1,\n        2\n    ],\n    "booleanList": [\n        true,\n        false\n    ],\n    "timestampList": [\n        1398796238,\n        1398796238\n    ],\n    "enumList": [\n        "Foo",\n        "0"\n    ],\n    "intEnumList": [\n        1,\n        2\n    ],\n    "nestedStringList": [\n        [\n            "foo",\n            "bar"\n        ],\n        [\n            "baz",\n            "qux"\n        ]\n    ],\n    "myStructureList": [\n        {\n            "value": "1",\n            "other": "2"\n        },\n        {\n            "value": "3",\n            "other": "4"\n        }\n    ]\n}',
          bodyMediaType: 'application/json',
          params: {
            'stringList': [
              'foo',
              'bar',
            ],
            'stringSet': [
              'foo',
              'bar',
            ],
            'integerList': [
              1,
              2,
            ],
            'booleanList': [
              true,
              false,
            ],
            'timestampList': [
              1398796238,
              1398796238,
            ],
            'enumList': [
              'Foo',
              '0',
            ],
            'intEnumList': [
              1,
              2,
            ],
            'nestedStringList': [
              [
                'foo',
                'bar',
              ],
              [
                'baz',
                'qux',
              ],
            ],
            'structureList': [
              {
                'a': '1',
                'b': '2',
              },
              {
                'a': '3',
                'b': '4',
              },
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonLists',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonListsInputOutputRestJson1Serializer(),
          StructureListMemberRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonListsEmpty (request)',
    () async {
      await _i2.httpRequestTest(
        operation: JsonListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonListsEmpty',
          documentation: 'Serializes empty JSON lists',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "stringList": []\n}',
          bodyMediaType: 'application/json',
          params: {'stringList': []},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonLists',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonListsInputOutputRestJson1Serializer(),
          StructureListMemberRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonListsSerializeNull (request)',
    () async {
      await _i2.httpRequestTest(
        operation: JsonListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonListsSerializeNull',
          documentation: 'Serializes null values in lists',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "sparseStringList": [\n        null,\n        "hi"\n    ]\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringList': [
              null,
              'hi',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/JsonLists',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonListsInputOutputRestJson1Serializer(),
          StructureListMemberRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonLists (response)',
    () async {
      await _i2.httpResponseTest(
        operation: JsonListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonLists',
          documentation: 'Serializes JSON lists',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "stringList": [\n        "foo",\n        "bar"\n    ],\n    "stringSet": [\n        "foo",\n        "bar"\n    ],\n    "integerList": [\n        1,\n        2\n    ],\n    "booleanList": [\n        true,\n        false\n    ],\n    "timestampList": [\n        1398796238,\n        1398796238\n    ],\n    "enumList": [\n        "Foo",\n        "0"\n    ],\n    "intEnumList": [\n        1,\n        2\n    ],\n    "nestedStringList": [\n        [\n            "foo",\n            "bar"\n        ],\n        [\n            "baz",\n            "qux"\n        ]\n    ],\n    "myStructureList": [\n        {\n            "value": "1",\n            "other": "2"\n        },\n        {\n            "value": "3",\n            "other": "4"\n        }\n    ]\n}',
          bodyMediaType: 'application/json',
          params: {
            'stringList': [
              'foo',
              'bar',
            ],
            'stringSet': [
              'foo',
              'bar',
            ],
            'integerList': [
              1,
              2,
            ],
            'booleanList': [
              true,
              false,
            ],
            'timestampList': [
              1398796238,
              1398796238,
            ],
            'enumList': [
              'Foo',
              '0',
            ],
            'intEnumList': [
              1,
              2,
            ],
            'nestedStringList': [
              [
                'foo',
                'bar',
              ],
              [
                'baz',
                'qux',
              ],
            ],
            'structureList': [
              {
                'a': '1',
                'b': '2',
              },
              {
                'a': '3',
                'b': '4',
              },
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonListsInputOutputRestJson1Serializer(),
          StructureListMemberRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonListsEmpty (response)',
    () async {
      await _i2.httpResponseTest(
        operation: JsonListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonListsEmpty',
          documentation: 'Serializes empty JSON lists',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "stringList": []\n}',
          bodyMediaType: 'application/json',
          params: {'stringList': []},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonListsInputOutputRestJson1Serializer(),
          StructureListMemberRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonListsSerializeNull (response)',
    () async {
      await _i2.httpResponseTest(
        operation: JsonListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonListsSerializeNull',
          documentation: 'Serializes null values in sparse lists',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "sparseStringList": [\n        null,\n        "hi"\n    ]\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringList': [
              null,
              'hi',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonListsInputOutputRestJson1Serializer(),
          StructureListMemberRestJson1Serializer(),
        ],
      );
    },
  );
}

class JsonListsInputOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<JsonListsInputOutput> {
  const JsonListsInputOutputRestJson1Serializer()
      : super('JsonListsInputOutput');

  @override
  Iterable<Type> get types => const [JsonListsInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  JsonListsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonListsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'stringList':
          result.stringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'sparseStringList':
          result.sparseStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType.nullable(String)],
            ),
          ) as _i4.BuiltList<String?>));
        case 'stringSet':
          result.stringSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(String)],
            ),
          ) as _i4.BuiltSet<String>));
        case 'integerList':
          result.integerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(int)],
            ),
          ) as _i4.BuiltList<int>));
        case 'booleanList':
          result.booleanList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(bool)],
            ),
          ) as _i4.BuiltList<bool>));
        case 'timestampList':
          result.timestampList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i4.BuiltList<DateTime>));
        case 'enumList':
          result.enumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(FooEnum)],
            ),
          ) as _i4.BuiltList<FooEnum>));
        case 'intEnumList':
          result.intEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(IntegerEnum)],
            ),
          ) as _i4.BuiltList<IntegerEnum>));
        case 'nestedStringList':
          result.nestedStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [
                FullType(
                  _i4.BuiltList,
                  [FullType(String)],
                )
              ],
            ),
          ) as _i4.BuiltList<_i4.BuiltList<String>>));
        case 'structureList':
          result.structureList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(StructureListMember)],
            ),
          ) as _i4.BuiltList<StructureListMember>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonListsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class StructureListMemberRestJson1Serializer
    extends _i3.StructuredSmithySerializer<StructureListMember> {
  const StructureListMemberRestJson1Serializer() : super('StructureListMember');

  @override
  Iterable<Type> get types => const [StructureListMember];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  StructureListMember deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructureListMemberBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'a':
          result.a = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'b':
          result.b = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StructureListMember object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
