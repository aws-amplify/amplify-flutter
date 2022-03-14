import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'http_error_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class HttpErrorTrait with AWSSerializable implements Trait<HttpErrorTrait> {
  const HttpErrorTrait(this.code);

  factory HttpErrorTrait.fromJson(Object? json) =>
      _$HttpErrorTraitFromJson(<String, Object?>{'code': json});

  static const id = ShapeId.core('httpError');

  final int code;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [code];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpErrorTraitToJson(this);

  @override
  HttpErrorTrait get value => this;
}
