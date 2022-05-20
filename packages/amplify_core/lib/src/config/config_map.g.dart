// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSConfigMap<T> _$AWSConfigMapFromJson<T extends AWSSerializable>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    AWSConfigMap<T>(
      (json['configs'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, fromJsonT(e)),
      ),
    );
