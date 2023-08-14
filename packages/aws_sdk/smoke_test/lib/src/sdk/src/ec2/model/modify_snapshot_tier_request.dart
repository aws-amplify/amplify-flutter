// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_snapshot_tier_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/target_storage_tier.dart';

part 'modify_snapshot_tier_request.g.dart';

abstract class ModifySnapshotTierRequest
    with
        _i1.HttpInput<ModifySnapshotTierRequest>,
        _i2.AWSEquatable<ModifySnapshotTierRequest>
    implements
        Built<ModifySnapshotTierRequest, ModifySnapshotTierRequestBuilder> {
  factory ModifySnapshotTierRequest({
    String? snapshotId,
    TargetStorageTier? storageTier,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifySnapshotTierRequest._(
      snapshotId: snapshotId,
      storageTier: storageTier,
      dryRun: dryRun,
    );
  }

  factory ModifySnapshotTierRequest.build(
          [void Function(ModifySnapshotTierRequestBuilder) updates]) =
      _$ModifySnapshotTierRequest;

  const ModifySnapshotTierRequest._();

  factory ModifySnapshotTierRequest.fromRequest(
    ModifySnapshotTierRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifySnapshotTierRequest>>
      serializers = [ModifySnapshotTierRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySnapshotTierRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The name of the storage tier. You must specify `archive`.
  TargetStorageTier? get storageTier;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifySnapshotTierRequest getPayload() => this;
  @override
  List<Object?> get props => [
        snapshotId,
        storageTier,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifySnapshotTierRequest')
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'storageTier',
        storageTier,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ModifySnapshotTierRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifySnapshotTierRequest> {
  const ModifySnapshotTierRequestEc2QuerySerializer()
      : super('ModifySnapshotTierRequest');

  @override
  Iterable<Type> get types => const [
        ModifySnapshotTierRequest,
        _$ModifySnapshotTierRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySnapshotTierRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySnapshotTierRequestBuilder();
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
        case 'StorageTier':
          result.storageTier = (serializers.deserialize(
            value,
            specifiedType: const FullType(TargetStorageTier),
          ) as TargetStorageTier);
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
    ModifySnapshotTierRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifySnapshotTierRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifySnapshotTierRequest(:snapshotId, :storageTier, :dryRun) =
        object;
    if (snapshotId != null) {
      result$
        ..add(const _i1.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (storageTier != null) {
      result$
        ..add(const _i1.XmlElementName('StorageTier'))
        ..add(serializers.serialize(
          storageTier,
          specifiedType: const FullType.nullable(TargetStorageTier),
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
