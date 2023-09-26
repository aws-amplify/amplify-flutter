// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.all_query_string_types_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/all_query_string_types_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/all_query_string_types_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AllQueryStringTypes (request)',
    () async {
      await _i2.httpRequestTest(
        operation: AllQueryStringTypesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AllQueryStringTypes',
          documentation:
              'Serializes query string parameters with all supported types',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'queryString': 'Hello there',
            'queryStringList': [
              'a',
              'b',
              'c',
            ],
            'queryStringSet': [
              'a',
              'b',
              'c',
            ],
            'queryByte': 1,
            'queryShort': 2,
            'queryInteger': 3,
            'queryIntegerList': [
              1,
              2,
              3,
            ],
            'queryIntegerSet': [
              1,
              2,
              3,
            ],
            'queryLong': 4,
            'queryFloat': 1.1,
            'queryDouble': 1.1,
            'queryDoubleList': [
              1.1,
              2.1,
              3.1,
            ],
            'queryBoolean': true,
            'queryBooleanList': [
              true,
              false,
              true,
            ],
            'queryTimestamp': 1,
            'queryTimestampList': [
              1,
              2,
              3,
            ],
            'queryEnum': 'Foo',
            'queryEnumList': [
              'Foo',
              'Baz',
              'Bar',
            ],
            'queryIntegerEnum': 1,
            'queryIntegerEnumList': [
              1,
              2,
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/AllQueryStringTypesInput',
          host: null,
          resolvedHost: null,
          queryParams: [
            'String=Hello%20there',
            'StringList=a',
            'StringList=b',
            'StringList=c',
            'StringSet=a',
            'StringSet=b',
            'StringSet=c',
            'Byte=1',
            'Short=2',
            'Integer=3',
            'IntegerList=1',
            'IntegerList=2',
            'IntegerList=3',
            'IntegerSet=1',
            'IntegerSet=2',
            'IntegerSet=3',
            'Long=4',
            'Float=1.1',
            'Double=1.1',
            'DoubleList=1.1',
            'DoubleList=2.1',
            'DoubleList=3.1',
            'Boolean=true',
            'BooleanList=true',
            'BooleanList=false',
            'BooleanList=true',
            'Timestamp=1970-01-01T00%3A00%3A01Z',
            'TimestampList=1970-01-01T00%3A00%3A01Z',
            'TimestampList=1970-01-01T00%3A00%3A02Z',
            'TimestampList=1970-01-01T00%3A00%3A03Z',
            'Enum=Foo',
            'EnumList=Foo',
            'EnumList=Baz',
            'EnumList=Bar',
            'IntegerEnum=1',
            'IntegerEnumList=1',
            'IntegerEnumList=2',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [AllQueryStringTypesInputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'RestXmlQueryStringMap (request)',
    () async {
      await _i2.httpRequestTest(
        operation: AllQueryStringTypesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlQueryStringMap',
          documentation: 'Handles query string maps',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'queryParamsMapOfStrings': {
              'QueryParamsStringKeyA': 'Foo',
              'QueryParamsStringKeyB': 'Bar',
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/AllQueryStringTypesInput',
          host: null,
          resolvedHost: null,
          queryParams: [
            'QueryParamsStringKeyA=Foo',
            'QueryParamsStringKeyB=Bar',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [AllQueryStringTypesInputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'RestXmlQueryStringEscaping (request)',
    () async {
      await _i2.httpRequestTest(
        operation: AllQueryStringTypesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlQueryStringEscaping',
          documentation:
              'Handles escaping all required characters in the query string.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'queryString': ' %:/?#[]@!\$&\'()*+,;=😹'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/AllQueryStringTypesInput',
          host: null,
          resolvedHost: null,
          queryParams: [
            'String=%20%25%3A%2F%3F%23%5B%5D%40%21%24%26%27%28%29%2A%2B%2C%3B%3D%F0%9F%98%B9'
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [AllQueryStringTypesInputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'RestXmlSupportsNaNFloatQueryValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: AllQueryStringTypesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlSupportsNaNFloatQueryValues',
          documentation: 'Supports handling NaN float query values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'queryFloat': 'NaN',
            'queryDouble': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/AllQueryStringTypesInput',
          host: null,
          resolvedHost: null,
          queryParams: [
            'Float=NaN',
            'Double=NaN',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [AllQueryStringTypesInputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'RestXmlSupportsInfinityFloatQueryValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: AllQueryStringTypesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlSupportsInfinityFloatQueryValues',
          documentation: 'Supports handling Infinity float query values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'queryFloat': 'Infinity',
            'queryDouble': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/AllQueryStringTypesInput',
          host: null,
          resolvedHost: null,
          queryParams: [
            'Float=Infinity',
            'Double=Infinity',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [AllQueryStringTypesInputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'RestXmlSupportsNegativeInfinityFloatQueryValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: AllQueryStringTypesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlSupportsNegativeInfinityFloatQueryValues',
          documentation: 'Supports handling -Infinity float query values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'queryFloat': '-Infinity',
            'queryDouble': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/AllQueryStringTypesInput',
          host: null,
          resolvedHost: null,
          queryParams: [
            'Float=-Infinity',
            'Double=-Infinity',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [AllQueryStringTypesInputRestXmlSerializer()],
      );
    },
  );
}

class AllQueryStringTypesInputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<AllQueryStringTypesInput> {
  const AllQueryStringTypesInputRestXmlSerializer()
      : super('AllQueryStringTypesInput');

  @override
  Iterable<Type> get types => const [AllQueryStringTypesInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  AllQueryStringTypesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllQueryStringTypesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'queryString':
          result.queryString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'queryStringList':
          result.queryStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'queryStringSet':
          result.queryStringSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(String)],
            ),
          ) as _i4.BuiltSet<String>));
        case 'queryByte':
          result.queryByte = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'queryShort':
          result.queryShort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'queryInteger':
          result.queryInteger = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'queryIntegerList':
          result.queryIntegerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(int)],
            ),
          ) as _i4.BuiltList<int>));
        case 'queryIntegerSet':
          result.queryIntegerSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(int)],
            ),
          ) as _i4.BuiltSet<int>));
        case 'queryLong':
          result.queryLong = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Int64),
          ) as _i5.Int64);
        case 'queryFloat':
          result.queryFloat = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'queryDouble':
          result.queryDouble = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'queryDoubleList':
          result.queryDoubleList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(double)],
            ),
          ) as _i4.BuiltList<double>));
        case 'queryBoolean':
          result.queryBoolean = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'queryBooleanList':
          result.queryBooleanList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(bool)],
            ),
          ) as _i4.BuiltList<bool>));
        case 'queryTimestamp':
          result.queryTimestamp =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'queryTimestampList':
          result.queryTimestampList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i4.BuiltList<DateTime>));
        case 'queryEnum':
          result.queryEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(FooEnum),
          ) as FooEnum);
        case 'queryEnumList':
          result.queryEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(FooEnum)],
            ),
          ) as _i4.BuiltList<FooEnum>));
        case 'queryIntegerEnum':
          result.queryIntegerEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'queryIntegerEnumList':
          result.queryIntegerEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(int)],
            ),
          ) as _i4.BuiltList<int>));
        case 'queryParamsMapOfStrings':
          result.queryParamsMapOfStrings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AllQueryStringTypesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
