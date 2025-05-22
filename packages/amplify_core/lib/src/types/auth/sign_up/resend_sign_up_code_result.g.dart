// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'resend_sign_up_code_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendSignUpCodeResult _$ResendSignUpCodeResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ResendSignUpCodeResult',
      json,
      ($checkedConvert) {
        final val = ResendSignUpCodeResult(
          $checkedConvert(
              'codeDeliveryDetails',
              (v) =>
                  AuthCodeDeliveryDetails.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ResendSignUpCodeResultToJson(
        ResendSignUpCodeResult instance) =>
    <String, dynamic>{
      'codeDeliveryDetails': instance.codeDeliveryDetails.toJson(),
    };
