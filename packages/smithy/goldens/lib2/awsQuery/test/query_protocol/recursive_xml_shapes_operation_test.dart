// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.recursive_xml_shapes_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/recursive_xml_shapes_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/recursive_xml_shapes_output_nested1.dart';
import 'package:aws_query_v2/src/query_protocol/model/recursive_xml_shapes_output_nested2.dart';
import 'package:aws_query_v2/src/query_protocol/operation/recursive_xml_shapes_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryRecursiveShapes (response)',
    () async {
      await _i2.httpResponseTest(
        operation: RecursiveXmlShapesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryRecursiveShapes',
          documentation: 'Serializes recursive structures',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<RecursiveXmlShapesResponse xmlns="https://example.com/">\n    <RecursiveXmlShapesResult>\n        <nested>\n            <foo>Foo1</foo>\n            <nested>\n                <bar>Bar1</bar>\n                <recursiveMember>\n                    <foo>Foo2</foo>\n                    <nested>\n                        <bar>Bar2</bar>\n                    </nested>\n                </recursiveMember>\n            </nested>\n        </nested>\n    </RecursiveXmlShapesResult>\n</RecursiveXmlShapesResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'nested': {
              'foo': 'Foo1',
              'nested': {
                'bar': 'Bar1',
                'recursiveMember': {
                  'foo': 'Foo2',
                  'nested': {'bar': 'Bar2'},
                },
              },
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          RecursiveXmlShapesOutputAwsQuerySerializer(),
          RecursiveXmlShapesOutputNested1AwsQuerySerializer(),
          RecursiveXmlShapesOutputNested2AwsQuerySerializer(),
        ],
      );
    },
  );
}

class RecursiveXmlShapesOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<RecursiveXmlShapesOutput> {
  const RecursiveXmlShapesOutputAwsQuerySerializer()
      : super('RecursiveXmlShapesOutput');

  @override
  Iterable<Type> get types => const [RecursiveXmlShapesOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  RecursiveXmlShapesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveXmlShapesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RecursiveXmlShapesOutputNested1),
          ) as RecursiveXmlShapesOutputNested1));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveXmlShapesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RecursiveXmlShapesOutputNested1AwsQuerySerializer
    extends _i3.StructuredSmithySerializer<RecursiveXmlShapesOutputNested1> {
  const RecursiveXmlShapesOutputNested1AwsQuerySerializer()
      : super('RecursiveXmlShapesOutputNested1');

  @override
  Iterable<Type> get types => const [RecursiveXmlShapesOutputNested1];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  RecursiveXmlShapesOutputNested1 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveXmlShapesOutputNested1Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RecursiveXmlShapesOutputNested2),
          ) as RecursiveXmlShapesOutputNested2));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveXmlShapesOutputNested1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RecursiveXmlShapesOutputNested2AwsQuerySerializer
    extends _i3.StructuredSmithySerializer<RecursiveXmlShapesOutputNested2> {
  const RecursiveXmlShapesOutputNested2AwsQuerySerializer()
      : super('RecursiveXmlShapesOutputNested2');

  @override
  Iterable<Type> get types => const [RecursiveXmlShapesOutputNested2];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  RecursiveXmlShapesOutputNested2 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveXmlShapesOutputNested2Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bar':
          result.bar = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'recursiveMember':
          result.recursiveMember.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RecursiveXmlShapesOutputNested1),
          ) as RecursiveXmlShapesOutputNested1));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveXmlShapesOutputNested2 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
