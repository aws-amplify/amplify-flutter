// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.query_lists_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/greeting_struct.dart';
import 'package:aws_query_v2/src/query_protocol/model/nested_struct_with_list.dart';
import 'package:aws_query_v2/src/query_protocol/model/query_lists_input.dart';
import 'package:aws_query_v2/src/query_protocol/operation/query_lists_operation.dart';
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryLists (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryLists',
          documentation: 'Serializes query lists',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&ListArg.member.1=foo&ListArg.member.2=bar&ListArg.member.3=baz&ComplexListArg.member.1.hi=hello&ComplexListArg.member.2.hi=hola',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'ListArg': [
              'foo',
              'bar',
              'baz',
            ],
            'ComplexListArg': [
              {'hi': 'hello'},
              {'hi': 'hola'},
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          QueryListsInputAwsQuerySerializer(),
          GreetingStructAwsQuerySerializer(),
          NestedStructWithListAwsQuerySerializer(),
        ],
      );
    },
  );
  _i1.test('EmptyQueryLists (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryListsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'EmptyQueryLists',
        documentation: 'Serializes empty query lists',
        protocol: _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        ),
        authScheme: null,
        body: 'Action=QueryLists&Version=2020-01-08&ListArg=',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {'ListArg': []},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        QueryListsInputAwsQuerySerializer(),
        GreetingStructAwsQuerySerializer(),
        NestedStructWithListAwsQuerySerializer(),
      ],
    );
  }, skip: 'Unclear how to reconcile with QueryEmptyQueryMaps');
  _i1.test(
    'FlattenedQueryLists (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'FlattenedQueryLists',
          documentation:
              'Flattens query lists by repeating the member name and removing the member element',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&FlattenedListArg.1=A&FlattenedListArg.2=B',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'FlattenedListArg': [
              'A',
              'B',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          QueryListsInputAwsQuerySerializer(),
          GreetingStructAwsQuerySerializer(),
          NestedStructWithListAwsQuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'QueryListArgWithXmlNameMember (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryListArgWithXmlNameMember',
          documentation: 'Changes the member of lists using xmlName trait',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&ListArgWithXmlNameMember.item.1=A&ListArgWithXmlNameMember.item.2=B',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'ListArgWithXmlNameMember': [
              'A',
              'B',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          QueryListsInputAwsQuerySerializer(),
          GreetingStructAwsQuerySerializer(),
          NestedStructWithListAwsQuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'QueryFlattenedListArgWithXmlName (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryFlattenedListArgWithXmlName',
          documentation:
              'Changes the name of flattened lists using xmlName trait on the structure member',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body: 'Action=QueryLists&Version=2020-01-08&Hi.1=A&Hi.2=B',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'FlattenedListArgWithXmlName': [
              'A',
              'B',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          QueryListsInputAwsQuerySerializer(),
          GreetingStructAwsQuerySerializer(),
          NestedStructWithListAwsQuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'QueryNestedStructWithList (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'QueryNestedStructWithList',
          documentation: 'Nested structure with a list member',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&NestedWithList.ListArg.member.1=A&NestedWithList.ListArg.member.2=B',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'NestedWithList': {
              'ListArg': [
                'A',
                'B',
              ]
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          QueryListsInputAwsQuerySerializer(),
          GreetingStructAwsQuerySerializer(),
          NestedStructWithListAwsQuerySerializer(),
        ],
      );
    },
  );
}

class QueryListsInputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<QueryListsInput> {
  const QueryListsInputAwsQuerySerializer() : super('QueryListsInput');

  @override
  Iterable<Type> get types => const [QueryListsInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  QueryListsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryListsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ListArg':
          result.listArg.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ComplexListArg':
          result.complexListArg.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(GreetingStruct)],
            ),
          ) as _i4.BuiltList<GreetingStruct>));
        case 'FlattenedListArg':
          result.flattenedListArg.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ListArgWithXmlNameMember':
          result.listArgWithXmlNameMember.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'FlattenedListArgWithXmlName':
          result.flattenedListArgWithXmlName.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'NestedWithList':
          result.nestedWithList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NestedStructWithList),
          ) as NestedStructWithList));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryListsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructAwsQuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hi':
          result.hi = (serializers.deserialize(
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
    GreetingStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class NestedStructWithListAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<NestedStructWithList> {
  const NestedStructWithListAwsQuerySerializer()
      : super('NestedStructWithList');

  @override
  Iterable<Type> get types => const [NestedStructWithList];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  NestedStructWithList deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedStructWithListBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ListArg':
          result.listArg.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NestedStructWithList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
