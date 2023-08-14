// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_subnet_cidr_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation.dart';

part 'delete_subnet_cidr_reservation_result.g.dart';

abstract class DeleteSubnetCidrReservationResult
    with
        _i1.AWSEquatable<DeleteSubnetCidrReservationResult>
    implements
        Built<DeleteSubnetCidrReservationResult,
            DeleteSubnetCidrReservationResultBuilder> {
  factory DeleteSubnetCidrReservationResult(
      {SubnetCidrReservation? deletedSubnetCidrReservation}) {
    return _$DeleteSubnetCidrReservationResult._(
        deletedSubnetCidrReservation: deletedSubnetCidrReservation);
  }

  factory DeleteSubnetCidrReservationResult.build(
          [void Function(DeleteSubnetCidrReservationResultBuilder) updates]) =
      _$DeleteSubnetCidrReservationResult;

  const DeleteSubnetCidrReservationResult._();

  /// Constructs a [DeleteSubnetCidrReservationResult] from a [payload] and [response].
  factory DeleteSubnetCidrReservationResult.fromResponse(
    DeleteSubnetCidrReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteSubnetCidrReservationResult>>
      serializers = [DeleteSubnetCidrReservationResultEc2QuerySerializer()];

  /// Information about the deleted subnet CIDR reservation.
  SubnetCidrReservation? get deletedSubnetCidrReservation;
  @override
  List<Object?> get props => [deletedSubnetCidrReservation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteSubnetCidrReservationResult')
          ..add(
            'deletedSubnetCidrReservation',
            deletedSubnetCidrReservation,
          );
    return helper.toString();
  }
}

class DeleteSubnetCidrReservationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteSubnetCidrReservationResult> {
  const DeleteSubnetCidrReservationResultEc2QuerySerializer()
      : super('DeleteSubnetCidrReservationResult');

  @override
  Iterable<Type> get types => const [
        DeleteSubnetCidrReservationResult,
        _$DeleteSubnetCidrReservationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteSubnetCidrReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSubnetCidrReservationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deletedSubnetCidrReservation':
          result.deletedSubnetCidrReservation.replace((serializers.deserialize(
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
    DeleteSubnetCidrReservationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteSubnetCidrReservationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteSubnetCidrReservationResult(:deletedSubnetCidrReservation) =
        object;
    if (deletedSubnetCidrReservation != null) {
      result$
        ..add(const _i2.XmlElementName('DeletedSubnetCidrReservation'))
        ..add(serializers.serialize(
          deletedSubnetCidrReservation,
          specifiedType: const FullType(SubnetCidrReservation),
        ));
    }
    return result$;
  }
}
