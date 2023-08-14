// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.restore_snapshot_tier_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'restore_snapshot_tier_request.g.dart';

abstract class RestoreSnapshotTierRequest
    with
        _i1.HttpInput<RestoreSnapshotTierRequest>,
        _i2.AWSEquatable<RestoreSnapshotTierRequest>
    implements
        Built<RestoreSnapshotTierRequest, RestoreSnapshotTierRequestBuilder> {
  factory RestoreSnapshotTierRequest({
    String? snapshotId,
    int? temporaryRestoreDays,
    bool? permanentRestore,
    bool? dryRun,
  }) {
    permanentRestore ??= false;
    dryRun ??= false;
    return _$RestoreSnapshotTierRequest._(
      snapshotId: snapshotId,
      temporaryRestoreDays: temporaryRestoreDays,
      permanentRestore: permanentRestore,
      dryRun: dryRun,
    );
  }

  factory RestoreSnapshotTierRequest.build(
          [void Function(RestoreSnapshotTierRequestBuilder) updates]) =
      _$RestoreSnapshotTierRequest;

  const RestoreSnapshotTierRequest._();

  factory RestoreSnapshotTierRequest.fromRequest(
    RestoreSnapshotTierRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RestoreSnapshotTierRequest>>
      serializers = [RestoreSnapshotTierRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreSnapshotTierRequestBuilder b) {
    b
      ..permanentRestore = false
      ..dryRun = false;
  }

  /// The ID of the snapshot to restore.
  String? get snapshotId;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  ///
  /// To temporarily restore an archived snapshot, specify the number of days and omit the **PermanentRestore** parameter or set it to `false`.
  int? get temporaryRestoreDays;

  /// Indicates whether to permanently restore an archived snapshot. To permanently restore an archived snapshot, specify `true` and omit the **RestoreSnapshotTierRequest$TemporaryRestoreDays** parameter.
  bool get permanentRestore;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  RestoreSnapshotTierRequest getPayload() => this;
  @override
  List<Object?> get props => [
        snapshotId,
        temporaryRestoreDays,
        permanentRestore,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreSnapshotTierRequest')
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'temporaryRestoreDays',
        temporaryRestoreDays,
      )
      ..add(
        'permanentRestore',
        permanentRestore,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class RestoreSnapshotTierRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RestoreSnapshotTierRequest> {
  const RestoreSnapshotTierRequestEc2QuerySerializer()
      : super('RestoreSnapshotTierRequest');

  @override
  Iterable<Type> get types => const [
        RestoreSnapshotTierRequest,
        _$RestoreSnapshotTierRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreSnapshotTierRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreSnapshotTierRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SnapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemporaryRestoreDays':
          result.temporaryRestoreDays = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'PermanentRestore':
          result.permanentRestore = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    RestoreSnapshotTierRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RestoreSnapshotTierRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RestoreSnapshotTierRequest(
      :snapshotId,
      :temporaryRestoreDays,
      :permanentRestore,
      :dryRun
    ) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i1.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (temporaryRestoreDays != null) {
      result$
        ..add(const _i1.XmlElementName('TemporaryRestoreDays'))
        ..add(serializers.serialize(
          temporaryRestoreDays,
          specifiedType: const FullType.nullable(int),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PermanentRestore'))
      ..add(serializers.serialize(
        permanentRestore,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
