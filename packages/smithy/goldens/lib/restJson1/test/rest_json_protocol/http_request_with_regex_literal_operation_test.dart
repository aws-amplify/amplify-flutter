// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.http_request_with_regex_literal_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/http_request_with_regex_literal_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_request_with_regex_literal_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonToleratesRegexCharsInSegments (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpRequestWithRegexLiteralOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonToleratesRegexCharsInSegments',
          documentation:
              'Path matching is not broken by regex expressions in literal segments',
          protocol: _i3.ShapeId(
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

class HttpRequestWithRegexLiteralInputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<HttpRequestWithRegexLiteralInput> {
  const HttpRequestWithRegexLiteralInputRestJson1Serializer()
      : super('HttpRequestWithRegexLiteralInput');

  @override
  Iterable<Type> get types => const [HttpRequestWithRegexLiteralInput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  HttpRequestWithRegexLiteralInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpRequestWithRegexLiteralInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'str':
          result.str = (serializers.deserialize(
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
    HttpRequestWithRegexLiteralInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
