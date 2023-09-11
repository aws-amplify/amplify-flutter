// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_snapshot_tier_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_snapshot_tier_result.g.dart';

abstract class ModifySnapshotTierResult
    with _i1.AWSEquatable<ModifySnapshotTierResult>
    implements
        Built<ModifySnapshotTierResult, ModifySnapshotTierResultBuilder> {
  factory ModifySnapshotTierResult({
    String? snapshotId,
    DateTime? tieringStartTime,
  }) {
    return _$ModifySnapshotTierResult._(
      snapshotId: snapshotId,
      tieringStartTime: tieringStartTime,
    );
  }

  factory ModifySnapshotTierResult.build(
          [void Function(ModifySnapshotTierResultBuilder) updates]) =
      _$ModifySnapshotTierResult;

  const ModifySnapshotTierResult._();

  /// Constructs a [ModifySnapshotTierResult] from a [payload] and [response].
  factory ModifySnapshotTierResult.fromResponse(
    ModifySnapshotTierResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifySnapshotTierResult>>
      serializers = [ModifySnapshotTierResultEc2QuerySerializer()];

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The date and time when the archive process was started.
  DateTime? get tieringStartTime;
  @override
  List<Object?> get props => [
        snapshotId,
        tieringStartTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifySnapshotTierResult')
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'tieringStartTime',
        tieringStartTime,
      );
    return helper.toString();
  }
}

class ModifySnapshotTierResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifySnapshotTierResult> {
  const ModifySnapshotTierResultEc2QuerySerializer()
      : super('ModifySnapshotTierResult');

  @override
  Iterable<Type> get types => const [
        ModifySnapshotTierResult,
        _$ModifySnapshotTierResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySnapshotTierResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySnapshotTierResultBuilder();
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
        case 'tieringStartTime':
          result.tieringStartTime = (serializers.deserialize(
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
    ModifySnapshotTierResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifySnapshotTierResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifySnapshotTierResult(:snapshotId, :tieringStartTime) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (tieringStartTime != null) {
      result$
        ..add(const _i2.XmlElementName('TieringStartTime'))
        ..add(serializers.serialize(
          tieringStartTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
