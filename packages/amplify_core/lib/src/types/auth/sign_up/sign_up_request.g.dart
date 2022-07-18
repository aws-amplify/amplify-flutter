// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequest<Options> _$SignUpRequestFromJson<Options extends SignUpOptions>(
  Map<String, dynamic> json,
  Options Function(Object? json) fromJsonOptions,
) =>
    SignUpRequest<Options>(
      username: json['username'] as String,
      password: json['password'] as String,
      options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
    );

Map<String, dynamic> _$SignUpRequestToJson<Options extends SignUpOptions>(
  SignUpRequest<Options> instance,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{
    'username': instance.username,
    'password': instance.password,
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
