// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_fast_snapshot_restores_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_success_item.dart';

part 'enable_fast_snapshot_restores_result.g.dart';

abstract class EnableFastSnapshotRestoresResult
    with
        _i1.AWSEquatable<EnableFastSnapshotRestoresResult>
    implements
        Built<EnableFastSnapshotRestoresResult,
            EnableFastSnapshotRestoresResultBuilder> {
  factory EnableFastSnapshotRestoresResult({
    List<EnableFastSnapshotRestoreSuccessItem>? successful,
    List<EnableFastSnapshotRestoreErrorItem>? unsuccessful,
  }) {
    return _$EnableFastSnapshotRestoresResult._(
      successful: successful == null ? null : _i2.BuiltList(successful),
      unsuccessful: unsuccessful == null ? null : _i2.BuiltList(unsuccessful),
    );
  }

  factory EnableFastSnapshotRestoresResult.build(
          [void Function(EnableFastSnapshotRestoresResultBuilder) updates]) =
      _$EnableFastSnapshotRestoresResult;

  const EnableFastSnapshotRestoresResult._();

  /// Constructs a [EnableFastSnapshotRestoresResult] from a [payload] and [response].
  factory EnableFastSnapshotRestoresResult.fromResponse(
    EnableFastSnapshotRestoresResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<EnableFastSnapshotRestoresResult>>
      serializers = [EnableFastSnapshotRestoresResultEc2QuerySerializer()];

  /// Information about the snapshots for which fast snapshot restores were successfully enabled.
  _i2.BuiltList<EnableFastSnapshotRestoreSuccessItem>? get successful;

  /// Information about the snapshots for which fast snapshot restores could not be enabled.
  _i2.BuiltList<EnableFastSnapshotRestoreErrorItem>? get unsuccessful;
  @override
  List<Object?> get props => [
        successful,
        unsuccessful,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableFastSnapshotRestoresResult')
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

class EnableFastSnapshotRestoresResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<EnableFastSnapshotRestoresResult> {
  const EnableFastSnapshotRestoresResultEc2QuerySerializer()
      : super('EnableFastSnapshotRestoresResult');

  @override
  Iterable<Type> get types => const [
        EnableFastSnapshotRestoresResult,
        _$EnableFastSnapshotRestoresResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastSnapshotRestoresResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastSnapshotRestoresResultBuilder();
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
              [FullType(EnableFastSnapshotRestoreSuccessItem)],
            ),
          ) as _i2.BuiltList<EnableFastSnapshotRestoreSuccessItem>));
        case 'unsuccessful':
          result.unsuccessful.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(EnableFastSnapshotRestoreErrorItem)],
            ),
          ) as _i2.BuiltList<EnableFastSnapshotRestoreErrorItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableFastSnapshotRestoresResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'EnableFastSnapshotRestoresResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableFastSnapshotRestoresResult(:successful, :unsuccessful) = object;
    if (successful != null) {
      result$
        ..add(const _i3.XmlElementName('Successful'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          successful,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(EnableFastSnapshotRestoreSuccessItem)],
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(EnableFastSnapshotRestoreErrorItem)],
          ),
        ));
    }
    return result$;
  }
}
