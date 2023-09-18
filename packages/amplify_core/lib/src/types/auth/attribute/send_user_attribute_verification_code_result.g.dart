// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'send_user_attribute_verification_code_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendUserAttributeVerificationCodeResult
    _$SendUserAttributeVerificationCodeResultFromJson(
            Map<String, dynamic> json) =>
        SendUserAttributeVerificationCodeResult(
          codeDeliveryDetails: AuthCodeDeliveryDetails.fromJson(
              json['codeDeliveryDetails'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SendUserAttributeVerificationCodeResultToJson(
        SendUserAttributeVerificationCodeResult instance) =>
    <String, dynamic>{
      'codeDeliveryDetails': instance.codeDeliveryDetails.toJson(),
    };
