// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_traffic_mirror_targets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target.dart';

part 'describe_traffic_mirror_targets_result.g.dart';

abstract class DescribeTrafficMirrorTargetsResult
    with
        _i1.AWSEquatable<DescribeTrafficMirrorTargetsResult>
    implements
        Built<DescribeTrafficMirrorTargetsResult,
            DescribeTrafficMirrorTargetsResultBuilder> {
  factory DescribeTrafficMirrorTargetsResult({
    List<TrafficMirrorTarget>? trafficMirrorTargets,
    String? nextToken,
  }) {
    return _$DescribeTrafficMirrorTargetsResult._(
      trafficMirrorTargets: trafficMirrorTargets == null
          ? null
          : _i2.BuiltList(trafficMirrorTargets),
      nextToken: nextToken,
    );
  }

  factory DescribeTrafficMirrorTargetsResult.build(
          [void Function(DescribeTrafficMirrorTargetsResultBuilder) updates]) =
      _$DescribeTrafficMirrorTargetsResult;

  const DescribeTrafficMirrorTargetsResult._();

  /// Constructs a [DescribeTrafficMirrorTargetsResult] from a [payload] and [response].
  factory DescribeTrafficMirrorTargetsResult.fromResponse(
    DescribeTrafficMirrorTargetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeTrafficMirrorTargetsResult>>
      serializers = [DescribeTrafficMirrorTargetsResultEc2QuerySerializer()];

  /// Information about one or more Traffic Mirror targets.
  _i2.BuiltList<TrafficMirrorTarget>? get trafficMirrorTargets;

  /// The token to use to retrieve the next page of results. The value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        trafficMirrorTargets,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrafficMirrorTargetsResult')
          ..add(
            'trafficMirrorTargets',
            trafficMirrorTargets,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeTrafficMirrorTargetsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeTrafficMirrorTargetsResult> {
  const DescribeTrafficMirrorTargetsResultEc2QuerySerializer()
      : super('DescribeTrafficMirrorTargetsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTrafficMirrorTargetsResult,
        _$DescribeTrafficMirrorTargetsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrafficMirrorTargetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrafficMirrorTargetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorTargetSet':
          result.trafficMirrorTargets.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TrafficMirrorTarget)],
            ),
          ) as _i2.BuiltList<TrafficMirrorTarget>));
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
    DescribeTrafficMirrorTargetsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTrafficMirrorTargetsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTrafficMirrorTargetsResult(
      :trafficMirrorTargets,
      :nextToken
    ) = object;
    if (trafficMirrorTargets != null) {
      result$
        ..add(const _i3.XmlElementName('TrafficMirrorTargetSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          trafficMirrorTargets,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TrafficMirrorTarget)],
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
