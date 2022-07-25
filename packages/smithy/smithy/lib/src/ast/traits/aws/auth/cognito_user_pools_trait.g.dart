// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_user_pools_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUserPoolsTrait _$CognitoUserPoolsTraitFromJson(
        Map<String, dynamic> json) =>
    CognitoUserPoolsTrait(
      providerArns: (json['providerArns'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CognitoUserPoolsTraitToJson(
        CognitoUserPoolsTrait instance) =>
    <String, dynamic>{
      'providerArns': instance.providerArns,
    };
