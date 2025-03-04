// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_json1_0_v2.json_rpc_10.test.endpoint_with_host_label_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v2/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/endpoint_with_host_label_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10EndpointTraitWithHostLabel (request)',
    () async {
      await _i2.httpRequestTest(
        operation: EndpointWithHostLabelOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'AwsJson10EndpointTraitWithHostLabel',
          documentation:
              'Operations can prepend to the given host if they define the\nendpoint trait, and can use the host label trait to define\nfurther customization based on user input.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
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
          requireQueryParams: [],
        ),
        inputSerializers: const [
          EndpointWithHostLabelOperationInputAwsJson10Serializer()
        ],
      );
    },
  );
}

class EndpointWithHostLabelOperationInputAwsJson10Serializer extends _i3
    .StructuredSmithySerializer<EndpointWithHostLabelOperationInput> {
  const EndpointWithHostLabelOperationInputAwsJson10Serializer()
      : super('EndpointWithHostLabelOperationInput');

  @override
  Iterable<Type> get types => const [EndpointWithHostLabelOperationInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];

  @override
  EndpointWithHostLabelOperationInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointWithHostLabelOperationInputBuilder();
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
    EndpointWithHostLabelOperationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
