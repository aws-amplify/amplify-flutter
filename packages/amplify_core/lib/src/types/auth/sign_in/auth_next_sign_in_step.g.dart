// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_sign_in_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextSignInStep _$AuthNextSignInStepFromJson(Map<String, dynamic> json) =>
    AuthNextSignInStep(
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      codeDeliveryDetails: json['codeDeliveryDetails'] == null
          ? null
          : AuthCodeDeliveryDetails.fromJson(
              json['codeDeliveryDetails'] as Map<String, dynamic>),
      signInStep: $enumDecode(_$AuthSignInStepEnumMap, json['signInStep']),
      missingAttributes: (json['missingAttributes'] as List<dynamic>?)
              ?.map((e) =>
                  const AuthUserAttributeKeyConverter().fromJson(e as String))
              .toList() ??
          const [],
      allowedMfaTypes: (json['allowedMfaTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MfaTypeEnumMap, e))
          .toSet(),
      totpSetupDetails: json['totpSetupDetails'] == null
          ? null
          : TotpSetupDetails.fromJson(
              json['totpSetupDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthNextSignInStepToJson(AuthNextSignInStep instance) {
  final val = <String, dynamic>{
    'additionalInfo': instance.additionalInfo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['signInStep'] = _$AuthSignInStepEnumMap[instance.signInStep]!;
  val['missingAttributes'] = instance.missingAttributes
      .map(const AuthUserAttributeKeyConverter().toJson)
      .toList();
  writeNotNull('allowedMfaTypes',
      instance.allowedMfaTypes?.map((e) => _$MfaTypeEnumMap[e]!).toList());
  writeNotNull('totpSetupDetails', instance.totpSetupDetails?.toJson());
  return val;
}

const _$AuthSignInStepEnumMap = {
  AuthSignInStep.continueSignInWithMfaSelection:
      'continueSignInWithMfaSelection',
  AuthSignInStep.continueSignInWithTotpSetup: 'continueSignInWithTotpSetup',
  AuthSignInStep.confirmSignInWithSmsMfaCode: 'confirmSignInWithSmsMfaCode',
  AuthSignInStep.confirmSignInWithTotpMfaCode: 'confirmSignInWithTotpMfaCode',
  AuthSignInStep.confirmSignInWithNewPassword: 'confirmSignInWithNewPassword',
  AuthSignInStep.confirmSignInWithCustomChallenge:
      'confirmSignInWithCustomChallenge',
  AuthSignInStep.resetPassword: 'resetPassword',
  AuthSignInStep.confirmSignUp: 'confirmSignUp',
  AuthSignInStep.done: 'done',
};

const _$MfaTypeEnumMap = {
  MfaType.sms: 'SMS',
  MfaType.totp: 'TOTP',
};
