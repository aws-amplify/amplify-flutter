// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_response_tests_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpResponseTestsTrait _$HttpResponseTestsTraitFromJson(
        Map<String, dynamic> json) =>
    HttpResponseTestsTrait(
      (json['testCases'] as List<dynamic>)
          .map((e) => HttpResponseTestCase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HttpResponseTestsTraitToJson(
        HttpResponseTestsTrait instance) =>
    <String, dynamic>{
      'testCases': instance.testCases,
    };
