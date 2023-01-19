// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_sign_up_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AuthNextSignUpStepToJson(AuthNextSignUpStep instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['hashCode'] = instance.hashCode;
  val['signUpStep'] = _$AuthSignUpStepEnumMap[instance.signUpStep]!;
  val['props'] = instance.props;
  val['runtimeTypeName'] = instance.runtimeTypeName;
  return val;
}

const _$AuthSignUpStepEnumMap = {
  AuthSignUpStep.confirmSignUp: 'confirmSignUp',
  AuthSignUpStep.done: 'done',
};
