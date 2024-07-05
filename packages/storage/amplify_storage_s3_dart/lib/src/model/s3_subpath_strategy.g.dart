// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_subpath_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubpathStrategy _$SubpathStrategyFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SubpathStrategy',
      json,
      ($checkedConvert) {
        final val = SubpathStrategy(
          excludeSubPaths:
              $checkedConvert('excludeSubPaths', (v) => v as bool? ?? false),
          delimiter: $checkedConvert('delimiter', (v) => v as String? ?? '/'),
        );
        return val;
      },
    );

Map<String, dynamic> _$SubpathStrategyToJson(SubpathStrategy instance) {
  final val = <String, dynamic>{
    'excludeSubPaths': instance.excludeSubPaths,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('delimiter', instance.delimiter);
  return val;
}
