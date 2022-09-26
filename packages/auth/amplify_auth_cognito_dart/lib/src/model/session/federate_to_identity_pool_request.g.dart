// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federate_to_identity_pool_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FederateToIdentityPoolRequest _$FederateToIdentityPoolRequestFromJson(
        Map<String, dynamic> json) =>
    FederateToIdentityPoolRequest(
      token: json['token'] as String,
      provider: _authProviderFromJson(json['provider'] as String),
      options: json['options'] == null
          ? null
          : FederateToIdentityPoolOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FederateToIdentityPoolRequestToJson(
    FederateToIdentityPoolRequest instance) {
  final val = <String, dynamic>{
    'token': instance.token,
    'provider': instance.provider.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options?.toJson());
  return val;
}
