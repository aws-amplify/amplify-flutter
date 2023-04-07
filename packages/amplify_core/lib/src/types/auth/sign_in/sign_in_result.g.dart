// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'sign_in_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResult _$SignInResultFromJson(Map<String, dynamic> json) => SignInResult(
      isSignedIn: json['isSignedIn'] as bool,
      nextStep:
          AuthNextSignInStep.fromJson(json['nextStep'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInResultToJson(SignInResult instance) =>
    <String, dynamic>{
      'isSignedIn': instance.isSignedIn,
      'nextStep': instance.nextStep.toJson(),
    };
