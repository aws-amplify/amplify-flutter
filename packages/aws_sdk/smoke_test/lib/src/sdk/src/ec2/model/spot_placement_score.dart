// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_placement_score; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'spot_placement_score.g.dart';

/// The Spot placement score for this Region or Availability Zone. The score is calculated based on the assumption that the `capacity-optimized` allocation strategy is used and that all of the Availability Zones in the Region can be used.
abstract class SpotPlacementScore
    with _i1.AWSEquatable<SpotPlacementScore>
    implements Built<SpotPlacementScore, SpotPlacementScoreBuilder> {
  /// The Spot placement score for this Region or Availability Zone. The score is calculated based on the assumption that the `capacity-optimized` allocation strategy is used and that all of the Availability Zones in the Region can be used.
  factory SpotPlacementScore({
    String? region,
    String? availabilityZoneId,
    int? score,
  }) {
    score ??= 0;
    return _$SpotPlacementScore._(
      region: region,
      availabilityZoneId: availabilityZoneId,
      score: score,
    );
  }

  /// The Spot placement score for this Region or Availability Zone. The score is calculated based on the assumption that the `capacity-optimized` allocation strategy is used and that all of the Availability Zones in the Region can be used.
  factory SpotPlacementScore.build(
          [void Function(SpotPlacementScoreBuilder) updates]) =
      _$SpotPlacementScore;

  const SpotPlacementScore._();

  static const List<_i2.SmithySerializer<SpotPlacementScore>> serializers = [
    SpotPlacementScoreEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotPlacementScoreBuilder b) {
    b.score = 0;
  }

  /// The Region.
  String? get region;

  /// The Availability Zone.
  String? get availabilityZoneId;

  /// The placement score, on a scale from `1` to `10`. A score of `10` indicates that your Spot request is highly likely to succeed in this Region or Availability Zone. A score of `1` indicates that your Spot request is not likely to succeed.
  int get score;
  @override
  List<Object?> get props => [
        region,
        availabilityZoneId,
        score,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotPlacementScore')
      ..add(
        'region',
        region,
      )
      ..add(
        'availabilityZoneId',
        availabilityZoneId,
      )
      ..add(
        'score',
        score,
      );
    return helper.toString();
  }
}

class SpotPlacementScoreEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotPlacementScore> {
  const SpotPlacementScoreEc2QuerySerializer() : super('SpotPlacementScore');

  @override
  Iterable<Type> get types => const [
        SpotPlacementScore,
        _$SpotPlacementScore,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotPlacementScore deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotPlacementScoreBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZoneId':
          result.availabilityZoneId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'score':
          result.score = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SpotPlacementScore object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotPlacementScoreResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotPlacementScore(:region, :availabilityZoneId, :score) = object;
    if (region != null) {
      result$
        ..add(const _i2.XmlElementName('Region'))
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZoneId != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          availabilityZoneId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Score'))
      ..add(serializers.serialize(
        score,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
