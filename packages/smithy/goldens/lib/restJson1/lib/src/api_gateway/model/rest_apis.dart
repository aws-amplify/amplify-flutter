// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.api_gateway.model.rest_apis; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/api_gateway/model/rest_api.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'rest_apis.g.dart';

abstract class RestApis
    with _i1.AWSEquatable<RestApis>
    implements Built<RestApis, RestApisBuilder> {
  factory RestApis({
    List<RestApi>? items,
    String? position,
  }) {
    return _$RestApis._(
      items: items == null ? null : _i2.BuiltList(items),
      position: position,
    );
  }

  factory RestApis.build([void Function(RestApisBuilder) updates]) = _$RestApis;

  const RestApis._();

  /// Constructs a [RestApis] from a [payload] and [response].
  factory RestApis.fromResponse(
    RestApis payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<RestApis>> serializers = [
    RestApisRestJson1Serializer()
  ];

  _i2.BuiltList<RestApi>? get items;
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestApis')
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

class RestApisRestJson1Serializer
    extends _i3.StructuredSmithySerializer<RestApis> {
  const RestApisRestJson1Serializer() : super('RestApis');

  @override
  Iterable<Type> get types => const [
        RestApis,
        _$RestApis,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  RestApis deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestApisBuilder();
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
              _i2.BuiltList,
              [FullType(RestApi)],
            ),
          ) as _i2.BuiltList<RestApi>));
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
    RestApis object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RestApis(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RestApi)],
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
