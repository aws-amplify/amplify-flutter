// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_sign_up_code_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendSignUpCodeResult _$ResendSignUpCodeResultFromJson(
        Map<String, dynamic> json) =>
    ResendSignUpCodeResult(
      AuthCodeDeliveryDetails.fromJson(
          json['codeDeliveryDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResendSignUpCodeResultToJson(
        ResendSignUpCodeResult instance) =>
    <String, dynamic>{
      'codeDeliveryDetails': instance.codeDeliveryDetails.toJson(),
    };
