// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_fast_snapshot_restore_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_state_error_item.dart';

part 'disable_fast_snapshot_restore_error_item.g.dart';

/// Contains information about the errors that occurred when disabling fast snapshot restores.
abstract class DisableFastSnapshotRestoreErrorItem
    with
        _i1.AWSEquatable<DisableFastSnapshotRestoreErrorItem>
    implements
        Built<DisableFastSnapshotRestoreErrorItem,
            DisableFastSnapshotRestoreErrorItemBuilder> {
  /// Contains information about the errors that occurred when disabling fast snapshot restores.
  factory DisableFastSnapshotRestoreErrorItem({
    String? snapshotId,
    List<DisableFastSnapshotRestoreStateErrorItem>?
        fastSnapshotRestoreStateErrors,
  }) {
    return _$DisableFastSnapshotRestoreErrorItem._(
      snapshotId: snapshotId,
      fastSnapshotRestoreStateErrors: fastSnapshotRestoreStateErrors == null
          ? null
          : _i2.BuiltList(fastSnapshotRestoreStateErrors),
    );
  }

  /// Contains information about the errors that occurred when disabling fast snapshot restores.
  factory DisableFastSnapshotRestoreErrorItem.build(
          [void Function(DisableFastSnapshotRestoreErrorItemBuilder) updates]) =
      _$DisableFastSnapshotRestoreErrorItem;

  const DisableFastSnapshotRestoreErrorItem._();

  static const List<_i3.SmithySerializer<DisableFastSnapshotRestoreErrorItem>>
      serializers = [DisableFastSnapshotRestoreErrorItemEc2QuerySerializer()];

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The errors.
  _i2.BuiltList<DisableFastSnapshotRestoreStateErrorItem>?
      get fastSnapshotRestoreStateErrors;
  @override
  List<Object?> get props => [
        snapshotId,
        fastSnapshotRestoreStateErrors,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableFastSnapshotRestoreErrorItem')
          ..add(
            'snapshotId',
            snapshotId,
          )
          ..add(
            'fastSnapshotRestoreStateErrors',
            fastSnapshotRestoreStateErrors,
          );
    return helper.toString();
  }
}

class DisableFastSnapshotRestoreErrorItemEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DisableFastSnapshotRestoreErrorItem> {
  const DisableFastSnapshotRestoreErrorItemEc2QuerySerializer()
      : super('DisableFastSnapshotRestoreErrorItem');

  @override
  Iterable<Type> get types => const [
        DisableFastSnapshotRestoreErrorItem,
        _$DisableFastSnapshotRestoreErrorItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableFastSnapshotRestoreErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableFastSnapshotRestoreErrorItemBuilder();
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
        case 'fastSnapshotRestoreStateErrorSet':
          result.fastSnapshotRestoreStateErrors
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DisableFastSnapshotRestoreStateErrorItem)],
            ),
          ) as _i2.BuiltList<DisableFastSnapshotRestoreStateErrorItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisableFastSnapshotRestoreErrorItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DisableFastSnapshotRestoreErrorItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableFastSnapshotRestoreErrorItem(
      :snapshotId,
      :fastSnapshotRestoreStateErrors
    ) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (fastSnapshotRestoreStateErrors != null) {
      result$
        ..add(const _i3.XmlElementName('FastSnapshotRestoreStateErrorSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          fastSnapshotRestoreStateErrors,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(DisableFastSnapshotRestoreStateErrorItem)],
          ),
        ));
    }
    return result$;
  }
}
