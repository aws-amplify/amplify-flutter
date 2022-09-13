// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1.rest_json_protocol.test.http_checksum_required_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/http_checksum_required_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/operation/http_checksum_required_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpChecksumRequired (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HttpChecksumRequiredOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonHttpChecksumRequired',
              documentation: 'Adds Content-MD5 header',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "foo":"base64 encoded md5 checksum"\n}\n',
              bodyMediaType: 'application/json',
              params: {'foo': 'base64 encoded md5 checksum'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {
                'Content-Type': 'application/json',
                'Content-MD5': 'iB0/3YSo7maijL0IGOgA9g=='
              },
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/HttpChecksumRequired',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            HttpChecksumRequiredInputOutputRestJson1Serializer()
          ]);
    },
  );
}

class HttpChecksumRequiredInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpChecksumRequiredInputOutput> {
  const HttpChecksumRequiredInputOutputRestJson1Serializer()
      : super('HttpChecksumRequiredInputOutput');

  @override
  Iterable<Type> get types => const [_i5.HttpChecksumRequiredInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.HttpChecksumRequiredInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpChecksumRequiredInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
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
