// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matcher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Matcher _$MatcherFromJson(Map<String, dynamic> json) => Matcher(
      success: json['success'] as bool?,
      errorType: json['errorType'] as String?,
      output: json['output'] == null
          ? null
          : PathMatcher.fromJson(json['output'] as Map<String, dynamic>),
      inputOutput: json['inputOutput'] == null
          ? null
          : PathMatcher.fromJson(json['inputOutput'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatcherToJson(Matcher instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('success', instance.success);
  writeNotNull('errorType', instance.errorType);
  writeNotNull('output', instance.output);
  writeNotNull('inputOutput', instance.inputOutput);
  return val;
}

PathMatcher _$PathMatcherFromJson(Map<String, dynamic> json) => PathMatcher(
      path: json['path'] as String,
      expected: json['expected'] as String,
      comparator: $enumDecode(_$PathComparatorEnumMap, json['comparator']),
    );

Map<String, dynamic> _$PathMatcherToJson(PathMatcher instance) =>
    <String, dynamic>{
      'path': instance.path,
      'expected': instance.expected,
      'comparator': _$PathComparatorEnumMap[instance.comparator],
    };

const _$PathComparatorEnumMap = {
  PathComparator.stringEquals: 'stringEquals',
  PathComparator.booleanEquals: 'booleanEquals',
  PathComparator.allStringEquals: 'allStringEquals',
  PathComparator.anyStringEquals: 'anyStringEquals',
};
