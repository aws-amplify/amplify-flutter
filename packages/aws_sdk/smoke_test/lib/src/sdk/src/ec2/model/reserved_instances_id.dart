// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reserved_instances_id; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'reserved_instances_id.g.dart';

/// Describes the ID of a Reserved Instance.
abstract class ReservedInstancesId
    with _i1.AWSEquatable<ReservedInstancesId>
    implements Built<ReservedInstancesId, ReservedInstancesIdBuilder> {
  /// Describes the ID of a Reserved Instance.
  factory ReservedInstancesId({String? reservedInstancesId}) {
    return _$ReservedInstancesId._(reservedInstancesId: reservedInstancesId);
  }

  /// Describes the ID of a Reserved Instance.
  factory ReservedInstancesId.build(
          [void Function(ReservedInstancesIdBuilder) updates]) =
      _$ReservedInstancesId;

  const ReservedInstancesId._();

  static const List<_i2.SmithySerializer<ReservedInstancesId>> serializers = [
    ReservedInstancesIdEc2QuerySerializer()
  ];

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;
  @override
  List<Object?> get props => [reservedInstancesId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstancesId')
      ..add(
        'reservedInstancesId',
        reservedInstancesId,
      );
    return helper.toString();
  }
}

class ReservedInstancesIdEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReservedInstancesId> {
  const ReservedInstancesIdEc2QuerySerializer() : super('ReservedInstancesId');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesId,
        _$ReservedInstancesId,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesId deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesIdBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservedInstancesId':
          result.reservedInstancesId = (serializers.deserialize(
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
    ReservedInstancesId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReservedInstancesIdResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservedInstancesId(:reservedInstancesId) = object;
    if (reservedInstancesId != null) {
      result$
        ..add(const _i2.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          reservedInstancesId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
