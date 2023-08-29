// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fast_snapshot_restore_success_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_snapshot_restore_state_code.dart';

part 'describe_fast_snapshot_restore_success_item.g.dart';

/// Describes fast snapshot restores for a snapshot.
abstract class DescribeFastSnapshotRestoreSuccessItem
    with
        _i1.AWSEquatable<DescribeFastSnapshotRestoreSuccessItem>
    implements
        Built<DescribeFastSnapshotRestoreSuccessItem,
            DescribeFastSnapshotRestoreSuccessItemBuilder> {
  /// Describes fast snapshot restores for a snapshot.
  factory DescribeFastSnapshotRestoreSuccessItem({
    String? snapshotId,
    String? availabilityZone,
    FastSnapshotRestoreStateCode? state,
    String? stateTransitionReason,
    String? ownerId,
    String? ownerAlias,
    DateTime? enablingTime,
    DateTime? optimizingTime,
    DateTime? enabledTime,
    DateTime? disablingTime,
    DateTime? disabledTime,
  }) {
    return _$DescribeFastSnapshotRestoreSuccessItem._(
      snapshotId: snapshotId,
      availabilityZone: availabilityZone,
      state: state,
      stateTransitionReason: stateTransitionReason,
      ownerId: ownerId,
      ownerAlias: ownerAlias,
      enablingTime: enablingTime,
      optimizingTime: optimizingTime,
      enabledTime: enabledTime,
      disablingTime: disablingTime,
      disabledTime: disabledTime,
    );
  }

  /// Describes fast snapshot restores for a snapshot.
  factory DescribeFastSnapshotRestoreSuccessItem.build(
      [void Function(DescribeFastSnapshotRestoreSuccessItemBuilder)
          updates]) = _$DescribeFastSnapshotRestoreSuccessItem;

  const DescribeFastSnapshotRestoreSuccessItem._();

  static const List<
          _i2.SmithySerializer<DescribeFastSnapshotRestoreSuccessItem>>
      serializers = [
    DescribeFastSnapshotRestoreSuccessItemEc2QuerySerializer()
  ];

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The Availability Zone.
  String? get availabilityZone;

  /// The state of fast snapshot restores.
  FastSnapshotRestoreStateCode? get state;

  /// The reason for the state transition. The possible values are as follows:
  ///
  /// *   `Client.UserInitiated` \- The state successfully transitioned to `enabling` or `disabling`.
  ///
  /// *   `Client.UserInitiated - Lifecycle state transition` \- The state successfully transitioned to `optimizing`, `enabled`, or `disabled`.
  String? get stateTransitionReason;

  /// The ID of the Amazon Web Services account that enabled fast snapshot restores on the snapshot.
  String? get ownerId;

  /// The Amazon Web Services owner alias that enabled fast snapshot restores on the snapshot. This is intended for future use.
  String? get ownerAlias;

  /// The time at which fast snapshot restores entered the `enabling` state.
  DateTime? get enablingTime;

  /// The time at which fast snapshot restores entered the `optimizing` state.
  DateTime? get optimizingTime;

  /// The time at which fast snapshot restores entered the `enabled` state.
  DateTime? get enabledTime;

  /// The time at which fast snapshot restores entered the `disabling` state.
  DateTime? get disablingTime;

  /// The time at which fast snapshot restores entered the `disabled` state.
  DateTime? get disabledTime;
  @override
  List<Object?> get props => [
        snapshotId,
        availabilityZone,
        state,
        stateTransitionReason,
        ownerId,
        ownerAlias,
        enablingTime,
        optimizingTime,
        enabledTime,
        disablingTime,
        disabledTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeFastSnapshotRestoreSuccessItem')
          ..add(
            'snapshotId',
            snapshotId,
          )
          ..add(
            'availabilityZone',
            availabilityZone,
          )
          ..add(
            'state',
            state,
          )
          ..add(
            'stateTransitionReason',
            stateTransitionReason,
          )
          ..add(
            'ownerId',
            ownerId,
          )
          ..add(
            'ownerAlias',
            ownerAlias,
          )
          ..add(
            'enablingTime',
            enablingTime,
          )
          ..add(
            'optimizingTime',
            optimizingTime,
          )
          ..add(
            'enabledTime',
            enabledTime,
          )
          ..add(
            'disablingTime',
            disablingTime,
          )
          ..add(
            'disabledTime',
            disabledTime,
          );
    return helper.toString();
  }
}

class DescribeFastSnapshotRestoreSuccessItemEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DescribeFastSnapshotRestoreSuccessItem> {
  const DescribeFastSnapshotRestoreSuccessItemEc2QuerySerializer()
      : super('DescribeFastSnapshotRestoreSuccessItem');

  @override
  Iterable<Type> get types => const [
        DescribeFastSnapshotRestoreSuccessItem,
        _$DescribeFastSnapshotRestoreSuccessItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFastSnapshotRestoreSuccessItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFastSnapshotRestoreSuccessItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(FastSnapshotRestoreStateCode),
          ) as FastSnapshotRestoreStateCode);
        case 'stateTransitionReason':
          result.stateTransitionReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerAlias':
          result.ownerAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'enablingTime':
          result.enablingTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'optimizingTime':
          result.optimizingTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'enabledTime':
          result.enabledTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'disablingTime':
          result.disablingTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'disabledTime':
          result.disabledTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeFastSnapshotRestoreSuccessItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DescribeFastSnapshotRestoreSuccessItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFastSnapshotRestoreSuccessItem(
      :snapshotId,
      :availabilityZone,
      :state,
      :stateTransitionReason,
      :ownerId,
      :ownerAlias,
      :enablingTime,
      :optimizingTime,
      :enabledTime,
      :disablingTime,
      :disabledTime
    ) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(FastSnapshotRestoreStateCode),
        ));
    }
    if (stateTransitionReason != null) {
      result$
        ..add(const _i2.XmlElementName('StateTransitionReason'))
        ..add(serializers.serialize(
          stateTransitionReason,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerAlias != null) {
      result$
        ..add(const _i2.XmlElementName('OwnerAlias'))
        ..add(serializers.serialize(
          ownerAlias,
          specifiedType: const FullType(String),
        ));
    }
    if (enablingTime != null) {
      result$
        ..add(const _i2.XmlElementName('EnablingTime'))
        ..add(serializers.serialize(
          enablingTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (optimizingTime != null) {
      result$
        ..add(const _i2.XmlElementName('OptimizingTime'))
        ..add(serializers.serialize(
          optimizingTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (enabledTime != null) {
      result$
        ..add(const _i2.XmlElementName('EnabledTime'))
        ..add(serializers.serialize(
          enabledTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (disablingTime != null) {
      result$
        ..add(const _i2.XmlElementName('DisablingTime'))
        ..add(serializers.serialize(
          disablingTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (disabledTime != null) {
      result$
        ..add(const _i2.XmlElementName('DisabledTime'))
        ..add(serializers.serialize(
          disabledTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
