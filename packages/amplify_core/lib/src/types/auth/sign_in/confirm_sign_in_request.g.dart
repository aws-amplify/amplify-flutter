// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmSignInRequest<Options>
    _$ConfirmSignInRequestFromJson<Options extends ConfirmSignInOptions>(
  Map<String, dynamic> json,
  Options Function(Object? json) fromJsonOptions,
) =>
        ConfirmSignInRequest<Options>(
          confirmationValue: json['confirmationValue'] as String,
          options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
        );

Map<String, dynamic>
    _$ConfirmSignInRequestToJson<Options extends ConfirmSignInOptions>(
  ConfirmSignInRequest<Options> instance,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{
    'confirmationValue': instance.confirmationValue,
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
