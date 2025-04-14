// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_malformed_request_tests_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpMalformedRequestTestsTrait _$HttpMalformedRequestTestsTraitFromJson(
        Map<String, dynamic> json) =>
    HttpMalformedRequestTestsTrait(
      (json['testCases'] as List<dynamic>)
          .map((e) => ParameterizedHttpMalformedRequestTestCase.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HttpMalformedRequestTestsTraitToJson(
        HttpMalformedRequestTestsTrait instance) =>
    <String, dynamic>{
      'testCases': instance.testCases,
    };
