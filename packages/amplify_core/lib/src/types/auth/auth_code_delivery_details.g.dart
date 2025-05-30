// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_code_delivery_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthCodeDeliveryDetails _$AuthCodeDeliveryDetailsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AuthCodeDeliveryDetails', json, ($checkedConvert) {
  final val = AuthCodeDeliveryDetails(
    deliveryMedium: $checkedConvert(
      'deliveryMedium',
      (v) => $enumDecode(_$DeliveryMediumEnumMap, v),
    ),
    destination: $checkedConvert('destination', (v) => v as String?),
    attributeKey: $checkedConvert(
      'attributeKey',
      (v) => _$JsonConverterFromJson<String, AuthUserAttributeKey>(
        v,
        const AuthUserAttributeKeyConverter().fromJson,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$AuthCodeDeliveryDetailsToJson(
  AuthCodeDeliveryDetails instance,
) => <String, dynamic>{
  'deliveryMedium': _$DeliveryMediumEnumMap[instance.deliveryMedium]!,
  if (instance.destination case final value?) 'destination': value,
  if (_$JsonConverterToJson<String, AuthUserAttributeKey>(
        instance.attributeKey,
        const AuthUserAttributeKeyConverter().toJson,
      )
      case final value?)
    'attributeKey': value,
};

const _$DeliveryMediumEnumMap = {
  DeliveryMedium.email: 'email',
  DeliveryMedium.phone: 'phone',
  DeliveryMedium.sms: 'sms',
  DeliveryMedium.totp: 'totp',
  DeliveryMedium.unknown: 'unknown',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
