// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.endpoint_with_host_label_header_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/host_label_header_input.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/endpoint_with_host_label_header_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestXmlEndpointTraitWithHostLabelAndHttpBinding (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.EndpointWithHostLabelHeaderOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlEndpointTraitWithHostLabelAndHttpBinding',
          documentation:
              'Operations can prepend to the given host if they define the\nendpoint trait, and can use the host label trait to define\nfurther customization based on user input. The label must also\nbe serialized in into any other location it is bound to, such\nas the body or in this case an http header.',
          protocol: _i4.ShapeId(
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
    extends _i4.StructuredSmithySerializer<_i5.HostLabelHeaderInput> {
  const HostLabelHeaderInputRestXmlSerializer() : super('HostLabelHeaderInput');

  @override
  Iterable<Type> get types => const [_i5.HostLabelHeaderInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.HostLabelHeaderInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HostLabelHeaderInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'accountId':
          result.accountId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
