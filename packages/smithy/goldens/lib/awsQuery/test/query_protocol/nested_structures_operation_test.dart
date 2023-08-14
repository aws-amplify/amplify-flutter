// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.nested_structures_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/nested_structures_input.dart';
import 'package:aws_query_v1/src/query_protocol/model/struct_arg.dart';
import 'package:aws_query_v1/src/query_protocol/operation/nested_structures_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'NestedStructures (request)',
    () async {
      await _i2.httpRequestTest(
        operation: NestedStructuresOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'NestedStructures',
          documentation: 'Serializes nested structures using dots',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              'Action=NestedStructures&Version=2020-01-08&Nested.StringArg=foo&Nested.OtherArg=true&Nested.RecursiveArg.StringArg=baz',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'Nested': {
              'StringArg': 'foo',
              'OtherArg': true,
              'RecursiveArg': {'StringArg': 'baz'},
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          NestedStructuresInputAwsQuerySerializer(),
          StructArgAwsQuerySerializer(),
        ],
      );
    },
  );
}

class NestedStructuresInputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<NestedStructuresInput> {
  const NestedStructuresInputAwsQuerySerializer()
      : super('NestedStructuresInput');

  @override
  Iterable<Type> get types => const [NestedStructuresInput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  NestedStructuresInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedStructuresInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StructArg),
          ) as StructArg));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NestedStructuresInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class StructArgAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<StructArg> {
  const StructArgAwsQuerySerializer() : super('StructArg');

  @override
  Iterable<Type> get types => const [StructArg];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StructArg deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructArgBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StringArg':
          result.stringArg = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OtherArg':
          result.otherArg = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RecursiveArg':
          result.recursiveArg.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StructArg),
          ) as StructArg));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StructArg object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
