part of 'trait.dart';

/// A general-purpose trait used to represent traits that are defined in the
/// model and have no concrete implementation.
class DynamicTrait extends Trait<Object> {
  const DynamicTrait._(ShapeId shapeId, Object value) : super(shapeId, value);
}
