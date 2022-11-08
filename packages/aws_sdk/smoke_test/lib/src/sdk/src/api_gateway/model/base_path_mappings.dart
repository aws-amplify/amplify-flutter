// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.base_path_mappings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/base_path_mapping.dart'
    as _i2;

part 'base_path_mappings.g.dart';

/// Represents a collection of BasePathMapping resources.
abstract class BasePathMappings
    with _i1.AWSEquatable<BasePathMappings>
    implements Built<BasePathMappings, BasePathMappingsBuilder> {
  /// Represents a collection of BasePathMapping resources.
  factory BasePathMappings({
    List<_i2.BasePathMapping>? items,
    String? position,
  }) {
    return _$BasePathMappings._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// Represents a collection of BasePathMapping resources.
  factory BasePathMappings.build(
      [void Function(BasePathMappingsBuilder) updates]) = _$BasePathMappings;

  const BasePathMappings._();

  /// Constructs a [BasePathMappings] from a [payload] and [response].
  factory BasePathMappings.fromResponse(
    BasePathMappings payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    BasePathMappingsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BasePathMappingsBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.BasePathMapping>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BasePathMappings');
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

class BasePathMappingsRestJson1Serializer
    extends _i4.StructuredSmithySerializer<BasePathMappings> {
  const BasePathMappingsRestJson1Serializer() : super('BasePathMappings');

  @override
  Iterable<Type> get types => const [
        BasePathMappings,
        _$BasePathMappings,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  BasePathMappings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BasePathMappingsBuilder();
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
                [FullType(_i2.BasePathMapping)],
              ),
            ) as _i3.BuiltList<_i2.BasePathMapping>));
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
    final payload = (object as BasePathMappings);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.BasePathMapping)],
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
