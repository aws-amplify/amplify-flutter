// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library ec2_query_v1.ec2_protocol.test.query_lists_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/greeting_struct.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/nested_struct_with_list.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/query_lists_input.dart';
import 'package:ec2_query_v1/src/ec2_protocol/operation/query_lists_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2Lists (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2Lists',
          documentation: 'Serializes query lists. All EC2 lists are flattened.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&ListArg.1=foo&ListArg.2=bar&ListArg.3=baz&ComplexListArg.1.Hi=hello&ComplexListArg.2.Hi=hola',
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
          QueryListsInputEc2QuerySerializer(),
          GreetingStructEc2QuerySerializer(),
          NestedStructWithListEc2QuerySerializer(),
        ],
      );
    },
  );
  _i1.test('Ec2EmptyQueryLists (request)', () async {
    await _i2.httpRequestTest(
      operation: QueryListsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'Ec2EmptyQueryLists',
        documentation: 'Serializes empty query lists',
        protocol: _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
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
        QueryListsInputEc2QuerySerializer(),
        GreetingStructEc2QuerySerializer(),
        NestedStructWithListEc2QuerySerializer(),
      ],
    );
  }, skip: 'Unclear how to reconcile with QueryEmptyQueryMaps');
  _i1.test(
    'Ec2ListArgWithXmlNameMember (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2ListArgWithXmlNameMember',
          documentation:
              'An xmlName trait in the member of a list has no effect on the list serialization.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&ListArgWithXmlNameMember.1=A&ListArgWithXmlNameMember.2=B',
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
          QueryListsInputEc2QuerySerializer(),
          GreetingStructEc2QuerySerializer(),
          NestedStructWithListEc2QuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'Ec2ListMemberWithXmlName (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2ListMemberWithXmlName',
          documentation: 'Changes the name of the list using the xmlName trait',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body: 'Action=QueryLists&Version=2020-01-08&Hi.1=A&Hi.2=B',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'ListArgWithXmlName': [
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
          QueryListsInputEc2QuerySerializer(),
          GreetingStructEc2QuerySerializer(),
          NestedStructWithListEc2QuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'Ec2ListNestedStructWithList (request)',
    () async {
      await _i2.httpRequestTest(
        operation: QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2ListNestedStructWithList',
          documentation: 'Nested structure with a list member',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&NestedWithList.ListArg.1=A&NestedWithList.ListArg.2=B',
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
          QueryListsInputEc2QuerySerializer(),
          GreetingStructEc2QuerySerializer(),
          NestedStructWithListEc2QuerySerializer(),
        ],
      );
    },
  );
}

class QueryListsInputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<QueryListsInput> {
  const QueryListsInputEc2QuerySerializer() : super('QueryListsInput');

  @override
  Iterable<Type> get types => const [QueryListsInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
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
        case 'ListArgWithXmlNameMember':
          result.listArgWithXmlNameMember.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ListArgWithXmlName':
          result.listArgWithXmlName.replace((serializers.deserialize(
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

class GreetingStructEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructEc2QuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
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

class NestedStructWithListEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NestedStructWithList> {
  const NestedStructWithListEc2QuerySerializer()
      : super('NestedStructWithList');

  @override
  Iterable<Type> get types => const [NestedStructWithList];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
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
