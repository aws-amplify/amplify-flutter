// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.request_validators; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/request_validator.dart'
    as _i2;

part 'request_validators.g.dart';

/// A collection of RequestValidator resources of a given RestApi.
abstract class RequestValidators
    with _i1.AWSEquatable<RequestValidators>
    implements Built<RequestValidators, RequestValidatorsBuilder> {
  /// A collection of RequestValidator resources of a given RestApi.
  factory RequestValidators({
    List<_i2.RequestValidator>? items,
    String? position,
  }) {
    return _$RequestValidators._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// A collection of RequestValidator resources of a given RestApi.
  factory RequestValidators.build(
      [void Function(RequestValidatorsBuilder) updates]) = _$RequestValidators;

  const RequestValidators._();

  /// Constructs a [RequestValidators] from a [payload] and [response].
  factory RequestValidators.fromResponse(
    RequestValidators payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    RequestValidatorsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestValidatorsBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.RequestValidator>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestValidators');
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

class RequestValidatorsRestJson1Serializer
    extends _i4.StructuredSmithySerializer<RequestValidators> {
  const RequestValidatorsRestJson1Serializer() : super('RequestValidators');

  @override
  Iterable<Type> get types => const [
        RequestValidators,
        _$RequestValidators,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RequestValidators deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestValidatorsBuilder();
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
                [FullType(_i2.RequestValidator)],
              ),
            ) as _i3.BuiltList<_i2.RequestValidator>));
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
    final payload = (object as RequestValidators);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.RequestValidator)],
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
