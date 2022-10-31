// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.authorizers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/authorizer.dart'
    as _i2;

part 'authorizers.g.dart';

/// Represents a collection of Authorizer resources.
abstract class Authorizers
    with _i1.AWSEquatable<Authorizers>
    implements Built<Authorizers, AuthorizersBuilder> {
  /// Represents a collection of Authorizer resources.
  factory Authorizers({
    List<_i2.Authorizer>? items,
    String? position,
  }) {
    return _$Authorizers._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// Represents a collection of Authorizer resources.
  factory Authorizers.build([void Function(AuthorizersBuilder) updates]) =
      _$Authorizers;

  const Authorizers._();

  /// Constructs a [Authorizers] from a [payload] and [response].
  factory Authorizers.fromResponse(
    Authorizers payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    AuthorizersRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizersBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.Authorizer>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Authorizers');
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

class AuthorizersRestJson1Serializer
    extends _i4.StructuredSmithySerializer<Authorizers> {
  const AuthorizersRestJson1Serializer() : super('Authorizers');

  @override
  Iterable<Type> get types => const [
        Authorizers,
        _$Authorizers,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Authorizers deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizersBuilder();
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
                [FullType(_i2.Authorizer)],
              ),
            ) as _i3.BuiltList<_i2.Authorizer>));
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
    final payload = (object as Authorizers);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Authorizer)],
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
