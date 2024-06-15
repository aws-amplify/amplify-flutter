// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federate_to_identity_pool_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FederateToIdentityPoolOptions _$FederateToIdentityPoolOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FederateToIdentityPoolOptions',
      json,
      ($checkedConvert) {
        final val = FederateToIdentityPoolOptions(
          developerProvidedIdentityId: $checkedConvert(
              'developerProvidedIdentityId', (v) => v as String?),
        );
        return val;
      },
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
