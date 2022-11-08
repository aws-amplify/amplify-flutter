// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    List<_i2.ApiKey>? items,
    String? position,
    List<String>? warnings,
  }) {
    return _$ApiKeys._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
      warnings: warnings == null ? null : _i3.BuiltList(warnings),
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

  static const List<_i4.SmithySerializer> serializers = [
    ApiKeysRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ApiKeysBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.ApiKey>? get items;

  /// The current pagination position in the paged result set.
  String? get position;

  /// A list of warning messages logged during the import of API keys when the `failOnWarnings` option is set to true.
  _i3.BuiltList<String>? get warnings;
  @override
  List<Object?> get props => [
        items,
        position,
        warnings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ApiKeys');
    helper.add(
      'items',
      items,
    );
    helper.add(
      'position',
      position,
    );
    helper.add(
      'warnings',
      warnings,
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
      switch (key) {
        case 'item':
          if (value != null) {
            result.items.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ApiKey)],
              ),
            ) as _i3.BuiltList<_i2.ApiKey>));
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
        case 'warnings':
          if (value != null) {
            result.warnings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as ApiKeys);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ApiKey)],
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
    if (payload.warnings != null) {
      result
        ..add('warnings')
        ..add(serializers.serialize(
          payload.warnings!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
