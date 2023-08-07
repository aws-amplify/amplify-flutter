// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_integration_test.cognito_identity_provider.model.challenge_response_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_name.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'challenge_response_type.g.dart';

/// The challenge response type.
abstract class ChallengeResponseType
    with _i1.AWSEquatable<ChallengeResponseType>
    implements Built<ChallengeResponseType, ChallengeResponseTypeBuilder> {
  /// The challenge response type.
  factory ChallengeResponseType({
    ChallengeName? challengeName,
    ChallengeResponse? challengeResponse,
  }) {
    return _$ChallengeResponseType._(
      challengeName: challengeName,
      challengeResponse: challengeResponse,
    );
  }

  /// The challenge response type.
  factory ChallengeResponseType.build(
          [void Function(ChallengeResponseTypeBuilder) updates]) =
      _$ChallengeResponseType;

  const ChallengeResponseType._();

  static const List<_i2.SmithySerializer<ChallengeResponseType>> serializers = [
    ChallengeResponseTypeAwsJson11Serializer()
  ];

  /// The challenge name.
  ChallengeName? get challengeName;

  /// The challenge response.
  ChallengeResponse? get challengeResponse;
  @override
  List<Object?> get props => [
        challengeName,
        challengeResponse,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChallengeResponseType')
      ..add(
        'challengeName',
        challengeName,
      )
      ..add(
        'challengeResponse',
        challengeResponse,
      );
    return helper.toString();
  }
}

class ChallengeResponseTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ChallengeResponseType> {
  const ChallengeResponseTypeAwsJson11Serializer()
      : super('ChallengeResponseType');

  @override
  Iterable<Type> get types => const [
        ChallengeResponseType,
        _$ChallengeResponseType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ChallengeResponseType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChallengeResponseTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChallengeName':
          result.challengeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(ChallengeName),
          ) as ChallengeName);
        case 'ChallengeResponse':
          result.challengeResponse = (serializers.deserialize(
            value,
            specifiedType: const FullType(ChallengeResponse),
          ) as ChallengeResponse);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ChallengeResponseType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ChallengeResponseType(:challengeName, :challengeResponse) = object;
    if (challengeName != null) {
      result$
        ..add('ChallengeName')
        ..add(serializers.serialize(
          challengeName,
          specifiedType: const FullType(ChallengeName),
        ));
    }
    if (challengeResponse != null) {
      result$
        ..add('ChallengeResponse')
        ..add(serializers.serialize(
          challengeResponse,
          specifiedType: const FullType(ChallengeResponse),
        ));
    }
    return result$;
  }
}
