// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUserPoolConfig _$CognitoUserPoolConfigFromJson(
        Map<String, dynamic> json) =>
    CognitoUserPoolConfig(
      poolId: json['PoolId'] as String,
      appClientId: json['AppClientId'] as String,
      appClientSecret: json['AppClientSecret'] as String?,
      region: json['Region'] as String,
      hostedUI: json['HostedUI'] == null
          ? null
          : CognitoOAuthConfig.fromJson(
              json['HostedUI'] as Map<String, dynamic>),
      endpoint: json['Endpoint'] as String?,
    );

Map<String, dynamic> _$CognitoUserPoolConfigToJson(
    CognitoUserPoolConfig instance) {
  final val = <String, dynamic>{
    'PoolId': instance.poolId,
    'AppClientId': instance.appClientId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AppClientSecret', instance.appClientSecret);
  val['Region'] = instance.region;
  writeNotNull('HostedUI', instance.hostedUI?.toJson());
  writeNotNull('Endpoint', instance.endpoint);
  return val;
}
