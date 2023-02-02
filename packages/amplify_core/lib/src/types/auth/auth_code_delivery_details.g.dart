// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_code_delivery_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AuthCodeDeliveryDetailsToJson(
    AuthCodeDeliveryDetails instance) {
  final val = <String, dynamic>{
    'hashCode': instance.hashCode,
    'deliveryMedium': _$DeliveryMediumEnumMap[instance.deliveryMedium]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('destination', instance.destination);
  writeNotNull('attributeKey', instance.attributeKey?.toJson());
  writeNotNull('attributeName', instance.attributeName);
  val['props'] = instance.props;
  val['runtimeTypeName'] = instance.runtimeTypeName;
  return val;
}

const _$DeliveryMediumEnumMap = {
  DeliveryMedium.email: 'email',
  DeliveryMedium.phone: 'phone',
  DeliveryMedium.sms: 'sms',
  DeliveryMedium.unknown: 'unknown',
};
