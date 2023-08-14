// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.moving_address_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/move_status.dart';

part 'moving_address_status.g.dart';

/// This action is deprecated.
///
/// Describes the status of a moving Elastic IP address.
abstract class MovingAddressStatus
    with _i1.AWSEquatable<MovingAddressStatus>
    implements Built<MovingAddressStatus, MovingAddressStatusBuilder> {
  /// This action is deprecated.
  ///
  /// Describes the status of a moving Elastic IP address.
  factory MovingAddressStatus({
    MoveStatus? moveStatus,
    String? publicIp,
  }) {
    return _$MovingAddressStatus._(
      moveStatus: moveStatus,
      publicIp: publicIp,
    );
  }

  /// This action is deprecated.
  ///
  /// Describes the status of a moving Elastic IP address.
  factory MovingAddressStatus.build(
          [void Function(MovingAddressStatusBuilder) updates]) =
      _$MovingAddressStatus;

  const MovingAddressStatus._();

  static const List<_i2.SmithySerializer<MovingAddressStatus>> serializers = [
    MovingAddressStatusEc2QuerySerializer()
  ];

  /// The status of the Elastic IP address that's being moved or restored.
  MoveStatus? get moveStatus;

  /// The Elastic IP address.
  String? get publicIp;
  @override
  List<Object?> get props => [
        moveStatus,
        publicIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MovingAddressStatus')
      ..add(
        'moveStatus',
        moveStatus,
      )
      ..add(
        'publicIp',
        publicIp,
      );
    return helper.toString();
  }
}

class MovingAddressStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<MovingAddressStatus> {
  const MovingAddressStatusEc2QuerySerializer() : super('MovingAddressStatus');

  @override
  Iterable<Type> get types => const [
        MovingAddressStatus,
        _$MovingAddressStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MovingAddressStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovingAddressStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'moveStatus':
          result.moveStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(MoveStatus),
          ) as MoveStatus);
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
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
    MovingAddressStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MovingAddressStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MovingAddressStatus(:moveStatus, :publicIp) = object;
    if (moveStatus != null) {
      result$
        ..add(const _i2.XmlElementName('MoveStatus'))
        ..add(serializers.serialize(
          moveStatus,
          specifiedType: const FullType.nullable(MoveStatus),
        ));
    }
    if (publicIp != null) {
      result$
        ..add(const _i2.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
