// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'sign_up_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResult _$SignUpResultFromJson(Map<String, dynamic> json) => SignUpResult(
      isSignUpComplete: json['isSignUpComplete'] as bool,
      nextStep:
          AuthNextSignUpStep.fromJson(json['nextStep'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$SignUpResultToJson(SignUpResult instance) {
  final val = <String, dynamic>{
    'isSignUpComplete': instance.isSignUpComplete,
    'nextStep': instance.nextStep.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  return val;
}
