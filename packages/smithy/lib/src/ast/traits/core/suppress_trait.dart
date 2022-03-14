import 'package:smithy/ast.dart';

class SuppressTrait extends StringListTrait {
  const SuppressTrait(List<String> values) : super(id, values);

  factory SuppressTrait.fromJson(Object? json) =>
      SuppressTrait((json as List).cast());

  static const id = ShapeId.core('suppress');
}
