// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_sign_up_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendSignUpCodeRequest<Options>
    _$ResendSignUpCodeRequestFromJson<Options extends ResendSignUpCodeOptions>(
  Map<String, dynamic> json,
  Options Function(Object? json) fromJsonOptions,
) =>
        ResendSignUpCodeRequest<Options>(
          username: json['username'] as String,
          options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
        );

Map<String, dynamic>
    _$ResendSignUpCodeRequestToJson<Options extends ResendSignUpCodeOptions>(
  ResendSignUpCodeRequest<Options> instance,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{
    'username': instance.username,
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
