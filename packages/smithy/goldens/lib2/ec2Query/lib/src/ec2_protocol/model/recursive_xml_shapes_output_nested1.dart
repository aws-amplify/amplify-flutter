// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v2.ec2_protocol.model.recursive_xml_shapes_output_nested1; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output_nested2.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'recursive_xml_shapes_output_nested1.g.dart';

abstract class RecursiveXmlShapesOutputNested1
    with
        _i1.AWSEquatable<RecursiveXmlShapesOutputNested1>
    implements
        Built<RecursiveXmlShapesOutputNested1,
            RecursiveXmlShapesOutputNested1Builder> {
  factory RecursiveXmlShapesOutputNested1({
    String? foo,
    RecursiveXmlShapesOutputNested2? nested,
  }) {
    return _$RecursiveXmlShapesOutputNested1._(
      foo: foo,
      nested: nested,
    );
  }

  factory RecursiveXmlShapesOutputNested1.build(
          [void Function(RecursiveXmlShapesOutputNested1Builder) updates]) =
      _$RecursiveXmlShapesOutputNested1;

  const RecursiveXmlShapesOutputNested1._();

  static const List<_i2.SmithySerializer<RecursiveXmlShapesOutputNested1>>
      serializers = [RecursiveXmlShapesOutputNested1Ec2QuerySerializer()];

  String? get foo;
  RecursiveXmlShapesOutputNested2? get nested;
  @override
  List<Object?> get props => [
        foo,
        nested,
      ];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RecursiveXmlShapesOutputNested1')
          ..add(
            'foo',
            foo,
          )
          ..add(
            'nested',
            nested,
          );
    return helper.toString();
  }
}

class RecursiveXmlShapesOutputNested1Ec2QuerySerializer
    extends _i2.StructuredSmithySerializer<RecursiveXmlShapesOutputNested1> {
  const RecursiveXmlShapesOutputNested1Ec2QuerySerializer()
      : super('RecursiveXmlShapesOutputNested1');

  @override
  Iterable<Type> get types => const [
        RecursiveXmlShapesOutputNested1,
        _$RecursiveXmlShapesOutputNested1,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
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
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RecursiveXmlShapesOutputNested1Response',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final RecursiveXmlShapesOutputNested1(:foo, :nested) = object;
    if (foo != null) {
      result$
        ..add(const _i2.XmlElementName('Foo'))
        ..add(serializers.serialize(
          foo,
          specifiedType: const FullType(String),
        ));
    }
    if (nested != null) {
      result$
        ..add(const _i2.XmlElementName('Nested'))
        ..add(serializers.serialize(
          nested,
          specifiedType: const FullType(RecursiveXmlShapesOutputNested2),
        ));
    }
    return result$;
  }
}
