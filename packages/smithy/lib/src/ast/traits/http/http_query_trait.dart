import 'package:smithy/ast.dart';

/// Binds a member to an HTTP query string.
class HttpQueryTrait extends StringTrait {
  const HttpQueryTrait(String value) : super(id, value);

  const HttpQueryTrait.fromJson(Object? json) : this(json as String);

  static const id = ShapeId.core('httpQuery');
}
