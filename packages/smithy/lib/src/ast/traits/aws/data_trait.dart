import 'package:smithy/ast.dart';

class DataTrait extends StringTrait {
  const DataTrait(String value) : super(id, value);

  const DataTrait.fromJson(Object? json) : super(id, json as String);

  static const id = ShapeId(namespace: 'aws.api', shape: 'data');
}
