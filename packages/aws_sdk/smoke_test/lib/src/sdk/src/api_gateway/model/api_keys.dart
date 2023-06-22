// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.api_keys; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_key.dart' as _i2;

part 'api_keys.g.dart';

/// Represents a collection of API keys as represented by an ApiKeys resource.
abstract class ApiKeys
    with _i1.AWSEquatable<ApiKeys>
    implements Built<ApiKeys, ApiKeysBuilder> {
  /// Represents a collection of API keys as represented by an ApiKeys resource.
  factory ApiKeys({
    List<String>? warnings,
    List<_i2.ApiKey>? items,
    String? position,
  }) {
    return _$ApiKeys._(
      warnings: warnings == null ? null : _i3.BuiltList(warnings),
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// Represents a collection of API keys as represented by an ApiKeys resource.
  factory ApiKeys.build([void Function(ApiKeysBuilder) updates]) = _$ApiKeys;

  const ApiKeys._();

  /// Constructs a [ApiKeys] from a [payload] and [response].
  factory ApiKeys.fromResponse(
    ApiKeys payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ApiKeys>> serializers = [
    ApiKeysRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ApiKeysBuilder b) {}

  /// A list of warning messages logged during the import of API keys when the `failOnWarnings` option is set to true.
  _i3.BuiltList<String>? get warnings;

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.ApiKey>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        warnings,
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ApiKeys')
      ..add(
        'warnings',
        warnings,
      )
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

class ApiKeysRestJson1Serializer
    extends _i4.StructuredSmithySerializer<ApiKeys> {
  const ApiKeysRestJson1Serializer() : super('ApiKeys');

  @override
  Iterable<Type> get types => const [
        ApiKeys,
        _$ApiKeys,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ApiKeys deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiKeysBuilder();
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
              [FullType(_i2.ApiKey)],
            ),
          ) as _i3.BuiltList<_i2.ApiKey>));
        case 'position':
          result.position = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'warnings':
          result.warnings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ApiKeys object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ApiKeys(:items, :position, :warnings) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ApiKey)],
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
    if (warnings != null) {
      result$
        ..add('warnings')
        ..add(serializers.serialize(
          warnings,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
