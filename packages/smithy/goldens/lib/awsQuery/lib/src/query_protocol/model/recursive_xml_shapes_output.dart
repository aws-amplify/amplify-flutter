// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v1.query_protocol.model.recursive_xml_shapes_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v1/src/query_protocol/model/recursive_xml_shapes_output_nested1.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'recursive_xml_shapes_output.g.dart';

abstract class RecursiveXmlShapesOutput
    with _i1.AWSEquatable<RecursiveXmlShapesOutput>
    implements
        Built<RecursiveXmlShapesOutput, RecursiveXmlShapesOutputBuilder> {
  factory RecursiveXmlShapesOutput({RecursiveXmlShapesOutputNested1? nested}) {
    return _$RecursiveXmlShapesOutput._(nested: nested);
  }

  factory RecursiveXmlShapesOutput.build(
          [void Function(RecursiveXmlShapesOutputBuilder) updates]) =
      _$RecursiveXmlShapesOutput;

  const RecursiveXmlShapesOutput._();

  /// Constructs a [RecursiveXmlShapesOutput] from a [payload] and [response].
  factory RecursiveXmlShapesOutput.fromResponse(
    RecursiveXmlShapesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RecursiveXmlShapesOutput>>
      serializers = [RecursiveXmlShapesOutputAwsQuerySerializer()];

  RecursiveXmlShapesOutputNested1? get nested;
  @override
  List<Object?> get props => [nested];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecursiveXmlShapesOutput')
      ..add(
        'nested',
        nested,
      );
    return helper.toString();
  }
}

class RecursiveXmlShapesOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RecursiveXmlShapesOutput> {
  const RecursiveXmlShapesOutputAwsQuerySerializer()
      : super('RecursiveXmlShapesOutput');

  @override
  Iterable<Type> get types => const [
        RecursiveXmlShapesOutput,
        _$RecursiveXmlShapesOutput,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
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
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RecursiveXmlShapesOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final RecursiveXmlShapesOutput(:nested) = object;
    if (nested != null) {
      result$
        ..add(const _i2.XmlElementName('nested'))
        ..add(serializers.serialize(
          nested,
          specifiedType: const FullType(RecursiveXmlShapesOutputNested1),
        ));
    }
    return result$;
  }
}
