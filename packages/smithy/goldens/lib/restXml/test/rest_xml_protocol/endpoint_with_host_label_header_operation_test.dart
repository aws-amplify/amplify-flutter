// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.endpoint_with_host_label_header_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/host_label_header_input.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/endpoint_with_host_label_header_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestXmlEndpointTraitWithHostLabelAndHttpBinding (request)',
    () async {
      await _i2.httpRequestTest(
        operation: EndpointWithHostLabelHeaderOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlEndpointTraitWithHostLabelAndHttpBinding',
          documentation:
              'Operations can prepend to the given host if they define the\nendpoint trait, and can use the host label trait to define\nfurther customization based on user input. The label must also\nbe serialized in into any other location it is bound to, such\nas the body or in this case an http header.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: 'application/xml',
          params: {'accountId': 'bar'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Amz-Account-Id': 'bar'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/EndpointWithHostLabelHeaderOperation',
          host: 'example.com',
          resolvedHost: 'bar.example.com',
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [HostLabelHeaderInputRestXmlSerializer()],
      );
    },
  );
}

class HostLabelHeaderInputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<HostLabelHeaderInput> {
  const HostLabelHeaderInputRestXmlSerializer() : super('HostLabelHeaderInput');

  @override
  Iterable<Type> get types => const [HostLabelHeaderInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  HostLabelHeaderInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostLabelHeaderInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accountId':
          result.accountId = (serializers.deserialize(
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
    HostLabelHeaderInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
