// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_request_tests_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpRequestTestsTrait _$HttpRequestTestsTraitFromJson(
        Map<String, dynamic> json) =>
    HttpRequestTestsTrait(
      (json['testCases'] as List<dynamic>)
          .map((e) => HttpRequestTestCase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HttpRequestTestsTraitToJson(
        HttpRequestTestsTrait instance) =>
    <String, dynamic>{
      'testCases': instance.testCases,
    };
