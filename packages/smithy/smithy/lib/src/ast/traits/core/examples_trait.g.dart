// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'examples_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamplesTrait _$ExamplesTraitFromJson(Map<String, dynamic> json) =>
    ExamplesTrait(
      examples: (json['examples'] as List<dynamic>)
          .map((e) => Example.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExamplesTraitToJson(ExamplesTrait instance) =>
    <String, dynamic>{
      'examples': instance.examples,
    };

Example _$ExampleFromJson(Map<String, dynamic> json) => Example(
      title: json['title'] as String,
      documentation: json['documentation'] as String?,
      input: json['input'] as Map<String, dynamic>? ?? const {},
      output: json['output'] as Map<String, dynamic>? ?? const {},
      error: json['error'] == null
          ? null
          : ErrorExample.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExampleToJson(Example instance) => <String, dynamic>{
      'title': instance.title,
      'documentation': instance.documentation,
      'input': instance.input,
      'output': instance.output,
      'error': instance.error,
    };

ErrorExample _$ErrorExampleFromJson(Map<String, dynamic> json) => ErrorExample(
      shapeId: const ShapeIdConverter().fromJson(json['shapeId'] as String),
      content: json['content'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$ErrorExampleToJson(ErrorExample instance) =>
    <String, dynamic>{
      'shapeId': const ShapeIdConverter().toJson(instance.shapeId),
      'content': instance.content,
    };
