// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.challenge_response_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_name.dart'
    as _i2;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'challenge_response_type.g.dart';

/// The challenge response type.
abstract class ChallengeResponseType
    with _i1.AWSEquatable<ChallengeResponseType>
    implements Built<ChallengeResponseType, ChallengeResponseTypeBuilder> {
  /// The challenge response type.
  factory ChallengeResponseType({
    _i2.ChallengeName? challengeName,
    _i3.ChallengeResponse? challengeResponse,
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

  static const List<_i4.SmithySerializer<ChallengeResponseType>> serializers = [
    ChallengeResponseTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChallengeResponseTypeBuilder b) {}

  /// The challenge name.
  _i2.ChallengeName? get challengeName;

  /// The challenge response.
  _i3.ChallengeResponse? get challengeResponse;
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
    extends _i4.StructuredSmithySerializer<ChallengeResponseType> {
  const ChallengeResponseTypeAwsJson11Serializer()
      : super('ChallengeResponseType');

  @override
  Iterable<Type> get types => const [
        ChallengeResponseType,
        _$ChallengeResponseType,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
            specifiedType: const FullType(_i2.ChallengeName),
          ) as _i2.ChallengeName);
        case 'ChallengeResponse':
          result.challengeResponse = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ChallengeResponse),
          ) as _i3.ChallengeResponse);
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
          specifiedType: const FullType(_i2.ChallengeName),
        ));
    }
    if (challengeResponse != null) {
      result$
        ..add('ChallengeResponse')
        ..add(serializers.serialize(
          challengeResponse,
          specifiedType: const FullType(_i3.ChallengeResponse),
        ));
    }
    return result$;
  }
}
