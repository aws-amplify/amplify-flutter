// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';

class TraitMap extends DelegatingMap<ShapeId, Trait> {
  TraitMap(Map<ShapeId, Trait> traits) : super(traits);

  /// An empty [TraitMap].
  factory TraitMap.empty() => TraitMap({});

  /// Creates a [TraitMap] from [traits].
  factory TraitMap.fromTraits(Iterable<Trait> traits) =>
      TraitMap({for (var trait in traits) trait.shapeId: trait});

  /// Returns the trait of type [T], if it exists on the shape.
  T? getTrait<T extends Trait>() => values.whereType<T>().firstOrNull;

  /// Whether the shape has a trait of type [T].
  bool hasTrait<T extends Trait>() => values.any((t) => t is T);

  /// Gets the trait of type [T] from the shape or throws if not found.
  T expectTrait<T extends Trait>() => values.firstWhere((t) => t is T) as T;

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is TraitMap &&
          const MapEquality<ShapeId, Trait>().equals(this, other);

  @override
  int get hashCode => const MapEquality<ShapeId, Trait>().hash(this);
}

class TraitMapSerializer extends StructuredSerializer<TraitMap> {
  @override
  TraitMap deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final traitMap = TraitMap({});
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final shapeId = serializers.deserializeWith(
          ShapeId.serializer, iterator.current as String) as ShapeId;
      iterator.moveNext();
      final Object? value = iterator.current;
      traitMap[shapeId] = Trait.fromJson(shapeId, value);
    }
    return traitMap;
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, TraitMap object,
      {FullType specifiedType = FullType.unspecified}) sync* {
    for (var entry in object.entries) {
      yield entry.key.absoluteName;
      yield entry.value.toJson();
    }
  }

  @override
  Iterable<Type> get types => [TraitMap];

  @override
  String get wireName => 'TraitMap';
}
