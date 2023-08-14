// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_subnet_cidr_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation.dart';

part 'create_subnet_cidr_reservation_result.g.dart';

abstract class CreateSubnetCidrReservationResult
    with
        _i1.AWSEquatable<CreateSubnetCidrReservationResult>
    implements
        Built<CreateSubnetCidrReservationResult,
            CreateSubnetCidrReservationResultBuilder> {
  factory CreateSubnetCidrReservationResult(
      {SubnetCidrReservation? subnetCidrReservation}) {
    return _$CreateSubnetCidrReservationResult._(
        subnetCidrReservation: subnetCidrReservation);
  }

  factory CreateSubnetCidrReservationResult.build(
          [void Function(CreateSubnetCidrReservationResultBuilder) updates]) =
      _$CreateSubnetCidrReservationResult;

  const CreateSubnetCidrReservationResult._();

  /// Constructs a [CreateSubnetCidrReservationResult] from a [payload] and [response].
  factory CreateSubnetCidrReservationResult.fromResponse(
    CreateSubnetCidrReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateSubnetCidrReservationResult>>
      serializers = [CreateSubnetCidrReservationResultEc2QuerySerializer()];

  /// Information about the created subnet CIDR reservation.
  SubnetCidrReservation? get subnetCidrReservation;
  @override
  List<Object?> get props => [subnetCidrReservation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateSubnetCidrReservationResult')
          ..add(
            'subnetCidrReservation',
            subnetCidrReservation,
          );
    return helper.toString();
  }
}

class CreateSubnetCidrReservationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateSubnetCidrReservationResult> {
  const CreateSubnetCidrReservationResultEc2QuerySerializer()
      : super('CreateSubnetCidrReservationResult');

  @override
  Iterable<Type> get types => const [
        CreateSubnetCidrReservationResult,
        _$CreateSubnetCidrReservationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSubnetCidrReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSubnetCidrReservationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'subnetCidrReservation':
          result.subnetCidrReservation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SubnetCidrReservation),
          ) as SubnetCidrReservation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateSubnetCidrReservationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateSubnetCidrReservationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSubnetCidrReservationResult(:subnetCidrReservation) = object;
    if (subnetCidrReservation != null) {
      result$
        ..add(const _i2.XmlElementName('SubnetCidrReservation'))
        ..add(serializers.serialize(
          subnetCidrReservation,
          specifiedType: const FullType(SubnetCidrReservation),
        ));
    }
    return result$;
  }
}
