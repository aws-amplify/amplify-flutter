// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'sign_up_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResult _$SignUpResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SignUpResult',
      json,
      ($checkedConvert) {
        final val = SignUpResult(
          isSignUpComplete:
              $checkedConvert('isSignUpComplete', (v) => v as bool),
          nextStep: $checkedConvert('nextStep',
              (v) => AuthNextSignUpStep.fromJson(v as Map<String, dynamic>)),
          userId: $checkedConvert('userId', (v) => v as String?),
        );
        return val;
      },
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
