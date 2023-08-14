// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_volume_status_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_item.dart';

part 'describe_volume_status_result.g.dart';

abstract class DescribeVolumeStatusResult
    with _i1.AWSEquatable<DescribeVolumeStatusResult>
    implements
        Built<DescribeVolumeStatusResult, DescribeVolumeStatusResultBuilder> {
  factory DescribeVolumeStatusResult({
    String? nextToken,
    List<VolumeStatusItem>? volumeStatuses,
  }) {
    return _$DescribeVolumeStatusResult._(
      nextToken: nextToken,
      volumeStatuses:
          volumeStatuses == null ? null : _i2.BuiltList(volumeStatuses),
    );
  }

  factory DescribeVolumeStatusResult.build(
          [void Function(DescribeVolumeStatusResultBuilder) updates]) =
      _$DescribeVolumeStatusResult;

  const DescribeVolumeStatusResult._();

  /// Constructs a [DescribeVolumeStatusResult] from a [payload] and [response].
  factory DescribeVolumeStatusResult.fromResponse(
    DescribeVolumeStatusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVolumeStatusResult>>
      serializers = [DescribeVolumeStatusResultEc2QuerySerializer()];

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// Information about the status of the volumes.
  _i2.BuiltList<VolumeStatusItem>? get volumeStatuses;
  @override
  List<Object?> get props => [
        nextToken,
        volumeStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumeStatusResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'volumeStatuses',
        volumeStatuses,
      );
    return helper.toString();
  }
}

class DescribeVolumeStatusResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVolumeStatusResult> {
  const DescribeVolumeStatusResultEc2QuerySerializer()
      : super('DescribeVolumeStatusResult');

  @override
  Iterable<Type> get types => const [
        DescribeVolumeStatusResult,
        _$DescribeVolumeStatusResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumeStatusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumeStatusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'volumeStatusSet':
          result.volumeStatuses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VolumeStatusItem)],
            ),
          ) as _i2.BuiltList<VolumeStatusItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVolumeStatusResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVolumeStatusResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVolumeStatusResult(:nextToken, :volumeStatuses) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (volumeStatuses != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeStatusSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          volumeStatuses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VolumeStatusItem)],
          ),
        ));
    }
    return result$;
  }
}
