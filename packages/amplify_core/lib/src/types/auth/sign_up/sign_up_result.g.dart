// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResult _$SignUpResultFromJson(Map<String, dynamic> json) => SignUpResult(
      isSignUpComplete: json['isSignUpComplete'] as bool,
      nextStep:
          AuthNextSignUpStep.fromJson(json['nextStep'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpResultToJson(SignUpResult instance) =>
    <String, dynamic>{
      'isSignUpComplete': instance.isSignUpComplete,
      'nextStep': instance.nextStep.toJson(),
    };
