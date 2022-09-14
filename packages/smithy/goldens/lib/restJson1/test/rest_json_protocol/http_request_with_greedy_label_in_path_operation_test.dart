// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1.rest_json_protocol.test.http_request_with_greedy_label_in_path_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/operation/http_request_with_greedy_label_in_path_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpRequestWithGreedyLabelInPath (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HttpRequestWithGreedyLabelInPathOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonHttpRequestWithGreedyLabelInPath',
              documentation: 'Serializes greedy labels and normal labels',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'foo': 'hello/escape', 'baz': 'there/guy'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'GET',
              uri:
                  '/HttpRequestWithGreedyLabelInPath/foo/hello%2Fescape/baz/there/guy',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            HttpRequestWithGreedyLabelInPathInputRestJson1Serializer()
          ]);
    },
  );
}

class HttpRequestWithGreedyLabelInPathInputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpRequestWithGreedyLabelInPathInput> {
  const HttpRequestWithGreedyLabelInPathInputRestJson1Serializer()
      : super('HttpRequestWithGreedyLabelInPathInput');

  @override
  Iterable<Type> get types => const [_i5.HttpRequestWithGreedyLabelInPathInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.HttpRequestWithGreedyLabelInPathInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpRequestWithGreedyLabelInPathInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'baz':
          result.baz = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'foo':
          result.foo = (serializers.deserialize(value!,
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
