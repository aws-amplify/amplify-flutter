import 'package:smithy/ast.dart';

/// Defines when a shape or member was added to the model.
class SinceTrait extends StringTrait {
  const SinceTrait(String value) : super(id, value);

  factory SinceTrait.fromJson(Object? json) => SinceTrait(json as String);

  static const id = ShapeId.core('since');
}
