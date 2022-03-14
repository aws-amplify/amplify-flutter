import 'package:smithy/ast.dart';

class HttpHeaderTrait extends StringTrait {
  const HttpHeaderTrait(String value) : super(id, value);

  const HttpHeaderTrait.fromJson(Object? json) : this(json as String);

  static const id = ShapeId.core('httpHeader');
}
