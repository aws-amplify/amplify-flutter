// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_user_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserAttribute _$AuthUserAttributeFromJson(Map<String, dynamic> json) =>
    AuthUserAttribute(
      userAttributeKey: const AuthUserAttributeKeyConverter()
          .fromJson(json['userAttributeKey'] as String),
      value: json['value'] as String,
    );

Map<String, dynamic> _$AuthUserAttributeToJson(AuthUserAttribute instance) =>
    <String, dynamic>{
      'userAttributeKey': const AuthUserAttributeKeyConverter()
          .toJson(instance.userAttributeKey),
      'value': instance.value,
    };
