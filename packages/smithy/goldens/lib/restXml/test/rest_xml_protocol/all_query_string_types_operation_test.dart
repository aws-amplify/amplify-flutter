// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml.rest_xml_protocol.test.all_query_string_types_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i8;
import 'package:rest_xml/src/rest_xml_protocol/model/all_query_string_types_input.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/model/foo_enum.dart' as _i7;
import 'package:rest_xml/src/rest_xml_protocol/operation/all_query_string_types_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AllQueryStringTypes (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.AllQueryStringTypesOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AllQueryStringTypes',
              documentation:
                  'Serializes query string parameters with all supported types',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {
                'queryString': 'Hello there',
                'queryStringList': ['a', 'b', 'c'],
                'queryStringSet': ['a', 'b', 'c'],
                'queryByte': 1,
                'queryShort': 2,
                'queryInteger': 3,
                'queryIntegerList': [1, 2, 3],
                'queryIntegerSet': [1, 2, 3],
                'queryLong': 4,
                'queryFloat': 1.1,
                'queryDouble': 1.1,
                'queryDoubleList': [1.1, 2.1, 3.1],
                'queryBoolean': true,
                'queryBooleanList': [true, false, true],
                'queryTimestamp': 1,
                'queryTimestampList': [1, 2, 3],
                'queryEnum': 'Foo',
                'queryEnumList': ['Foo', 'Baz', 'Bar']
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
                'EnumList=Bar'
              ],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            AllQueryStringTypesInputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'RestXmlQueryStringMap (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.AllQueryStringTypesOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestXmlQueryStringMap',
              documentation: 'Handles query string maps',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {
                'queryParamsMapOfStrings': {
                  'QueryParamsStringKeyA': 'Foo',
                  'QueryParamsStringKeyB': 'Bar'
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
                'QueryParamsStringKeyB=Bar'
              ],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            AllQueryStringTypesInputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'RestXmlSupportsNaNFloatQueryValues (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.AllQueryStringTypesOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestXmlSupportsNaNFloatQueryValues',
              documentation: 'Supports handling NaN float query values.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'queryFloat': 'NaN', 'queryDouble': 'NaN'},
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
              queryParams: ['Float=NaN', 'Double=NaN'],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            AllQueryStringTypesInputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'RestXmlSupportsInfinityFloatQueryValues (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.AllQueryStringTypesOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestXmlSupportsInfinityFloatQueryValues',
              documentation: 'Supports handling Infinity float query values.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'queryFloat': 'Infinity', 'queryDouble': 'Infinity'},
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
              queryParams: ['Float=Infinity', 'Double=Infinity'],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            AllQueryStringTypesInputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'RestXmlSupportsNegativeInfinityFloatQueryValues (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.AllQueryStringTypesOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestXmlSupportsNegativeInfinityFloatQueryValues',
              documentation: 'Supports handling -Infinity float query values.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'queryFloat': '-Infinity', 'queryDouble': '-Infinity'},
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
              queryParams: ['Float=-Infinity', 'Double=-Infinity'],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            AllQueryStringTypesInputRestXmlSerializer()
          ]);
    },
  );
}

class AllQueryStringTypesInputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.AllQueryStringTypesInput> {
  const AllQueryStringTypesInputRestXmlSerializer()
      : super('AllQueryStringTypesInput');

  @override
  Iterable<Type> get types => const [_i5.AllQueryStringTypesInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.AllQueryStringTypesInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.AllQueryStringTypesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'queryBoolean':
          if (value != null) {
            result.queryBoolean = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
        case 'queryBooleanList':
          if (value != null) {
            result.queryBooleanList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(bool)]))
                as _i6.BuiltList<bool>));
          }
          break;
        case 'queryByte':
          if (value != null) {
            result.queryByte = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'queryDouble':
          if (value != null) {
            result.queryDouble = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'queryDoubleList':
          if (value != null) {
            result.queryDoubleList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(double)]))
                as _i6.BuiltList<double>));
          }
          break;
        case 'queryEnum':
          if (value != null) {
            result.queryEnum = (serializers.deserialize(value,
                specifiedType: const FullType(_i7.FooEnum)) as _i7.FooEnum);
          }
          break;
        case 'queryEnumList':
          if (value != null) {
            result.queryEnumList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(_i7.FooEnum)]))
                as _i6.BuiltList<_i7.FooEnum>));
          }
          break;
        case 'queryFloat':
          if (value != null) {
            result.queryFloat = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'queryInteger':
          if (value != null) {
            result.queryInteger = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'queryIntegerList':
          if (value != null) {
            result.queryIntegerList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(int)]))
                as _i6.BuiltList<int>));
          }
          break;
        case 'queryIntegerSet':
          if (value != null) {
            result.queryIntegerSet.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(int)]))
                as _i6.BuiltList<int>));
          }
          break;
        case 'queryLong':
          if (value != null) {
            result.queryLong = (serializers.deserialize(value,
                specifiedType: const FullType(_i8.Int64)) as _i8.Int64);
          }
          break;
        case 'queryParamsMapOfStrings':
          if (value != null) {
            result.queryParamsMapOfStrings.replace((serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                        _i6.BuiltMap, [FullType(String), FullType(String)]))
                as _i6.BuiltMap<String, String>));
          }
          break;
        case 'queryShort':
          if (value != null) {
            result.queryShort = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'queryString':
          if (value != null) {
            result.queryString = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'queryStringList':
          if (value != null) {
            result.queryStringList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(String)]))
                as _i6.BuiltList<String>));
          }
          break;
        case 'queryStringSet':
          if (value != null) {
            result.queryStringSet.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(String)]))
                as _i6.BuiltList<String>));
          }
          break;
        case 'queryTimestamp':
          if (value != null) {
            result.queryTimestamp = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
          }
          break;
        case 'queryTimestampList':
          if (value != null) {
            result.queryTimestampList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(DateTime)]))
                as _i6.BuiltList<DateTime>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
