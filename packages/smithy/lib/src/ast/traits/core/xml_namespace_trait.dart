import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'xml_namespace_trait.g.dart';

/// Defines the XML Namespace prefix and URI.
@ShapeIdConverter()
@JsonSerializable()
class XmlNamespaceTrait implements Trait<XmlNamespaceTrait> {
  const XmlNamespaceTrait({
    required this.uri,
    this.prefix,
  });

  factory XmlNamespaceTrait.fromJson(Object? json) =>
      _$XmlNamespaceTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('xmlNamespace');

  final String uri;
  final String? prefix;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [uri, prefix];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$XmlNamespaceTraitToJson(this);

  @override
  XmlNamespaceTrait get value => this;
}
