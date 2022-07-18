// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_user_attribute_confirmation_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendUserAttributeConfirmationCodeRequest<Key, Options>
    _$ResendUserAttributeConfirmationCodeRequestFromJson<
            Key extends UserAttributeKey,
            Options extends ResendUserAttributeConfirmationCodeOptions>(
  Map<String, dynamic> json,
  Key Function(Object? json) fromJsonKey,
  Options Function(Object? json) fromJsonOptions,
) =>
        ResendUserAttributeConfirmationCodeRequest<Key, Options>(
          userAttributeKey: fromJsonKey(json['userAttributeKey']),
          options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
        );

Map<String, dynamic> _$ResendUserAttributeConfirmationCodeRequestToJson<
    Key extends UserAttributeKey,
    Options extends ResendUserAttributeConfirmationCodeOptions>(
  ResendUserAttributeConfirmationCodeRequest<Key, Options> instance,
  Object? Function(Key value) toJsonKey,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{
    'userAttributeKey': toJsonKey(instance.userAttributeKey),
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
