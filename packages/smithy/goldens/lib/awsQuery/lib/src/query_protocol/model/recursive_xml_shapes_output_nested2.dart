// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v1.query_protocol.model.recursive_xml_shapes_output_nested2; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v1/src/query_protocol/model/recursive_xml_shapes_output_nested1.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'recursive_xml_shapes_output_nested2.g.dart';

abstract class RecursiveXmlShapesOutputNested2
    with
        _i1.AWSEquatable<RecursiveXmlShapesOutputNested2>
    implements
        Built<RecursiveXmlShapesOutputNested2,
            RecursiveXmlShapesOutputNested2Builder> {
  factory RecursiveXmlShapesOutputNested2({
    String? bar,
    _i2.RecursiveXmlShapesOutputNested1? recursiveMember,
  }) {
    return _$RecursiveXmlShapesOutputNested2._(
      bar: bar,
      recursiveMember: recursiveMember,
    );
  }

  factory RecursiveXmlShapesOutputNested2.build(
          [void Function(RecursiveXmlShapesOutputNested2Builder) updates]) =
      _$RecursiveXmlShapesOutputNested2;

  const RecursiveXmlShapesOutputNested2._();

  static const List<_i3.SmithySerializer> serializers = [
    RecursiveXmlShapesOutputNested2AwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecursiveXmlShapesOutputNested2Builder b) {}
  String? get bar;
  _i2.RecursiveXmlShapesOutputNested1? get recursiveMember;
  @override
  List<Object?> get props => [
        bar,
        recursiveMember,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RecursiveXmlShapesOutputNested2');
    helper.add(
      'bar',
      bar,
    );
    helper.add(
      'recursiveMember',
      recursiveMember,
    );
    return helper.toString();
  }
}

class RecursiveXmlShapesOutputNested2AwsQuerySerializer
    extends _i3.StructuredSmithySerializer<RecursiveXmlShapesOutputNested2> {
  const RecursiveXmlShapesOutputNested2AwsQuerySerializer()
      : super('RecursiveXmlShapesOutputNested2');

  @override
  Iterable<Type> get types => const [
        RecursiveXmlShapesOutputNested2,
        _$RecursiveXmlShapesOutputNested2,
      ];
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'bar':
          if (value != null) {
            result.bar = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'recursiveMember':
          if (value != null) {
            result.recursiveMember.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.RecursiveXmlShapesOutputNested1),
            ) as _i2.RecursiveXmlShapesOutputNested1));
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
    final payload = (object as RecursiveXmlShapesOutputNested2);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RecursiveXmlShapesOutputNested2Response',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.bar != null) {
      result
        ..add(const _i3.XmlElementName('bar'))
        ..add(serializers.serialize(
          payload.bar!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.recursiveMember != null) {
      result
        ..add(const _i3.XmlElementName('recursiveMember'))
        ..add(serializers.serialize(
          payload.recursiveMember!,
          specifiedType: const FullType(_i2.RecursiveXmlShapesOutputNested1),
        ));
    }
    return result;
  }
}
