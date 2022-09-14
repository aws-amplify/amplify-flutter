// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_1_v2.json_protocol.test.endpoint_with_host_label_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/model/host_label_input.dart'
    as _i6;
import 'package:aws_json1_1_v2/src/json_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i3;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson11EndpointTraitWithHostLabel (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.EndpointWithHostLabelOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com'),
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson11EndpointTraitWithHostLabel',
              documentation:
                  'Operations can prepend to the given host if they define the\nendpoint trait, and can use the host label trait to define\nfurther customization based on user input.',
              protocol: _i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
              authScheme: null,
              body: '{"label": "bar"}',
              bodyMediaType: 'application/json',
              params: {'label': 'bar'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/',
              host: 'example.com',
              resolvedHost: 'foo.bar.example.com',
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [HostLabelInputAwsJson11Serializer()]);
    },
  );
}

class HostLabelInputAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<_i6.HostLabelInput> {
  const HostLabelInputAwsJson11Serializer() : super('HostLabelInput');

  @override
  Iterable<Type> get types => const [_i6.HostLabelInput];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i6.HostLabelInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.HostLabelInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'label':
          result.label = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
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
