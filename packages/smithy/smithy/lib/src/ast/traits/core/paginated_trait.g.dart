// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTrait _$PaginatedTraitFromJson(Map<String, dynamic> json) =>
    PaginatedTrait(
      items: json['items'] as String?,
      inputToken: json['inputToken'] as String?,
      outputToken: json['outputToken'] as String?,
      pageSize: json['pageSize'] as String?,
    );

Map<String, dynamic> _$PaginatedTraitToJson(PaginatedTrait instance) =>
    <String, dynamic>{
      'items': instance.items,
      'inputToken': instance.inputToken,
      'outputToken': instance.outputToken,
      'pageSize': instance.pageSize,
    };
