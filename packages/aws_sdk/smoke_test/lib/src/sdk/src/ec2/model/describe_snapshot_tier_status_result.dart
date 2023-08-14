// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_snapshot_tier_status_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_tier_status.dart';

part 'describe_snapshot_tier_status_result.g.dart';

abstract class DescribeSnapshotTierStatusResult
    with
        _i1.AWSEquatable<DescribeSnapshotTierStatusResult>
    implements
        Built<DescribeSnapshotTierStatusResult,
            DescribeSnapshotTierStatusResultBuilder> {
  factory DescribeSnapshotTierStatusResult({
    List<SnapshotTierStatus>? snapshotTierStatuses,
    String? nextToken,
  }) {
    return _$DescribeSnapshotTierStatusResult._(
      snapshotTierStatuses: snapshotTierStatuses == null
          ? null
          : _i2.BuiltList(snapshotTierStatuses),
      nextToken: nextToken,
    );
  }

  factory DescribeSnapshotTierStatusResult.build(
          [void Function(DescribeSnapshotTierStatusResultBuilder) updates]) =
      _$DescribeSnapshotTierStatusResult;

  const DescribeSnapshotTierStatusResult._();

  /// Constructs a [DescribeSnapshotTierStatusResult] from a [payload] and [response].
  factory DescribeSnapshotTierStatusResult.fromResponse(
    DescribeSnapshotTierStatusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSnapshotTierStatusResult>>
      serializers = [DescribeSnapshotTierStatusResultEc2QuerySerializer()];

  /// Information about the snapshot's storage tier.
  _i2.BuiltList<SnapshotTierStatus>? get snapshotTierStatuses;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        snapshotTierStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSnapshotTierStatusResult')
          ..add(
            'snapshotTierStatuses',
            snapshotTierStatuses,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeSnapshotTierStatusResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeSnapshotTierStatusResult> {
  const DescribeSnapshotTierStatusResultEc2QuerySerializer()
      : super('DescribeSnapshotTierStatusResult');

  @override
  Iterable<Type> get types => const [
        DescribeSnapshotTierStatusResult,
        _$DescribeSnapshotTierStatusResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSnapshotTierStatusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSnapshotTierStatusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'snapshotTierStatusSet':
          result.snapshotTierStatuses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SnapshotTierStatus)],
            ),
          ) as _i2.BuiltList<SnapshotTierStatus>));
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
    DescribeSnapshotTierStatusResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSnapshotTierStatusResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSnapshotTierStatusResult(:snapshotTierStatuses, :nextToken) =
        object;
    if (snapshotTierStatuses != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotTierStatusSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          snapshotTierStatuses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SnapshotTierStatus)],
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
