// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retryable_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetryableTrait _$RetryableTraitFromJson(Map<String, dynamic> json) =>
    RetryableTrait(
      throttling: json['throttling'] as bool? ?? false,
    );

Map<String, dynamic> _$RetryableTraitToJson(RetryableTrait instance) =>
    <String, dynamic>{
      'throttling': instance.throttling,
    };
