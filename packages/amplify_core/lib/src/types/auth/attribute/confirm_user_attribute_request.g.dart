// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_user_attribute_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmUserAttributeRequest<Key, Options> _$ConfirmUserAttributeRequestFromJson<
        Key extends AuthUserAttributeKey,
        Options extends ConfirmUserAttributeOptions>(
  Map<String, dynamic> json,
  Key Function(Object? json) fromJsonKey,
  Options Function(Object? json) fromJsonOptions,
) =>
    ConfirmUserAttributeRequest<Key, Options>(
      userAttributeKey: fromJsonKey(json['userAttributeKey']),
      confirmationCode: json['confirmationCode'] as String,
      options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
    );

Map<String, dynamic> _$ConfirmUserAttributeRequestToJson<
    Key extends AuthUserAttributeKey,
    Options extends ConfirmUserAttributeOptions>(
  ConfirmUserAttributeRequest<Key, Options> instance,
  Object? Function(Key value) toJsonKey,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{
    'userAttributeKey': toJsonKey(instance.userAttributeKey),
    'confirmationCode': instance.confirmationCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'options', _$nullableGenericToJson(instance.options, toJsonOptions));
  return val;
}

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
