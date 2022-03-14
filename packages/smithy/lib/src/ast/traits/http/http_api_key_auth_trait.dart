import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'http_api_key_auth_trait.g.dart';

enum Location { header, query }

@ShapeIdConverter()
@JsonSerializable()
class HttpApiKeyAuthTrait
    with AWSSerializable
    implements Trait<HttpApiKeyAuthTrait> {
  const HttpApiKeyAuthTrait({
    this.scheme,
    required this.name,
    required this.location,
  });

  factory HttpApiKeyAuthTrait.fromJson(Object? json) =>
      _$HttpApiKeyAuthTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('httpApiKeyAuth');

  final String? scheme;
  final String name;

  @JsonKey(name: 'in')
  final Location location;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [scheme, name, location];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpApiKeyAuthTraitToJson(this);

  @override
  HttpApiKeyAuthTrait get value => this;
}
