// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'sign_up_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SignUpResultToJson(SignUpResult instance) {
  final val = <String, dynamic>{
    'hashCode': instance.hashCode,
    'isSignUpComplete': instance.isSignUpComplete,
    'nextStep': instance.nextStep.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  val['props'] = instance.props;
  val['runtimeTypeName'] = instance.runtimeTypeName;
  return val;
}
