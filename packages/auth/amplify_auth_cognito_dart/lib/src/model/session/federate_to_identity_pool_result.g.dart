// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federate_to_identity_pool_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FederateToIdentityPoolResult _$FederateToIdentityPoolResultFromJson(
        Map<String, dynamic> json) =>
    FederateToIdentityPoolResult(
      identityId: json['identityId'] as String,
      credentials:
          AWSCredentials.fromJson(json['credentials'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FederateToIdentityPoolResultToJson(
        FederateToIdentityPoolResult instance) =>
    <String, dynamic>{
      'identityId': instance.identityId,
      'credentials': instance.credentials.toJson(),
    };
