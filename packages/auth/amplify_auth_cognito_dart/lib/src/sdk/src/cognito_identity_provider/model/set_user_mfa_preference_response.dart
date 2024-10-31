// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.set_user_mfa_preference_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'set_user_mfa_preference_response.g.dart';

abstract class SetUserMfaPreferenceResponse
    with
        _i1.AWSEquatable<SetUserMfaPreferenceResponse>
    implements
        Built<SetUserMfaPreferenceResponse,
            SetUserMfaPreferenceResponseBuilder>,
        _i2.EmptyPayload {
  factory SetUserMfaPreferenceResponse() {
    return _$SetUserMfaPreferenceResponse._();
  }

  factory SetUserMfaPreferenceResponse.build(
          [void Function(SetUserMfaPreferenceResponseBuilder) updates]) =
      _$SetUserMfaPreferenceResponse;

  const SetUserMfaPreferenceResponse._();

  /// Constructs a [SetUserMfaPreferenceResponse] from a [payload] and [response].
  factory SetUserMfaPreferenceResponse.fromResponse(
    SetUserMfaPreferenceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<SetUserMfaPreferenceResponse>>
      serializers = [SetUserMfaPreferenceResponseAwsJson11Serializer()];

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SetUserMfaPreferenceResponse');
    return helper.toString();
  }
}

class SetUserMfaPreferenceResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<SetUserMfaPreferenceResponse> {
  const SetUserMfaPreferenceResponseAwsJson11Serializer()
      : super('SetUserMfaPreferenceResponse');

  @override
  Iterable<Type> get types => const [
        SetUserMfaPreferenceResponse,
        _$SetUserMfaPreferenceResponse,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  SetUserMfaPreferenceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return SetUserMfaPreferenceResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SetUserMfaPreferenceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
