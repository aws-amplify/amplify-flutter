// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferRecord _$TransferRecordFromJson(Map<String, dynamic> json) =>
    TransferRecord(
      id: json['id'] as String,
      objectKey: json['objectKey'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$TransferRecordToJson(TransferRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectKey': instance.objectKey,
      'createdAt': instance.createdAt.toIso8601String(),
    };
