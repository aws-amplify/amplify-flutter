// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_code_delivery_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthCodeDeliveryDetails _$AuthCodeDeliveryDetailsFromJson(
        Map<String, dynamic> json) =>
    AuthCodeDeliveryDetails(
      deliveryMedium:
          $enumDecode(_$DeliveryMediumEnumMap, json['deliveryMedium']),
      destination: json['destination'] as String?,
      attributeKey: json['attributeKey'] as String?,
    );

Map<String, dynamic> _$AuthCodeDeliveryDetailsToJson(
    AuthCodeDeliveryDetails instance) {
  final val = <String, dynamic>{
    'deliveryMedium': _$DeliveryMediumEnumMap[instance.deliveryMedium]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('destination', instance.destination);
  writeNotNull('attributeKey', instance.attributeKey);
  return val;
}

const _$DeliveryMediumEnumMap = {
  DeliveryMedium.email: 'email',
  DeliveryMedium.phone: 'phone',
  DeliveryMedium.sms: 'sms',
  DeliveryMedium.unknown: 'unknown',
};
