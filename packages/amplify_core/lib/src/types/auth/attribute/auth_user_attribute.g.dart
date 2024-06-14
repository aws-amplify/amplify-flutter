// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_user_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserAttribute _$AuthUserAttributeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthUserAttribute',
      json,
      ($checkedConvert) {
        final val = AuthUserAttribute(
          userAttributeKey: $checkedConvert(
              'userAttributeKey',
              (v) =>
                  const AuthUserAttributeKeyConverter().fromJson(v as String)),
          value: $checkedConvert('value', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuthUserAttributeToJson(AuthUserAttribute instance) =>
    <String, dynamic>{
      'userAttributeKey': const AuthUserAttributeKeyConverter()
          .toJson(instance.userAttributeKey),
      'value': instance.value,
    };
