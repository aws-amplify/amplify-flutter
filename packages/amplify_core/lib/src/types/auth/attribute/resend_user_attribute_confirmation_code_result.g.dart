// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'resend_user_attribute_confirmation_code_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendUserAttributeConfirmationCodeResult
    _$ResendUserAttributeConfirmationCodeResultFromJson(
            Map<String, dynamic> json) =>
        ResendUserAttributeConfirmationCodeResult(
          codeDeliveryDetails: AuthCodeDeliveryDetails.fromJson(
              json['codeDeliveryDetails'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ResendUserAttributeConfirmationCodeResultToJson(
        ResendUserAttributeConfirmationCodeResult instance) =>
    <String, dynamic>{
      'codeDeliveryDetails': instance.codeDeliveryDetails.toJson(),
    };
