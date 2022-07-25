// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_ref_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdRefTrait _$IdRefTraitFromJson(Map<String, dynamic> json) => IdRefTrait(
      selector: json['selector'] as String? ?? '*',
      failWhenMissing: json['failWhenMissing'] as bool,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$IdRefTraitToJson(IdRefTrait instance) =>
    <String, dynamic>{
      'selector': instance.selector,
      'failWhenMissing': instance.failWhenMissing,
      'errorMessage': instance.errorMessage,
    };
