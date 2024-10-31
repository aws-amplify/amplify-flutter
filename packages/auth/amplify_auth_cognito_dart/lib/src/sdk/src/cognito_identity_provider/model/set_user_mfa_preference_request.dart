// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.set_user_mfa_preference_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/sms_mfa_settings_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/software_token_mfa_settings_type.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'set_user_mfa_preference_request.g.dart';

abstract class SetUserMfaPreferenceRequest
    with
        _i1.HttpInput<SetUserMfaPreferenceRequest>,
        _i2.AWSEquatable<SetUserMfaPreferenceRequest>
    implements
        Built<SetUserMfaPreferenceRequest, SetUserMfaPreferenceRequestBuilder> {
  factory SetUserMfaPreferenceRequest({
    SmsMfaSettingsType? smsMfaSettings,
    SoftwareTokenMfaSettingsType? softwareTokenMfaSettings,
    required String accessToken,
  }) {
    return _$SetUserMfaPreferenceRequest._(
      smsMfaSettings: smsMfaSettings,
      softwareTokenMfaSettings: softwareTokenMfaSettings,
      accessToken: accessToken,
    );
  }

  factory SetUserMfaPreferenceRequest.build(
          [void Function(SetUserMfaPreferenceRequestBuilder) updates]) =
      _$SetUserMfaPreferenceRequest;

  const SetUserMfaPreferenceRequest._();

  factory SetUserMfaPreferenceRequest.fromRequest(
    SetUserMfaPreferenceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SetUserMfaPreferenceRequest>>
      serializers = [SetUserMfaPreferenceRequestAwsJson11Serializer()];

  /// The SMS text message multi-factor authentication (MFA) settings.
  SmsMfaSettingsType? get smsMfaSettings;

  /// The time-based one-time password (TOTP) software token MFA settings.
  SoftwareTokenMfaSettingsType? get softwareTokenMfaSettings;

  /// A valid access token that Amazon Cognito issued to the user whose MFA preference you want to set.
  String get accessToken;
  @override
  SetUserMfaPreferenceRequest getPayload() => this;

  @override
  List<Object?> get props => [
        smsMfaSettings,
        softwareTokenMfaSettings,
        accessToken,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SetUserMfaPreferenceRequest')
      ..add(
        'smsMfaSettings',
        smsMfaSettings,
      )
      ..add(
        'softwareTokenMfaSettings',
        softwareTokenMfaSettings,
      )
      ..add(
        'accessToken',
        '***SENSITIVE***',
      );
    return helper.toString();
  }
}

class SetUserMfaPreferenceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SetUserMfaPreferenceRequest> {
  const SetUserMfaPreferenceRequestAwsJson11Serializer()
      : super('SetUserMfaPreferenceRequest');

  @override
  Iterable<Type> get types => const [
        SetUserMfaPreferenceRequest,
        _$SetUserMfaPreferenceRequest,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  SetUserMfaPreferenceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetUserMfaPreferenceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SMSMfaSettings':
          result.smsMfaSettings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SmsMfaSettingsType),
          ) as SmsMfaSettingsType));
        case 'SoftwareTokenMfaSettings':
          result.softwareTokenMfaSettings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SoftwareTokenMfaSettingsType),
          ) as SoftwareTokenMfaSettingsType));
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
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
    SetUserMfaPreferenceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SetUserMfaPreferenceRequest(
      :smsMfaSettings,
      :softwareTokenMfaSettings,
      :accessToken
    ) = object;
    result$.addAll([
      'AccessToken',
      serializers.serialize(
        accessToken,
        specifiedType: const FullType(String),
      ),
    ]);
    if (smsMfaSettings != null) {
      result$
        ..add('SMSMfaSettings')
        ..add(serializers.serialize(
          smsMfaSettings,
          specifiedType: const FullType(SmsMfaSettingsType),
        ));
    }
    if (softwareTokenMfaSettings != null) {
      result$
        ..add('SoftwareTokenMfaSettings')
        ..add(serializers.serialize(
          softwareTokenMfaSettings,
          specifiedType: const FullType(SoftwareTokenMfaSettingsType),
        ));
    }
    return result$;
  }
}
