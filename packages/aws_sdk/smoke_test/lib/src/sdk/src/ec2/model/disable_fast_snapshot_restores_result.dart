// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_fast_snapshot_restores_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_success_item.dart';

part 'disable_fast_snapshot_restores_result.g.dart';

abstract class DisableFastSnapshotRestoresResult
    with
        _i1.AWSEquatable<DisableFastSnapshotRestoresResult>
    implements
        Built<DisableFastSnapshotRestoresResult,
            DisableFastSnapshotRestoresResultBuilder> {
  factory DisableFastSnapshotRestoresResult({
    List<DisableFastSnapshotRestoreSuccessItem>? successful,
    List<DisableFastSnapshotRestoreErrorItem>? unsuccessful,
  }) {
    return _$DisableFastSnapshotRestoresResult._(
      successful: successful == null ? null : _i2.BuiltList(successful),
      unsuccessful: unsuccessful == null ? null : _i2.BuiltList(unsuccessful),
    );
  }

  factory DisableFastSnapshotRestoresResult.build(
          [void Function(DisableFastSnapshotRestoresResultBuilder) updates]) =
      _$DisableFastSnapshotRestoresResult;

  const DisableFastSnapshotRestoresResult._();

  /// Constructs a [DisableFastSnapshotRestoresResult] from a [payload] and [response].
  factory DisableFastSnapshotRestoresResult.fromResponse(
    DisableFastSnapshotRestoresResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DisableFastSnapshotRestoresResult>>
      serializers = [DisableFastSnapshotRestoresResultEc2QuerySerializer()];

  /// Information about the snapshots for which fast snapshot restores were successfully disabled.
  _i2.BuiltList<DisableFastSnapshotRestoreSuccessItem>? get successful;

  /// Information about the snapshots for which fast snapshot restores could not be disabled.
  _i2.BuiltList<DisableFastSnapshotRestoreErrorItem>? get unsuccessful;
  @override
  List<Object?> get props => [
        successful,
        unsuccessful,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableFastSnapshotRestoresResult')
          ..add(
            'successful',
            successful,
          )
          ..add(
            'unsuccessful',
            unsuccessful,
          );
    return helper.toString();
  }
}

class DisableFastSnapshotRestoresResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DisableFastSnapshotRestoresResult> {
  const DisableFastSnapshotRestoresResultEc2QuerySerializer()
      : super('DisableFastSnapshotRestoresResult');

  @override
  Iterable<Type> get types => const [
        DisableFastSnapshotRestoresResult,
        _$DisableFastSnapshotRestoresResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableFastSnapshotRestoresResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableFastSnapshotRestoresResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'successful':
          result.successful.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DisableFastSnapshotRestoreSuccessItem)],
            ),
          ) as _i2.BuiltList<DisableFastSnapshotRestoreSuccessItem>));
        case 'unsuccessful':
          result.unsuccessful.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DisableFastSnapshotRestoreErrorItem)],
            ),
          ) as _i2.BuiltList<DisableFastSnapshotRestoreErrorItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisableFastSnapshotRestoresResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DisableFastSnapshotRestoresResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableFastSnapshotRestoresResult(:successful, :unsuccessful) =
        object;
    if (successful != null) {
      result$
        ..add(const _i3.XmlElementName('Successful'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          successful,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DisableFastSnapshotRestoreSuccessItem)],
          ),
        ));
    }
    if (unsuccessful != null) {
      result$
        ..add(const _i3.XmlElementName('Unsuccessful'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unsuccessful,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DisableFastSnapshotRestoreErrorItem)],
          ),
        ));
    }
    return result$;
  }
}
