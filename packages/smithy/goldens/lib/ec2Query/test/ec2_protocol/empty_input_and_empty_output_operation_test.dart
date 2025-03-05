// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library ec2_query_v1.ec2_protocol.test.empty_input_and_empty_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:ec2_query_v1/src/ec2_protocol/operation/empty_input_and_empty_output_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2QueryEmptyInputAndEmptyOutput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: EmptyInputAndEmptyOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2QueryEmptyInputAndEmptyOutput',
          documentation: 'Empty input serializes no extra query params',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body: 'Action=EmptyInputAndEmptyOutput&Version=2020-01-08',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {},
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
          EmptyInputAndEmptyOutputInputEc2QuerySerializer()
        ],
      );
    },
  );
  _i1.test(
    'Ec2QueryEmptyInputAndEmptyOutput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: EmptyInputAndEmptyOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2QueryEmptyInputAndEmptyOutput',
          documentation: 'Empty output',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<EmptyInputAndEmptyOutputResponse xmlns="https://example.com/">\n    <RequestId>requestid</RequestId>\n</EmptyInputAndEmptyOutputResponse>\n',
          bodyMediaType: 'application/xml',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          EmptyInputAndEmptyOutputOutputEc2QuerySerializer()
        ],
      );
    },
  );
}

class EmptyInputAndEmptyOutputInputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<EmptyInputAndEmptyOutputInput> {
  const EmptyInputAndEmptyOutputInputEc2QuerySerializer()
      : super('EmptyInputAndEmptyOutputInput');

  @override
  Iterable<Type> get types => const [EmptyInputAndEmptyOutputInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  EmptyInputAndEmptyOutputInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return EmptyInputAndEmptyOutputInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EmptyInputAndEmptyOutputInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class EmptyInputAndEmptyOutputOutputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<EmptyInputAndEmptyOutputOutput> {
  const EmptyInputAndEmptyOutputOutputEc2QuerySerializer()
      : super('EmptyInputAndEmptyOutputOutput');

  @override
  Iterable<Type> get types => const [EmptyInputAndEmptyOutputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  EmptyInputAndEmptyOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return EmptyInputAndEmptyOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EmptyInputAndEmptyOutputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
