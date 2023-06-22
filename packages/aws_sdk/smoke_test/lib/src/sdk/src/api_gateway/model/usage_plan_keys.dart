// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.usage_plan_keys; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan_key.dart'
    as _i2;

part 'usage_plan_keys.g.dart';

/// Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.
abstract class UsagePlanKeys
    with _i1.AWSEquatable<UsagePlanKeys>
    implements Built<UsagePlanKeys, UsagePlanKeysBuilder> {
  /// Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.
  factory UsagePlanKeys({
    List<_i2.UsagePlanKey>? items,
    String? position,
  }) {
    return _$UsagePlanKeys._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.
  factory UsagePlanKeys.build([void Function(UsagePlanKeysBuilder) updates]) =
      _$UsagePlanKeys;

  const UsagePlanKeys._();

  /// Constructs a [UsagePlanKeys] from a [payload] and [response].
  factory UsagePlanKeys.fromResponse(
    UsagePlanKeys payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<UsagePlanKeys>> serializers = [
    UsagePlanKeysRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UsagePlanKeysBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.UsagePlanKey>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UsagePlanKeys')
      ..add(
        'items',
        items,
      )
      ..add(
        'position',
        position,
      );
    return helper.toString();
  }
}

class UsagePlanKeysRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UsagePlanKeys> {
  const UsagePlanKeysRestJson1Serializer() : super('UsagePlanKeys');

  @override
  Iterable<Type> get types => const [
        UsagePlanKeys,
        _$UsagePlanKeys,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UsagePlanKeys deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsagePlanKeysBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'item':
          result.items.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.UsagePlanKey)],
            ),
          ) as _i3.BuiltList<_i2.UsagePlanKey>));
        case 'position':
          result.position = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UsagePlanKeys object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UsagePlanKeys(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.UsagePlanKey)],
          ),
        ));
    }
    if (position != null) {
      result$
        ..add('position')
        ..add(serializers.serialize(
          position,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
