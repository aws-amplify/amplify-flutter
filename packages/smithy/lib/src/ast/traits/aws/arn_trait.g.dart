// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arn_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArnTrait _$ArnTraitFromJson(Map<String, dynamic> json) => ArnTrait(
      noRegion: json['noRegion'] as bool,
      noAccount: json['noAccount'] as bool,
      absolute: json['absolute'] as bool,
      template: json['template'] as String,
    );

Map<String, dynamic> _$ArnTraitToJson(ArnTrait instance) => <String, dynamic>{
      'noRegion': instance.noRegion,
      'noAccount': instance.noAccount,
      'absolute': instance.absolute,
      'template': instance.template,
    };
