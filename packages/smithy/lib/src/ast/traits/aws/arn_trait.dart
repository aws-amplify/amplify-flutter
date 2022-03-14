import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'arn_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class ArnTrait with AWSSerializable implements Trait<ArnTrait> {
  const ArnTrait({
    required this.noRegion,
    required this.noAccount,
    required this.absolute,
    required this.template,
  });

  factory ArnTrait.fromJson(Object? json) =>
      _$ArnTraitFromJson((json as Map).cast<String, Object?>());

  static final RegExp _pattern = RegExp(r'\{([^}]+)}');

  static List<String> _parseLabels(String resource) =>
      _pattern.allMatches(resource).map((m) => m.group(1)!).toList();

  static const id = ShapeId(namespace: 'aws.api', shape: 'arn');

  final bool noRegion;
  final bool noAccount;
  final bool absolute;
  final String template;

  @JsonKey(ignore: true)
  List<String> get labels => _parseLabels(template);

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        noRegion,
        noAccount,
        absolute,
        template,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ArnTraitToJson(this);

  @override
  ArnTrait get value => this;
}
