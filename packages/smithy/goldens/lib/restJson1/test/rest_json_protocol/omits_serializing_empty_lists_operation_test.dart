// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.omits_serializing_empty_lists_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/foo_enum.dart'
    as _i7;
import 'package:rest_json1_v1/src/rest_json_protocol/model/omits_serializing_empty_lists_input.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/omits_serializing_empty_lists_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonOmitsEmptyListQueryValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.OmitsSerializingEmptyListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonOmitsEmptyListQueryValues',
          documentation: 'Supports omitting empty lists.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'queryStringList': [],
            'queryIntegerList': [],
            'queryDoubleList': [],
            'queryBooleanList': [],
            'queryTimestampList': [],
            'queryEnumList': [],
            'queryIntegerEnumList': [],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/OmitsSerializingEmptyLists',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          OmitsSerializingEmptyListsInputRestJson1Serializer()
        ],
      );
    },
  );
}

class OmitsSerializingEmptyListsInputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.OmitsSerializingEmptyListsInput> {
  const OmitsSerializingEmptyListsInputRestJson1Serializer()
      : super('OmitsSerializingEmptyListsInput');

  @override
  Iterable<Type> get types => const [_i5.OmitsSerializingEmptyListsInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.OmitsSerializingEmptyListsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.OmitsSerializingEmptyListsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'queryBooleanList':
          if (value != null) {
            result.queryBooleanList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(bool)],
              ),
            ) as _i6.BuiltList<bool>));
          }
          break;
        case 'queryDoubleList':
          if (value != null) {
            result.queryDoubleList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(double)],
              ),
            ) as _i6.BuiltList<double>));
          }
          break;
        case 'queryEnumList':
          if (value != null) {
            result.queryEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i7.FooEnum)],
              ),
            ) as _i6.BuiltList<_i7.FooEnum>));
          }
          break;
        case 'queryIntegerEnumList':
          if (value != null) {
            result.queryIntegerEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(int)],
              ),
            ) as _i6.BuiltList<int>));
          }
          break;
        case 'queryIntegerList':
          if (value != null) {
            result.queryIntegerList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(int)],
              ),
            ) as _i6.BuiltList<int>));
          }
          break;
        case 'queryStringList':
          if (value != null) {
            result.queryStringList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'queryTimestampList':
          if (value != null) {
            result.queryTimestampList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(DateTime)],
              ),
            ) as _i6.BuiltList<DateTime>));
          }
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
