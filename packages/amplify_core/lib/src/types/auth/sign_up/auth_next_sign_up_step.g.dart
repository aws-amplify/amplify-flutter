// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_sign_up_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextSignUpStep _$AuthNextSignUpStepFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthNextSignUpStep',
      json,
      ($checkedConvert) {
        final val = AuthNextSignUpStep(
          additionalInfo: $checkedConvert(
              'additionalInfo',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          codeDeliveryDetails: $checkedConvert(
              'codeDeliveryDetails',
              (v) => v == null
                  ? null
                  : AuthCodeDeliveryDetails.fromJson(
                      v as Map<String, dynamic>)),
          signUpStep: $checkedConvert(
              'signUpStep', (v) => $enumDecode(_$AuthSignUpStepEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuthNextSignUpStepToJson(AuthNextSignUpStep instance) {
  final val = <String, dynamic>{
    'additionalInfo': instance.additionalInfo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['signUpStep'] = _$AuthSignUpStepEnumMap[instance.signUpStep]!;
  return val;
}

const _$AuthSignUpStepEnumMap = {
  AuthSignUpStep.confirmSignUp: 'confirmSignUp',
  AuthSignUpStep.done: 'done',
};
