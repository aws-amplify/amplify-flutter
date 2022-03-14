import 'package:built_value/built_value.dart';
import 'package:smithy/ast.dart';

part 'simple_shape.g.dart';

/// Marker class for primitive/simple types.
@BuiltValue(instantiable: false)
abstract class SimpleShape implements Shape {}
