// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federate_to_identity_pool_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FederateToIdentityPoolResult _$FederateToIdentityPoolResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FederateToIdentityPoolResult',
      json,
      ($checkedConvert) {
        final val = FederateToIdentityPoolResult(
          identityId: $checkedConvert('identityId', (v) => v as String),
          credentials: $checkedConvert('credentials',
              (v) => AWSCredentials.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$FederateToIdentityPoolResultToJson(
        FederateToIdentityPoolResult instance) =>
    <String, dynamic>{
      'identityId': instance.identityId,
      'credentials': instance.credentials.toJson(),
    };
