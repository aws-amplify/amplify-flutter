// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.omits_serializing_empty_lists_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/omits_serializing_empty_lists_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/omits_serializing_empty_lists_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonOmitsEmptyListQueryValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: OmitsSerializingEmptyListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonOmitsEmptyListQueryValues',
          documentation: 'Supports omitting empty lists.',
          protocol: _i3.ShapeId(
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

class OmitsSerializingEmptyListsInputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<OmitsSerializingEmptyListsInput> {
  const OmitsSerializingEmptyListsInputRestJson1Serializer()
      : super('OmitsSerializingEmptyListsInput');

  @override
  Iterable<Type> get types => const [OmitsSerializingEmptyListsInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  OmitsSerializingEmptyListsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OmitsSerializingEmptyListsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'queryStringList':
          result.queryStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'queryIntegerList':
          result.queryIntegerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(int)],
            ),
          ) as _i4.BuiltList<int>));
        case 'queryDoubleList':
          result.queryDoubleList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(double)],
            ),
          ) as _i4.BuiltList<double>));
        case 'queryBooleanList':
          result.queryBooleanList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(bool)],
            ),
          ) as _i4.BuiltList<bool>));
        case 'queryTimestampList':
          result.queryTimestampList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i4.BuiltList<DateTime>));
        case 'queryEnumList':
          result.queryEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(FooEnum)],
            ),
          ) as _i4.BuiltList<FooEnum>));
        case 'queryIntegerEnumList':
          result.queryIntegerEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(IntegerEnum)],
            ),
          ) as _i4.BuiltList<IntegerEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OmitsSerializingEmptyListsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
