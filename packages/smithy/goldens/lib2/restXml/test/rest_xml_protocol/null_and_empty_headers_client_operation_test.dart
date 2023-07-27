// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.null_and_empty_headers_client_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/null_and_empty_headers_io.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/null_and_empty_headers_client_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'NullAndEmptyHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.NullAndEmptyHeadersClientOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'NullAndEmptyHeaders',
          documentation:
              'Do not send null values, empty strings, or empty lists over the wire in headers',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'a': null,
            'b': '',
            'c': [],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [
            'X-A',
            'X-B',
            'X-C',
          ],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          method: 'GET',
          uri: '/NullAndEmptyHeadersClient',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [NullAndEmptyHeadersIoRestXmlSerializer()],
      );
    },
  );
}

class NullAndEmptyHeadersIoRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.NullAndEmptyHeadersIo> {
  const NullAndEmptyHeadersIoRestXmlSerializer()
      : super('NullAndEmptyHeadersIo');

  @override
  Iterable<Type> get types => const [_i5.NullAndEmptyHeadersIo];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.NullAndEmptyHeadersIo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.NullAndEmptyHeadersIoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'a':
          result.a = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'b':
          result.b = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'c':
          result.c.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.NullAndEmptyHeadersIo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
