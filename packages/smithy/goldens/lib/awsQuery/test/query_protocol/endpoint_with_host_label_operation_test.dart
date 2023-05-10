// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.endpoint_with_host_label_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/host_label_input.dart'
    as _i5;
import 'package:aws_query_v1/src/query_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsQueryEndpointTraitWithHostLabel (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.EndpointWithHostLabelOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsQueryEndpointTraitWithHostLabel',
          documentation:
              'Operations can prepend to the given host if they define the\nendpoint trait, and can use the host label trait to define\nfurther customization based on user input.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=EndpointWithHostLabelOperation&Version=2020-01-08&label=bar',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {'label': 'bar'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
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
          requireQueryParams: [],
        ),
        inputSerializers: const [HostLabelInputAwsQuerySerializer()],
      );
    },
  );
}

class HostLabelInputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.HostLabelInput> {
  const HostLabelInputAwsQuerySerializer() : super('HostLabelInput');

  @override
  Iterable<Type> get types => const [_i5.HostLabelInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.HostLabelInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HostLabelInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'label':
          result.label = (serializers.deserialize(
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
    _i5.HostLabelInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
