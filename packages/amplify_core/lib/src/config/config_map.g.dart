// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'config_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSConfigMap<T> _$AWSConfigMapFromJson<T extends AWSSerializable<Object?>>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    $checkedCreate(
      'AWSConfigMap',
      json,
      ($checkedConvert) {
        final val = AWSConfigMap<T>(
          $checkedConvert(
              'configs',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, fromJsonT(e)),
                  )),
        );
        return val;
      },
    );
