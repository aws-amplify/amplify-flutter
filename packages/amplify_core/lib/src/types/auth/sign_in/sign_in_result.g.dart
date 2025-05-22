// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'sign_in_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResult _$SignInResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SignInResult',
      json,
      ($checkedConvert) {
        final val = SignInResult(
          isSignedIn: $checkedConvert('isSignedIn', (v) => v as bool),
          nextStep: $checkedConvert('nextStep',
              (v) => AuthNextSignInStep.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SignInResultToJson(SignInResult instance) =>
    <String, dynamic>{
      'isSignedIn': instance.isSignedIn,
      'nextStep': instance.nextStep.toJson(),
    };
