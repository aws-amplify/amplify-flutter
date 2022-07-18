// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_user_attribute_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmUserAttributeRequest<Key>
    _$ConfirmUserAttributeRequestFromJson<Key extends UserAttributeKey>(
  Map<String, dynamic> json,
  Key Function(Object? json) fromJsonKey,
) =>
        ConfirmUserAttributeRequest<Key>(
          userAttributeKey: fromJsonKey(json['userAttributeKey']),
          confirmationCode: json['confirmationCode'] as String,
        );

Map<String, dynamic>
    _$ConfirmUserAttributeRequestToJson<Key extends UserAttributeKey>(
  ConfirmUserAttributeRequest<Key> instance,
  Object? Function(Key value) toJsonKey,
) =>
        <String, dynamic>{
          'userAttributeKey': toJsonKey(instance.userAttributeKey),
          'confirmationCode': instance.confirmationCode,
        };
