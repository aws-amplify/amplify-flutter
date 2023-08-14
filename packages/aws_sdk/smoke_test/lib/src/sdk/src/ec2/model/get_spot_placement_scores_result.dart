// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_spot_placement_scores_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement_score.dart';

part 'get_spot_placement_scores_result.g.dart';

abstract class GetSpotPlacementScoresResult
    with
        _i1.AWSEquatable<GetSpotPlacementScoresResult>
    implements
        Built<GetSpotPlacementScoresResult,
            GetSpotPlacementScoresResultBuilder> {
  factory GetSpotPlacementScoresResult({
    List<SpotPlacementScore>? spotPlacementScores,
    String? nextToken,
  }) {
    return _$GetSpotPlacementScoresResult._(
      spotPlacementScores: spotPlacementScores == null
          ? null
          : _i2.BuiltList(spotPlacementScores),
      nextToken: nextToken,
    );
  }

  factory GetSpotPlacementScoresResult.build(
          [void Function(GetSpotPlacementScoresResultBuilder) updates]) =
      _$GetSpotPlacementScoresResult;

  const GetSpotPlacementScoresResult._();

  /// Constructs a [GetSpotPlacementScoresResult] from a [payload] and [response].
  factory GetSpotPlacementScoresResult.fromResponse(
    GetSpotPlacementScoresResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetSpotPlacementScoresResult>>
      serializers = [GetSpotPlacementScoresResultEc2QuerySerializer()];

  /// The Spot placement score for the top 10 Regions or Availability Zones, scored on a scale from 1 to 10. Each score  reflects how likely it is that each Region or Availability Zone will succeed at fulfilling the specified target capacity  _at the time of the Spot placement score request_. A score of `10` means that your Spot capacity request is highly likely to succeed in that Region or Availability Zone.
  ///
  /// If you request a Spot placement score for Regions, a high score assumes that your fleet request will be configured to use all Availability Zones and the `capacity-optimized` allocation strategy. If you request a Spot placement score for Availability Zones, a high score assumes that your fleet request will be configured to use a single Availability Zone and the `capacity-optimized` allocation strategy.
  ///
  /// Different  Regions or Availability Zones might return the same score.
  ///
  /// The Spot placement score serves as a recommendation only. No score guarantees that your Spot request will be fully or partially fulfilled.
  _i2.BuiltList<SpotPlacementScore>? get spotPlacementScores;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        spotPlacementScores,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSpotPlacementScoresResult')
      ..add(
        'spotPlacementScores',
        spotPlacementScores,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetSpotPlacementScoresResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetSpotPlacementScoresResult> {
  const GetSpotPlacementScoresResultEc2QuerySerializer()
      : super('GetSpotPlacementScoresResult');

  @override
  Iterable<Type> get types => const [
        GetSpotPlacementScoresResult,
        _$GetSpotPlacementScoresResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetSpotPlacementScoresResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSpotPlacementScoresResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'spotPlacementScoreSet':
          result.spotPlacementScores.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SpotPlacementScore)],
            ),
          ) as _i2.BuiltList<SpotPlacementScore>));
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
    GetSpotPlacementScoresResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetSpotPlacementScoresResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetSpotPlacementScoresResult(:spotPlacementScores, :nextToken) =
        object;
    if (spotPlacementScores != null) {
      result$
        ..add(const _i3.XmlElementName('SpotPlacementScoreSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          spotPlacementScores,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SpotPlacementScore)],
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
