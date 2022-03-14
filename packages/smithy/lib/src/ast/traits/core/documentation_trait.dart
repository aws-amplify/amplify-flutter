import 'package:smithy/ast.dart';

class DocumentationTrait extends StringTrait {
  const DocumentationTrait(String value) : super(id, value);

  const DocumentationTrait.fromJson(Object? json) : super(id, json as String);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'documentation');
}
