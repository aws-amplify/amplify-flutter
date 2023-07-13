// GENERATED CODE - DO NOT MODIFY BY HAND

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
