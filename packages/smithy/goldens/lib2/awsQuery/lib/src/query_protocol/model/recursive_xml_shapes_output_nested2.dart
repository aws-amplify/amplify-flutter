// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v2.query_protocol.model.recursive_xml_shapes_output_nested2; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/recursive_xml_shapes_output_nested1.dart'
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

  static const List<_i3.SmithySerializer<RecursiveXmlShapesOutputNested2>>
      serializers = [RecursiveXmlShapesOutputNested2AwsQuerySerializer()];

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
        newBuiltValueToStringHelper('RecursiveXmlShapesOutputNested2')
          ..add(
            'bar',
            bar,
          )
          ..add(
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
            specifiedType: const FullType(_i2.RecursiveXmlShapesOutputNested1),
          ) as _i2.RecursiveXmlShapesOutputNested1));
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
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RecursiveXmlShapesOutputNested2Response',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final RecursiveXmlShapesOutputNested2(:bar, :recursiveMember) = object;
    if (bar != null) {
      result$
        ..add(const _i3.XmlElementName('bar'))
        ..add(serializers.serialize(
          bar,
          specifiedType: const FullType(String),
        ));
    }
    if (recursiveMember != null) {
      result$
        ..add(const _i3.XmlElementName('recursiveMember'))
        ..add(serializers.serialize(
          recursiveMember,
          specifiedType: const FullType(_i2.RecursiveXmlShapesOutputNested1),
        ));
    }
    return result$;
  }
}
