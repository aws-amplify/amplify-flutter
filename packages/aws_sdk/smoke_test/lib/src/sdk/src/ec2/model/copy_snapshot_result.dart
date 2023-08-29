// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.copy_snapshot_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'copy_snapshot_result.g.dart';

abstract class CopySnapshotResult
    with _i1.AWSEquatable<CopySnapshotResult>
    implements Built<CopySnapshotResult, CopySnapshotResultBuilder> {
  factory CopySnapshotResult({
    String? snapshotId,
    List<Tag>? tags,
  }) {
    return _$CopySnapshotResult._(
      snapshotId: snapshotId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  factory CopySnapshotResult.build(
          [void Function(CopySnapshotResultBuilder) updates]) =
      _$CopySnapshotResult;

  const CopySnapshotResult._();

  /// Constructs a [CopySnapshotResult] from a [payload] and [response].
  factory CopySnapshotResult.fromResponse(
    CopySnapshotResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CopySnapshotResult>> serializers = [
    CopySnapshotResultEc2QuerySerializer()
  ];

  /// The ID of the new snapshot.
  String? get snapshotId;

  /// Any tags applied to the new snapshot.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        snapshotId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopySnapshotResult')
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CopySnapshotResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CopySnapshotResult> {
  const CopySnapshotResultEc2QuerySerializer() : super('CopySnapshotResult');

  @override
  Iterable<Type> get types => const [
        CopySnapshotResult,
        _$CopySnapshotResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CopySnapshotResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopySnapshotResultBuilder();
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
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CopySnapshotResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CopySnapshotResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CopySnapshotResult(:snapshotId, :tags) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
