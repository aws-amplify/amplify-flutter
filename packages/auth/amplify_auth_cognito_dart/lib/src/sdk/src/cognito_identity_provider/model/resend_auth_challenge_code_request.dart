// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.resend_auth_challenge_code_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'resend_auth_challenge_code_request.g.dart';

abstract class ResendAuthChallengeCodeRequest
    with
        _i1.HttpInput<ResendAuthChallengeCodeRequest>,
        _i2.AWSEquatable<ResendAuthChallengeCodeRequest>
    implements
        Built<ResendAuthChallengeCodeRequest,
            ResendAuthChallengeCodeRequestBuilder> {
  factory ResendAuthChallengeCodeRequest({required String session}) {
    return _$ResendAuthChallengeCodeRequest._(session: session);
  }

  factory ResendAuthChallengeCodeRequest.build(
          [void Function(ResendAuthChallengeCodeRequestBuilder) updates]) =
      _$ResendAuthChallengeCodeRequest;

  const ResendAuthChallengeCodeRequest._();

  factory ResendAuthChallengeCodeRequest.fromRequest(
    ResendAuthChallengeCodeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ResendAuthChallengeCodeRequest>>
      serializers = [ResendAuthChallengeCodeRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResendAuthChallengeCodeRequestBuilder b) {}

  /// The session token from an authentication response that returned a challenge like `SMS_MFA`.
  String get session;
  @override
  ResendAuthChallengeCodeRequest getPayload() => this;
  @override
  List<Object?> get props => [session];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResendAuthChallengeCodeRequest')
      ..add(
        'session',
        session,
      );
    return helper.toString();
  }
}

class ResendAuthChallengeCodeRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ResendAuthChallengeCodeRequest> {
  const ResendAuthChallengeCodeRequestAwsJson11Serializer()
      : super('ResendAuthChallengeCodeRequest');

  @override
  Iterable<Type> get types => const [
        ResendAuthChallengeCodeRequest,
        _$ResendAuthChallengeCodeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResendAuthChallengeCodeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResendAuthChallengeCodeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Session':
          result.session = (serializers.deserialize(
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
    ResendAuthChallengeCodeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResendAuthChallengeCodeRequest(:session) = object;
    result$.addAll([
      'Session',
      serializers.serialize(
        session,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
