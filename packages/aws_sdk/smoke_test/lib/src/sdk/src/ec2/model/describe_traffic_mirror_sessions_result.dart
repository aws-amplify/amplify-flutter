// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_traffic_mirror_sessions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session.dart';

part 'describe_traffic_mirror_sessions_result.g.dart';

abstract class DescribeTrafficMirrorSessionsResult
    with
        _i1.AWSEquatable<DescribeTrafficMirrorSessionsResult>
    implements
        Built<DescribeTrafficMirrorSessionsResult,
            DescribeTrafficMirrorSessionsResultBuilder> {
  factory DescribeTrafficMirrorSessionsResult({
    List<TrafficMirrorSession>? trafficMirrorSessions,
    String? nextToken,
  }) {
    return _$DescribeTrafficMirrorSessionsResult._(
      trafficMirrorSessions: trafficMirrorSessions == null
          ? null
          : _i2.BuiltList(trafficMirrorSessions),
      nextToken: nextToken,
    );
  }

  factory DescribeTrafficMirrorSessionsResult.build(
          [void Function(DescribeTrafficMirrorSessionsResultBuilder) updates]) =
      _$DescribeTrafficMirrorSessionsResult;

  const DescribeTrafficMirrorSessionsResult._();

  /// Constructs a [DescribeTrafficMirrorSessionsResult] from a [payload] and [response].
  factory DescribeTrafficMirrorSessionsResult.fromResponse(
    DescribeTrafficMirrorSessionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeTrafficMirrorSessionsResult>>
      serializers = [DescribeTrafficMirrorSessionsResultEc2QuerySerializer()];

  /// Describes one or more Traffic Mirror sessions. By default, all Traffic Mirror sessions are described. Alternatively, you can filter the results.
  _i2.BuiltList<TrafficMirrorSession>? get trafficMirrorSessions;

  /// The token to use to retrieve the next page of results. The value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        trafficMirrorSessions,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrafficMirrorSessionsResult')
          ..add(
            'trafficMirrorSessions',
            trafficMirrorSessions,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeTrafficMirrorSessionsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTrafficMirrorSessionsResult> {
  const DescribeTrafficMirrorSessionsResultEc2QuerySerializer()
      : super('DescribeTrafficMirrorSessionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTrafficMirrorSessionsResult,
        _$DescribeTrafficMirrorSessionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrafficMirrorSessionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrafficMirrorSessionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorSessionSet':
          result.trafficMirrorSessions
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TrafficMirrorSession)],
            ),
          ) as _i2.BuiltList<TrafficMirrorSession>));
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
    DescribeTrafficMirrorSessionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTrafficMirrorSessionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTrafficMirrorSessionsResult(
      :trafficMirrorSessions,
      :nextToken
    ) = object;
    if (trafficMirrorSessions != null) {
      result$
        ..add(const _i3.XmlElementName('TrafficMirrorSessionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          trafficMirrorSessions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TrafficMirrorSession)],
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
