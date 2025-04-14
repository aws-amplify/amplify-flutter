// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol_definition_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProtocolDefinitionTrait _$ProtocolDefinitionTraitFromJson(
        Map<String, dynamic> json) =>
    ProtocolDefinitionTrait(
      traits: (json['traits'] as List<dynamic>?)
              ?.map((e) => const ShapeIdConverter().fromJson(e as String))
              .toList() ??
          const [],
      noInlineDocumentSupport:
          json['noInlineDocumentSupport'] as bool? ?? false,
    );

Map<String, dynamic> _$ProtocolDefinitionTraitToJson(
        ProtocolDefinitionTrait instance) =>
    <String, dynamic>{
      'traits': instance.traits.map(const ShapeIdConverter().toJson).toList(),
      'noInlineDocumentSupport': instance.noInlineDocumentSupport,
    };
