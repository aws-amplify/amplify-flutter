// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_out_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignOutRequest _$SignOutRequestFromJson(Map<String, dynamic> json) =>
    SignOutRequest(
      options: json['options'] == null
          ? null
          : SignOutOptions.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignOutRequestToJson(SignOutRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options?.toJson());
  return val;
}
