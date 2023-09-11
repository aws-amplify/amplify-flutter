// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_volumes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume.dart';

part 'describe_volumes_result.g.dart';

abstract class DescribeVolumesResult
    with _i1.AWSEquatable<DescribeVolumesResult>
    implements Built<DescribeVolumesResult, DescribeVolumesResultBuilder> {
  factory DescribeVolumesResult({
    List<Volume>? volumes,
    String? nextToken,
  }) {
    return _$DescribeVolumesResult._(
      volumes: volumes == null ? null : _i2.BuiltList(volumes),
      nextToken: nextToken,
    );
  }

  factory DescribeVolumesResult.build(
          [void Function(DescribeVolumesResultBuilder) updates]) =
      _$DescribeVolumesResult;

  const DescribeVolumesResult._();

  /// Constructs a [DescribeVolumesResult] from a [payload] and [response].
  factory DescribeVolumesResult.fromResponse(
    DescribeVolumesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVolumesResult>> serializers = [
    DescribeVolumesResultEc2QuerySerializer()
  ];

  /// Information about the volumes.
  _i2.BuiltList<Volume>? get volumes;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        volumes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumesResult')
      ..add(
        'volumes',
        volumes,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVolumesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVolumesResult> {
  const DescribeVolumesResultEc2QuerySerializer()
      : super('DescribeVolumesResult');

  @override
  Iterable<Type> get types => const [
        DescribeVolumesResult,
        _$DescribeVolumesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'volumeSet':
          result.volumes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Volume)],
            ),
          ) as _i2.BuiltList<Volume>));
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
    DescribeVolumesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVolumesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVolumesResult(:volumes, :nextToken) = object;
    if (volumes != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          volumes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Volume)],
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
