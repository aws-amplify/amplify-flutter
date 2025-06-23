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

Map<String, dynamic> _$MatcherToJson(Matcher instance) => <String, dynamic>{
  if (instance.success case final value?) 'success': value,
  if (instance.errorType case final value?) 'errorType': value,
  if (instance.output case final value?) 'output': value,
  if (instance.inputOutput case final value?) 'inputOutput': value,
};

PathMatcher _$PathMatcherFromJson(Map<String, dynamic> json) => PathMatcher(
  path: json['path'] as String,
  expected: json['expected'] as String,
  comparator: $enumDecode(_$PathComparatorEnumMap, json['comparator']),
);

Map<String, dynamic> _$PathMatcherToJson(PathMatcher instance) =>
    <String, dynamic>{
      'path': instance.path,
      'expected': instance.expected,
      'comparator': _$PathComparatorEnumMap[instance.comparator]!,
    };

const _$PathComparatorEnumMap = {
  PathComparator.stringEquals: 'stringEquals',
  PathComparator.booleanEquals: 'booleanEquals',
  PathComparator.allStringEquals: 'allStringEquals',
  PathComparator.anyStringEquals: 'anyStringEquals',
};
