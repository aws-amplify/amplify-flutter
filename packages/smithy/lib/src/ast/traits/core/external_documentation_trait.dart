import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'external_documentation_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class ExternalDocumentationTrait
    with AWSSerializable
    implements Trait<ExternalDocumentationTrait> {
  const ExternalDocumentationTrait([this.urls = const {}]);

  factory ExternalDocumentationTrait.fromJson(Object? json) =>
      _$ExternalDocumentationTraitFromJson(<String, Object?>{'urls': json});

  static const id = ShapeId.core('externalDocumentation');

  final Map<String, Uri> urls;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [urls];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ExternalDocumentationTraitToJson(this);

  @override
  ExternalDocumentationTrait get value => this;
}
