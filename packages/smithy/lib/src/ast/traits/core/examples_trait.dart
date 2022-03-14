import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'examples_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class ExamplesTrait with AWSSerializable implements Trait<ExamplesTrait> {
  const ExamplesTrait({
    required this.examples,
  });

  factory ExamplesTrait.fromJson(Object? json) =>
      _$ExamplesTraitFromJson(<String, Object?>{'examples': json});

  static const id = ShapeId.core('examples');

  final List<Example> examples;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [examples];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ExamplesTraitToJson(this);

  @override
  ExamplesTrait get value => this;
}

@JsonSerializable()
class Example with AWSEquatable<Example>, AWSSerializable {
  const Example({
    required this.title,
    this.documentation,
    this.input = const {},
    this.output = const {},
    this.error,
  });

  factory Example.fromJson(Map<String, Object?> json) =>
      _$ExampleFromJson(json);

  final String title;
  final String? documentation;
  final Map<String, Object?> input;
  final Map<String, Object?> output;
  final ErrorExample? error;

  @override
  List<Object?> get props => [
        title,
        documentation,
        input,
        output,
        error,
      ];

  @override
  Map<String, Object?> toJson() => _$ExampleToJson(this);
}

@ShapeIdConverter()
@JsonSerializable()
class ErrorExample with AWSEquatable<ErrorExample>, AWSSerializable {
  const ErrorExample({
    required this.shapeId,
    this.content = const {},
  });

  factory ErrorExample.fromJson(Map<String, Object?> json) =>
      _$ErrorExampleFromJson(json);

  final ShapeId shapeId;
  final Map<String, Object?> content;

  @override
  List<Object?> get props => [
        shapeId,
        content,
      ];

  @override
  Map<String, Object?> toJson() => _$ErrorExampleToJson(this);
}
