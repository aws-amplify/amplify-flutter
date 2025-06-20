// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_sign_in_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextSignInStep _$AuthNextSignInStepFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AuthNextSignInStep', json, ($checkedConvert) {
  final val = AuthNextSignInStep(
    additionalInfo: $checkedConvert(
      'additionalInfo',
      (v) =>
          (v as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String)),
    ),
    codeDeliveryDetails: $checkedConvert(
      'codeDeliveryDetails',
      (v) => v == null
          ? null
          : AuthCodeDeliveryDetails.fromJson(v as Map<String, dynamic>),
    ),
    signInStep: $checkedConvert(
      'signInStep',
      (v) => $enumDecode(_$AuthSignInStepEnumMap, v),
    ),
    missingAttributes: $checkedConvert(
      'missingAttributes',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    const AuthUserAttributeKeyConverter().fromJson(e as String),
              )
              .toList() ??
          const [],
    ),
    allowedMfaTypes: $checkedConvert(
      'allowedMfaTypes',
      (v) => (v as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MfaTypeEnumMap, e))
          .toSet(),
    ),
    totpSetupDetails: $checkedConvert(
      'totpSetupDetails',
      (v) => v == null
          ? null
          : TotpSetupDetails.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$AuthNextSignInStepToJson(AuthNextSignInStep instance) =>
    <String, dynamic>{
      'additionalInfo': instance.additionalInfo,
      if (instance.codeDeliveryDetails?.toJson() case final value?)
        'codeDeliveryDetails': value,
      'signInStep': _$AuthSignInStepEnumMap[instance.signInStep]!,
      'missingAttributes': instance.missingAttributes
          .map(const AuthUserAttributeKeyConverter().toJson)
          .toList(),
      if (instance.allowedMfaTypes?.map((e) => _$MfaTypeEnumMap[e]!).toList()
          case final value?)
        'allowedMfaTypes': value,
      if (instance.totpSetupDetails?.toJson() case final value?)
        'totpSetupDetails': value,
    };

const _$AuthSignInStepEnumMap = {
  AuthSignInStep.continueSignInWithMfaSelection:
      'continueSignInWithMfaSelection',
  AuthSignInStep.continueSignInWithMfaSetupSelection:
      'continueSignInWithMfaSetupSelection',
  AuthSignInStep.continueSignInWithTotpSetup: 'continueSignInWithTotpSetup',
  AuthSignInStep.continueSignInWithEmailMfaSetup:
      'continueSignInWithEmailMfaSetup',
  AuthSignInStep.confirmSignInWithSmsMfaCode: 'confirmSignInWithSmsMfaCode',
  AuthSignInStep.confirmSignInWithTotpMfaCode: 'confirmSignInWithTotpMfaCode',
  AuthSignInStep.confirmSignInWithOtpCode: 'confirmSignInWithOtpCode',
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
  MfaType.email: 'EMAIL',
};
