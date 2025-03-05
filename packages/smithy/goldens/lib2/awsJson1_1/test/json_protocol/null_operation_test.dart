// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_json1_1_v2.json_protocol.test.null_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/model/null_operation_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/null_operation.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson11StructuresDontSerializeNullValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: NullOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson11StructuresDontSerializeNullValues',
          documentation: 'Null structure values are dropped',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{}',
          bodyMediaType: 'application/json',
          params: {'string': null},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.NullOperation',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [NullOperationInputOutputAwsJson11Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson11MapsSerializeNullValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: NullOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson11MapsSerializeNullValues',
          documentation: 'Serializes null values in maps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{\n    "sparseStringMap": {\n        "foo": null\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringMap': {'foo': null}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.NullOperation',
          },
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
        inputSerializers: const [NullOperationInputOutputAwsJson11Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson11ListsSerializeNull (request)',
    () async {
      await _i2.httpRequestTest(
        operation: NullOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson11ListsSerializeNull',
          documentation: 'Serializes null values in lists',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{\n    "sparseStringList": [\n        null\n    ]\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringList': [null]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.NullOperation',
          },
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
        inputSerializers: const [NullOperationInputOutputAwsJson11Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson11StructuresDontDeserializeNullValues (response)',
    () async {
      await _i2.httpResponseTest(
        operation: NullOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson11StructuresDontDeserializeNullValues',
          documentation: 'Null structure values are dropped',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{\n    "string": null\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [
          NullOperationInputOutputAwsJson11Serializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsJson11MapsDeserializeNullValues (response)',
    () async {
      await _i2.httpResponseTest(
        operation: NullOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson11MapsDeserializeNullValues',
          documentation: 'Deserializes null values in maps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{\n    "sparseStringMap": {\n        "foo": null\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringMap': {'foo': null}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          NullOperationInputOutputAwsJson11Serializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsJson11ListsDeserializeNull (response)',
    () async {
      await _i2.httpResponseTest(
        operation: NullOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider:
              const _i3.AWSCredentialsProvider(_i3.AWSCredentials(
            'DUMMY-ACCESS-KEY-ID',
            'DUMMY-SECRET-ACCESS-KEY',
          )),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson11ListsDeserializeNull',
          documentation: 'Deserializes null values in lists',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{\n    "sparseStringList": [\n        null\n    ]\n}',
          bodyMediaType: 'application/json',
          params: {
            'sparseStringList': [null]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.1'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          NullOperationInputOutputAwsJson11Serializer()
        ],
      );
    },
  );
}

class NullOperationInputOutputAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<NullOperationInputOutput> {
  const NullOperationInputOutputAwsJson11Serializer()
      : super('NullOperationInputOutput');

  @override
  Iterable<Type> get types => const [NullOperationInputOutput];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  NullOperationInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NullOperationInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'string':
          result.string = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sparseStringList':
          result.sparseStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType.nullable(String)],
            ),
          ) as _i5.BuiltList<String?>));
        case 'sparseStringMap':
          result.sparseStringMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType.nullable(String),
              ],
            ),
          ) as _i5.BuiltMap<String, String?>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NullOperationInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
