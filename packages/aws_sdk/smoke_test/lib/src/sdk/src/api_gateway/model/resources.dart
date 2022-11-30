// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.resources; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/resource.dart' as _i2;

part 'resources.g.dart';

/// Represents a collection of Resource resources.
abstract class Resources
    with _i1.AWSEquatable<Resources>
    implements Built<Resources, ResourcesBuilder> {
  /// Represents a collection of Resource resources.
  factory Resources({
    List<_i2.Resource>? items,
    String? position,
  }) {
    return _$Resources._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// Represents a collection of Resource resources.
  factory Resources.build([void Function(ResourcesBuilder) updates]) =
      _$Resources;

  const Resources._();

  /// Constructs a [Resources] from a [payload] and [response].
  factory Resources.fromResponse(
    Resources payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ResourcesRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourcesBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.Resource>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Resources');
    helper.add(
      'items',
      items,
    );
    helper.add(
      'position',
      position,
    );
    return helper.toString();
  }
}

class ResourcesRestJson1Serializer
    extends _i4.StructuredSmithySerializer<Resources> {
  const ResourcesRestJson1Serializer() : super('Resources');

  @override
  Iterable<Type> get types => const [
        Resources,
        _$Resources,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Resources deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourcesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'item':
          if (value != null) {
            result.items.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Resource)],
              ),
            ) as _i3.BuiltList<_i2.Resource>));
          }
          break;
        case 'position':
          if (value != null) {
            result.position = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Resources);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Resource)],
          ),
        ));
    }
    if (payload.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(
          payload.position!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
