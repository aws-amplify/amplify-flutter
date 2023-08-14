// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_subnet_cidr_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_subnet_cidr_reservation_request.g.dart';

abstract class DeleteSubnetCidrReservationRequest
    with
        _i1.HttpInput<DeleteSubnetCidrReservationRequest>,
        _i2.AWSEquatable<DeleteSubnetCidrReservationRequest>
    implements
        Built<DeleteSubnetCidrReservationRequest,
            DeleteSubnetCidrReservationRequestBuilder> {
  factory DeleteSubnetCidrReservationRequest({
    String? subnetCidrReservationId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteSubnetCidrReservationRequest._(
      subnetCidrReservationId: subnetCidrReservationId,
      dryRun: dryRun,
    );
  }

  factory DeleteSubnetCidrReservationRequest.build(
          [void Function(DeleteSubnetCidrReservationRequestBuilder) updates]) =
      _$DeleteSubnetCidrReservationRequest;

  const DeleteSubnetCidrReservationRequest._();

  factory DeleteSubnetCidrReservationRequest.fromRequest(
    DeleteSubnetCidrReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteSubnetCidrReservationRequest>>
      serializers = [DeleteSubnetCidrReservationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteSubnetCidrReservationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the subnet CIDR reservation.
  String? get subnetCidrReservationId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteSubnetCidrReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        subnetCidrReservationId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteSubnetCidrReservationRequest')
          ..add(
            'subnetCidrReservationId',
            subnetCidrReservationId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteSubnetCidrReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteSubnetCidrReservationRequest> {
  const DeleteSubnetCidrReservationRequestEc2QuerySerializer()
      : super('DeleteSubnetCidrReservationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteSubnetCidrReservationRequest,
        _$DeleteSubnetCidrReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteSubnetCidrReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSubnetCidrReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SubnetCidrReservationId':
          result.subnetCidrReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteSubnetCidrReservationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteSubnetCidrReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteSubnetCidrReservationRequest(
      :subnetCidrReservationId,
      :dryRun
    ) = object;
    if (subnetCidrReservationId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetCidrReservationId'))
        ..add(serializers.serialize(
          subnetCidrReservationId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
