// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federate_to_identity_pool_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FederateToIdentityPoolRequest _$FederateToIdentityPoolRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FederateToIdentityPoolRequest',
      json,
      ($checkedConvert) {
        final val = FederateToIdentityPoolRequest(
          token: $checkedConvert('token', (v) => v as String),
          provider: $checkedConvert(
              'provider', (v) => _authProviderFromJson(v as String)),
          options: $checkedConvert(
              'options',
              (v) => v == null
                  ? null
                  : FederateToIdentityPoolOptions.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
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
