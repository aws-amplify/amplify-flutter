// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:collection/collection.dart';
import 'package:smithy/ast.dart';

class ShapeMap extends DelegatingMap<ShapeId, Shape> {
  ShapeMap(Map<ShapeId, Shape> shapes) : super(shapes);

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is ShapeMap &&
          const MapEquality<ShapeId, Shape>().equals(this, other);

  @override
  int get hashCode => const MapEquality<ShapeId, Shape>().hash(this);
}

class ShapeMapSerializer extends StructuredSerializer<ShapeMap> {
  @override
  ShapeMap deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final shapeMap = ShapeMap({});
    final applyTraits = ShapeMap({});
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final shapeId = serializers.deserializeWith(
          ShapeId.serializer, iterator.current as String) as ShapeId;
      iterator.moveNext();
      final Map<String, Object?> value = (iterator.current as Map).cast();
      final String type = value['type'] as String;
      final Shape shape = serializers
          .deserializeWith(
              Shape.serializer,
              StandardJsonPlugin()
                  .beforeDeserialize(value, const FullType(Shape)))!
          .rebuild((b) => b.shapeId = shapeId);
      if (ShapeType.valueOf(type) == ShapeType.apply) {
        applyTraits[shapeId] = shape;
      } else {
        // Update members before saving shape.
        shapeMap[shapeId] = shape.rebuild((b) {
          if (b is NamedMembersShapeBuilder) {
            b.members?.updateAll((name, shape) => shape.rebuild(
                  (s) => s
                    ..shapeId = b.shapeId!.replace(member: name)
                    ..memberName = name,
                ));
          } else if (b is CollectionShapeBuilder) {
            b.member
              ..shapeId = b.shapeId!.replace(member: 'member')
              ..memberName = 'member';
          }
        });
      }
    }

    // Apply traits to shape map
    applyTraits.forEach((memberId, apply) {
      final shapeId = memberId.replace(member: null);
      shapeMap.update(shapeId, (shape) {
        final member = memberId.member;
        if (member != null) {
          if (shape is NamedMembersShape) {
            shape.members.update(
              member,
              (member) => member..traits.addAll(apply.traits),
            );
          } else if (shape is CollectionShape) {
          } else {
            throw ArgumentError('Invalid member type');
          }
        } else {
          shape = shape.rebuild((b) => b..traits!.addAll(apply.traits));
        }
        return shape;
      });
    });

    // Add input/output traits to operation inputs/outputs, if not present.
    for (final shape in shapeMap.values.whereType<OperationShape>()) {
      final inputShape = shapeMap[shape.input?.target];
      if (inputShape != null) {
        inputShape.traits.putIfAbsent(
          InputTrait.id,
          () => const InputTrait(),
        );
      }
      final outputShape = shapeMap[shape.output?.target];
      if (outputShape != null) {
        outputShape.traits.putIfAbsent(
          OutputTrait.id,
          () => const OutputTrait(),
        );
      }
    }

    return shapeMap;
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, ShapeMap object,
      {FullType specifiedType = FullType.unspecified}) sync* {
    for (var entry in object.entries) {
      yield entry.key.absoluteName;
      yield serializers.serializeWith(Shape.serializer, entry.value);
    }
  }

  @override
  Iterable<Type> get types => [ShapeMap];

  @override
  String get wireName => 'ShapeMap';
}
