// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.endpoint_with_host_label_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/host_label_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/endpoint_with_host_label_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestXmlEndpointTraitWithHostLabel (request)', () async {
    await _i2.httpRequestTest(
      operation: EndpointWithHostLabelOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestXmlEndpointTraitWithHostLabel',
        documentation:
            'Operations can prepend to the given host if they define the\nendpoint trait, and can use the host label trait to define\nfurther customization based on user input.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '<HostLabelInput>\n    <label>bar</label>\n</HostLabelInput>\n',
        bodyMediaType: 'application/xml',
        params: {'label': 'bar'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/EndpointWithHostLabelOperation',
        host: 'example.com',
        resolvedHost: 'foo.bar.example.com',
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [HostLabelInputRestXmlSerializer()],
    );
  });
}

class HostLabelInputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<HostLabelInput> {
  const HostLabelInputRestXmlSerializer() : super('HostLabelInput');

  @override
  Iterable<Type> get types => const [HostLabelInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  HostLabelInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostLabelInputBuilder();
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
          result.label =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HostLabelInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
