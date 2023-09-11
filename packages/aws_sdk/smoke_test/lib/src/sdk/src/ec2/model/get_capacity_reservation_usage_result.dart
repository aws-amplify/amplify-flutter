// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_capacity_reservation_usage_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_usage.dart';

part 'get_capacity_reservation_usage_result.g.dart';

abstract class GetCapacityReservationUsageResult
    with
        _i1.AWSEquatable<GetCapacityReservationUsageResult>
    implements
        Built<GetCapacityReservationUsageResult,
            GetCapacityReservationUsageResultBuilder> {
  factory GetCapacityReservationUsageResult({
    String? nextToken,
    String? capacityReservationId,
    String? instanceType,
    int? totalInstanceCount,
    int? availableInstanceCount,
    CapacityReservationState? state,
    List<InstanceUsage>? instanceUsages,
  }) {
    totalInstanceCount ??= 0;
    availableInstanceCount ??= 0;
    return _$GetCapacityReservationUsageResult._(
      nextToken: nextToken,
      capacityReservationId: capacityReservationId,
      instanceType: instanceType,
      totalInstanceCount: totalInstanceCount,
      availableInstanceCount: availableInstanceCount,
      state: state,
      instanceUsages:
          instanceUsages == null ? null : _i2.BuiltList(instanceUsages),
    );
  }

  factory GetCapacityReservationUsageResult.build(
          [void Function(GetCapacityReservationUsageResultBuilder) updates]) =
      _$GetCapacityReservationUsageResult;

  const GetCapacityReservationUsageResult._();

  /// Constructs a [GetCapacityReservationUsageResult] from a [payload] and [response].
  factory GetCapacityReservationUsageResult.fromResponse(
    GetCapacityReservationUsageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetCapacityReservationUsageResult>>
      serializers = [GetCapacityReservationUsageResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCapacityReservationUsageResultBuilder b) {
    b
      ..totalInstanceCount = 0
      ..availableInstanceCount = 0;
  }

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// The type of instance for which the Capacity Reservation reserves capacity.
  String? get instanceType;

  /// The number of instances for which the Capacity Reservation reserves capacity.
  int get totalInstanceCount;

  /// The remaining capacity. Indicates the number of instances that can be launched in the Capacity Reservation.
  int get availableInstanceCount;

  /// The current state of the Capacity Reservation. A Capacity Reservation can be in one of the following states:
  ///
  /// *   `active` \- The Capacity Reservation is active and the capacity is available for your use.
  ///
  /// *   `expired` \- The Capacity Reservation expired automatically at the date and time specified in your request. The reserved capacity is no longer available for your use.
  ///
  /// *   `cancelled` \- The Capacity Reservation was cancelled. The reserved capacity is no longer available for your use.
  ///
  /// *   `pending` \- The Capacity Reservation request was successful but the capacity provisioning is still pending.
  ///
  /// *   `failed` \- The Capacity Reservation request has failed. A request might fail due to invalid request parameters, capacity constraints, or instance limit constraints. Failed requests are retained for 60 minutes.
  CapacityReservationState? get state;

  /// Information about the Capacity Reservation usage.
  _i2.BuiltList<InstanceUsage>? get instanceUsages;
  @override
  List<Object?> get props => [
        nextToken,
        capacityReservationId,
        instanceType,
        totalInstanceCount,
        availableInstanceCount,
        state,
        instanceUsages,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetCapacityReservationUsageResult')
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'capacityReservationId',
            capacityReservationId,
          )
          ..add(
            'instanceType',
            instanceType,
          )
          ..add(
            'totalInstanceCount',
            totalInstanceCount,
          )
          ..add(
            'availableInstanceCount',
            availableInstanceCount,
          )
          ..add(
            'state',
            state,
          )
          ..add(
            'instanceUsages',
            instanceUsages,
          );
    return helper.toString();
  }
}

class GetCapacityReservationUsageResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetCapacityReservationUsageResult> {
  const GetCapacityReservationUsageResultEc2QuerySerializer()
      : super('GetCapacityReservationUsageResult');

  @override
  Iterable<Type> get types => const [
        GetCapacityReservationUsageResult,
        _$GetCapacityReservationUsageResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetCapacityReservationUsageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCapacityReservationUsageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'capacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'totalInstanceCount':
          result.totalInstanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'availableInstanceCount':
          result.availableInstanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationState),
          ) as CapacityReservationState);
        case 'instanceUsageSet':
          result.instanceUsages.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceUsage)],
            ),
          ) as _i2.BuiltList<InstanceUsage>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetCapacityReservationUsageResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetCapacityReservationUsageResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetCapacityReservationUsageResult(
      :nextToken,
      :capacityReservationId,
      :instanceType,
      :totalInstanceCount,
      :availableInstanceCount,
      :state,
      :instanceUsages
    ) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityReservationId != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          capacityReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('TotalInstanceCount'))
      ..add(serializers.serialize(
        totalInstanceCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('AvailableInstanceCount'))
      ..add(serializers.serialize(
        availableInstanceCount,
        specifiedType: const FullType(int),
      ));
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(CapacityReservationState),
        ));
    }
    if (instanceUsages != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceUsageSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceUsages,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceUsage)],
          ),
        ));
    }
    return result$;
  }
}
