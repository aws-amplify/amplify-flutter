// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.deployments; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/deployment.dart'
    as _i2;

part 'deployments.g.dart';

/// Represents a collection resource that contains zero or more references to your existing deployments, and links that guide you on how to interact with your collection. The collection offers a paginated view of the contained deployments.
abstract class Deployments
    with _i1.AWSEquatable<Deployments>
    implements Built<Deployments, DeploymentsBuilder> {
  /// Represents a collection resource that contains zero or more references to your existing deployments, and links that guide you on how to interact with your collection. The collection offers a paginated view of the contained deployments.
  factory Deployments({
    List<_i2.Deployment>? items,
    String? position,
  }) {
    return _$Deployments._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// Represents a collection resource that contains zero or more references to your existing deployments, and links that guide you on how to interact with your collection. The collection offers a paginated view of the contained deployments.
  factory Deployments.build([void Function(DeploymentsBuilder) updates]) =
      _$Deployments;

  const Deployments._();

  /// Constructs a [Deployments] from a [payload] and [response].
  factory Deployments.fromResponse(
    Deployments payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<Deployments>> serializers = [
    DeploymentsRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeploymentsBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.Deployment>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Deployments')
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

class DeploymentsRestJson1Serializer
    extends _i4.StructuredSmithySerializer<Deployments> {
  const DeploymentsRestJson1Serializer() : super('Deployments');

  @override
  Iterable<Type> get types => const [
        Deployments,
        _$Deployments,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Deployments deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeploymentsBuilder();
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
              [FullType(_i2.Deployment)],
            ),
          ) as _i3.BuiltList<_i2.Deployment>));
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
    Deployments object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Deployments(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Deployment)],
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
