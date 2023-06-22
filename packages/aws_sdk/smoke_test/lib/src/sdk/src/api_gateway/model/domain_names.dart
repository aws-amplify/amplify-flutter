// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.domain_names; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name.dart'
    as _i2;

part 'domain_names.g.dart';

/// Represents a collection of DomainName resources.
abstract class DomainNames
    with _i1.AWSEquatable<DomainNames>
    implements Built<DomainNames, DomainNamesBuilder> {
  /// Represents a collection of DomainName resources.
  factory DomainNames({
    List<_i2.DomainName>? items,
    String? position,
  }) {
    return _$DomainNames._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// Represents a collection of DomainName resources.
  factory DomainNames.build([void Function(DomainNamesBuilder) updates]) =
      _$DomainNames;

  const DomainNames._();

  /// Constructs a [DomainNames] from a [payload] and [response].
  factory DomainNames.fromResponse(
    DomainNames payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DomainNames>> serializers = [
    DomainNamesRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DomainNamesBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.DomainName>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DomainNames')
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

class DomainNamesRestJson1Serializer
    extends _i4.StructuredSmithySerializer<DomainNames> {
  const DomainNamesRestJson1Serializer() : super('DomainNames');

  @override
  Iterable<Type> get types => const [
        DomainNames,
        _$DomainNames,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DomainNames deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DomainNamesBuilder();
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
              [FullType(_i2.DomainName)],
            ),
          ) as _i3.BuiltList<_i2.DomainName>));
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
    DomainNames object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DomainNames(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.DomainName)],
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
