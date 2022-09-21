// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.http_request_with_regex_literal_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/http_request_with_regex_literal_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonToleratesRegexCharsInSegments (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpRequestWithRegexLiteralOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonToleratesRegexCharsInSegments',
          documentation:
              'Path matching is not broken by regex expressions in literal segments',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'str': 'abc'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/ReDosLiteral/abc/(a+)+',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpRequestWithRegexLiteralInputRestJson1Serializer()
        ],
      );
    },
  );
}

class HttpRequestWithRegexLiteralInputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpRequestWithRegexLiteralInput> {
  const HttpRequestWithRegexLiteralInputRestJson1Serializer()
      : super('HttpRequestWithRegexLiteralInput');

  @override
  Iterable<Type> get types => const [_i5.HttpRequestWithRegexLiteralInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.HttpRequestWithRegexLiteralInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpRequestWithRegexLiteralInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'str':
          result.str = (serializers.deserialize(
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
