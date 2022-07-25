// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_documentation_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalDocumentationTrait _$ExternalDocumentationTraitFromJson(
        Map<String, dynamic> json) =>
    ExternalDocumentationTrait(
      (json['urls'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Uri.parse(e as String)),
          ) ??
          const {},
    );

Map<String, dynamic> _$ExternalDocumentationTraitToJson(
        ExternalDocumentationTrait instance) =>
    <String, dynamic>{
      'urls': instance.urls.map((k, e) => MapEntry(k, e.toString())),
    };
