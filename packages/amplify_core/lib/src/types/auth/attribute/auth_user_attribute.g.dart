// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_user_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserAttribute<Key>
    _$AuthUserAttributeFromJson<Key extends AuthUserAttributeKey>(
  Map<String, dynamic> json,
  Key Function(Object? json) fromJsonKey,
) =>
        AuthUserAttribute<Key>(
          userAttributeKey: fromJsonKey(json['userAttributeKey']),
          value: json['value'] as String,
        );

Map<String, dynamic>
    _$AuthUserAttributeToJson<Key extends AuthUserAttributeKey>(
  AuthUserAttribute<Key> instance,
  Object? Function(Key value) toJsonKey,
) =>
        <String, dynamic>{
          'userAttributeKey': toJsonKey(instance.userAttributeKey),
          'value': instance.value,
        };
