// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.propagating_vgw; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'propagating_vgw.g.dart';

/// Describes a virtual private gateway propagating route.
abstract class PropagatingVgw
    with _i1.AWSEquatable<PropagatingVgw>
    implements Built<PropagatingVgw, PropagatingVgwBuilder> {
  /// Describes a virtual private gateway propagating route.
  factory PropagatingVgw({String? gatewayId}) {
    return _$PropagatingVgw._(gatewayId: gatewayId);
  }

  /// Describes a virtual private gateway propagating route.
  factory PropagatingVgw.build([void Function(PropagatingVgwBuilder) updates]) =
      _$PropagatingVgw;

  const PropagatingVgw._();

  static const List<_i2.SmithySerializer<PropagatingVgw>> serializers = [
    PropagatingVgwEc2QuerySerializer()
  ];

  /// The ID of the virtual private gateway.
  String? get gatewayId;
  @override
  List<Object?> get props => [gatewayId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PropagatingVgw')
      ..add(
        'gatewayId',
        gatewayId,
      );
    return helper.toString();
  }
}

class PropagatingVgwEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PropagatingVgw> {
  const PropagatingVgwEc2QuerySerializer() : super('PropagatingVgw');

  @override
  Iterable<Type> get types => const [
        PropagatingVgw,
        _$PropagatingVgw,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PropagatingVgw deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropagatingVgwBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'gatewayId':
          result.gatewayId = (serializers.deserialize(
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
    PropagatingVgw object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PropagatingVgwResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PropagatingVgw(:gatewayId) = object;
    if (gatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          gatewayId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
