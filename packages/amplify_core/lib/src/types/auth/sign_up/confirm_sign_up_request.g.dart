// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmSignUpRequest<Options>
    _$ConfirmSignUpRequestFromJson<Options extends ConfirmSignUpOptions>(
  Map<String, dynamic> json,
  Options Function(Object? json) fromJsonOptions,
) =>
        ConfirmSignUpRequest<Options>(
          username: json['username'] as String,
          confirmationCode: json['confirmationCode'] as String,
          options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
        );

Map<String, dynamic>
    _$ConfirmSignUpRequestToJson<Options extends ConfirmSignUpOptions>(
  ConfirmSignUpRequest<Options> instance,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{
    'username': instance.username,
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
