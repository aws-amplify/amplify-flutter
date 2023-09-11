// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_capacity_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/end_date_type.dart';

part 'modify_capacity_reservation_request.g.dart';

abstract class ModifyCapacityReservationRequest
    with
        _i1.HttpInput<ModifyCapacityReservationRequest>,
        _i2.AWSEquatable<ModifyCapacityReservationRequest>
    implements
        Built<ModifyCapacityReservationRequest,
            ModifyCapacityReservationRequestBuilder> {
  factory ModifyCapacityReservationRequest({
    String? capacityReservationId,
    int? instanceCount,
    DateTime? endDate,
    EndDateType? endDateType,
    bool? accept,
    bool? dryRun,
    String? additionalInfo,
  }) {
    instanceCount ??= 0;
    accept ??= false;
    dryRun ??= false;
    return _$ModifyCapacityReservationRequest._(
      capacityReservationId: capacityReservationId,
      instanceCount: instanceCount,
      endDate: endDate,
      endDateType: endDateType,
      accept: accept,
      dryRun: dryRun,
      additionalInfo: additionalInfo,
    );
  }

  factory ModifyCapacityReservationRequest.build(
          [void Function(ModifyCapacityReservationRequestBuilder) updates]) =
      _$ModifyCapacityReservationRequest;

  const ModifyCapacityReservationRequest._();

  factory ModifyCapacityReservationRequest.fromRequest(
    ModifyCapacityReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyCapacityReservationRequest>>
      serializers = [ModifyCapacityReservationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyCapacityReservationRequestBuilder b) {
    b
      ..instanceCount = 0
      ..accept = false
      ..dryRun = false;
  }

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// The number of instances for which to reserve capacity. The number of instances can't be increased or decreased by more than `1000` in a single request.
  int get instanceCount;

  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to `expired` when it reaches its end date and time.
  ///
  /// The Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.
  ///
  /// You must provide an `EndDate` value if `EndDateType` is `limited`. Omit `EndDate` if `EndDateType` is `unlimited`.
  DateTime? get endDate;

  /// Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:
  ///
  /// *   `unlimited` \- The Capacity Reservation remains active until you explicitly cancel it. Do not provide an `EndDate` value if `EndDateType` is `unlimited`.
  ///
  /// *   `limited` \- The Capacity Reservation expires automatically at a specified date and time. You must provide an `EndDate` value if `EndDateType` is `limited`.
  EndDateType? get endDateType;

  /// Reserved. Capacity Reservations you have created are accepted by default.
  bool get accept;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Reserved for future use.
  String? get additionalInfo;
  @override
  ModifyCapacityReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        capacityReservationId,
        instanceCount,
        endDate,
        endDateType,
        accept,
        dryRun,
        additionalInfo,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyCapacityReservationRequest')
          ..add(
            'capacityReservationId',
            capacityReservationId,
          )
          ..add(
            'instanceCount',
            instanceCount,
          )
          ..add(
            'endDate',
            endDate,
          )
          ..add(
            'endDateType',
            endDateType,
          )
          ..add(
            'accept',
            accept,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'additionalInfo',
            additionalInfo,
          );
    return helper.toString();
  }
}

class ModifyCapacityReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyCapacityReservationRequest> {
  const ModifyCapacityReservationRequestEc2QuerySerializer()
      : super('ModifyCapacityReservationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyCapacityReservationRequest,
        _$ModifyCapacityReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyCapacityReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyCapacityReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CapacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'EndDate':
          result.endDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'EndDateType':
          result.endDateType = (serializers.deserialize(
            value,
            specifiedType: const FullType(EndDateType),
          ) as EndDateType);
        case 'Accept':
          result.accept = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AdditionalInfo':
          result.additionalInfo = (serializers.deserialize(
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
    ModifyCapacityReservationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyCapacityReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyCapacityReservationRequest(
      :capacityReservationId,
      :instanceCount,
      :endDate,
      :endDateType,
      :accept,
      :dryRun,
      :additionalInfo
    ) = object;
    if (capacityReservationId != null) {
      result$
        ..add(const _i1.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          capacityReservationId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (endDate != null) {
      result$
        ..add(const _i1.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          endDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (endDateType != null) {
      result$
        ..add(const _i1.XmlElementName('EndDateType'))
        ..add(serializers.serialize(
          endDateType,
          specifiedType: const FullType(EndDateType),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Accept'))
      ..add(serializers.serialize(
        accept,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (additionalInfo != null) {
      result$
        ..add(const _i1.XmlElementName('AdditionalInfo'))
        ..add(serializers.serialize(
          additionalInfo,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
