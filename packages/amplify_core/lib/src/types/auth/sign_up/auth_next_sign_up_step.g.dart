// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_sign_up_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextSignUpStep _$AuthNextSignUpStepFromJson(Map<String, dynamic> json) =>
    AuthNextSignUpStep(
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      codeDeliveryDetails: json['codeDeliveryDetails'] == null
          ? null
          : AuthCodeDeliveryDetails.fromJson(
              json['codeDeliveryDetails'] as Map<String, dynamic>),
      signUpStep: $enumDecode(_$AuthSignUpStepEnumMap, json['signUpStep']),
    );

Map<String, dynamic> _$AuthNextSignUpStepToJson(AuthNextSignUpStep instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['signUpStep'] = _$AuthSignUpStepEnumMap[instance.signUpStep]!;
  return val;
}

const _$AuthSignUpStepEnumMap = {
  AuthSignUpStep.confirmSignUp: 'confirmSignUp',
  AuthSignUpStep.done: 'done',
};
