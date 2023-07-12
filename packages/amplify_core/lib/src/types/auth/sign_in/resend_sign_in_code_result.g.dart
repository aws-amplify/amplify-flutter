// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'resend_sign_in_code_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendSignInCodeResult _$ResendSignInCodeResultFromJson(
        Map<String, dynamic> json) =>
    ResendSignInCodeResult(
      AuthCodeDeliveryDetails.fromJson(
          json['codeDeliveryDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResendSignInCodeResultToJson(
        ResendSignInCodeResult instance) =>
    <String, dynamic>{
      'codeDeliveryDetails': instance.codeDeliveryDetails.toJson(),
    };
