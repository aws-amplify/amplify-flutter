// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_code_delivery_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthCodeDeliveryDetails _$AuthCodeDeliveryDetailsFromJson(
        Map<String, dynamic> json) =>
    AuthCodeDeliveryDetails(
      attributeName: json['attributeName'] as String?,
      deliveryMedium: json['deliveryMedium'] as String?,
      destination: json['destination'] as String?,
    );

Map<String, dynamic> _$AuthCodeDeliveryDetailsToJson(
    AuthCodeDeliveryDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attributeName', instance.attributeName);
  writeNotNull('deliveryMedium', instance.deliveryMedium);
  writeNotNull('destination', instance.destination);
  return val;
}
