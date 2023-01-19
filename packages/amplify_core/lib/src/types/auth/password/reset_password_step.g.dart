// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'reset_password_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ResetPasswordStepToJson(ResetPasswordStep instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['hashCode'] = instance.hashCode;
  val['updateStep'] = _$AuthResetPasswordStepEnumMap[instance.updateStep]!;
  val['props'] = instance.props;
  val['runtimeTypeName'] = instance.runtimeTypeName;
  return val;
}

const _$AuthResetPasswordStepEnumMap = {
  AuthResetPasswordStep.confirmResetPasswordWithCode:
      'confirmResetPasswordWithCode',
  AuthResetPasswordStep.done: 'done',
};
