// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.list_snapshots_in_recycle_bin_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_recycle_bin_info.dart';

part 'list_snapshots_in_recycle_bin_result.g.dart';

abstract class ListSnapshotsInRecycleBinResult
    with
        _i1.AWSEquatable<ListSnapshotsInRecycleBinResult>
    implements
        Built<ListSnapshotsInRecycleBinResult,
            ListSnapshotsInRecycleBinResultBuilder> {
  factory ListSnapshotsInRecycleBinResult({
    List<SnapshotRecycleBinInfo>? snapshots,
    String? nextToken,
  }) {
    return _$ListSnapshotsInRecycleBinResult._(
      snapshots: snapshots == null ? null : _i2.BuiltList(snapshots),
      nextToken: nextToken,
    );
  }

  factory ListSnapshotsInRecycleBinResult.build(
          [void Function(ListSnapshotsInRecycleBinResultBuilder) updates]) =
      _$ListSnapshotsInRecycleBinResult;

  const ListSnapshotsInRecycleBinResult._();

  /// Constructs a [ListSnapshotsInRecycleBinResult] from a [payload] and [response].
  factory ListSnapshotsInRecycleBinResult.fromResponse(
    ListSnapshotsInRecycleBinResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListSnapshotsInRecycleBinResult>>
      serializers = [ListSnapshotsInRecycleBinResultEc2QuerySerializer()];

  /// Information about the snapshots.
  _i2.BuiltList<SnapshotRecycleBinInfo>? get snapshots;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        snapshots,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListSnapshotsInRecycleBinResult')
          ..add(
            'snapshots',
            snapshots,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class ListSnapshotsInRecycleBinResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ListSnapshotsInRecycleBinResult> {
  const ListSnapshotsInRecycleBinResultEc2QuerySerializer()
      : super('ListSnapshotsInRecycleBinResult');

  @override
  Iterable<Type> get types => const [
        ListSnapshotsInRecycleBinResult,
        _$ListSnapshotsInRecycleBinResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ListSnapshotsInRecycleBinResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSnapshotsInRecycleBinResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'snapshotSet':
          result.snapshots.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SnapshotRecycleBinInfo)],
            ),
          ) as _i2.BuiltList<SnapshotRecycleBinInfo>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    ListSnapshotsInRecycleBinResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListSnapshotsInRecycleBinResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ListSnapshotsInRecycleBinResult(:snapshots, :nextToken) = object;
    if (snapshots != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          snapshots,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SnapshotRecycleBinInfo)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
