// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federate_to_identity_pool_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FederateToIdentityPoolOptions _$FederateToIdentityPoolOptionsFromJson(
        Map<String, dynamic> json) =>
    FederateToIdentityPoolOptions(
      developerProvidedIdentityId:
          json['developerProvidedIdentityId'] as String?,
    );

Map<String, dynamic> _$FederateToIdentityPoolOptionsToJson(
    FederateToIdentityPoolOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'developerProvidedIdentityId', instance.developerProvidedIdentityId);
  return val;
}
