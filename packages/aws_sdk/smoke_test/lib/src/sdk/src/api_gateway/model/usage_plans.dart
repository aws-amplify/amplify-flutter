// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.usage_plans; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan.dart';

part 'usage_plans.g.dart';

/// Represents a collection of usage plans for an AWS account.
abstract class UsagePlans
    with _i1.AWSEquatable<UsagePlans>
    implements Built<UsagePlans, UsagePlansBuilder> {
  /// Represents a collection of usage plans for an AWS account.
  factory UsagePlans({
    List<UsagePlan>? items,
    String? position,
  }) {
    return _$UsagePlans._(
      items: items == null ? null : _i2.BuiltList(items),
      position: position,
    );
  }

  /// Represents a collection of usage plans for an AWS account.
  factory UsagePlans.build([void Function(UsagePlansBuilder) updates]) =
      _$UsagePlans;

  const UsagePlans._();

  /// Constructs a [UsagePlans] from a [payload] and [response].
  factory UsagePlans.fromResponse(
    UsagePlans payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<UsagePlans>> serializers = [
    UsagePlansRestJson1Serializer()
  ];

  /// The current page of elements from this collection.
  _i2.BuiltList<UsagePlan>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UsagePlans')
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

class UsagePlansRestJson1Serializer
    extends _i3.StructuredSmithySerializer<UsagePlans> {
  const UsagePlansRestJson1Serializer() : super('UsagePlans');

  @override
  Iterable<Type> get types => const [
        UsagePlans,
        _$UsagePlans,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UsagePlans deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsagePlansBuilder();
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
              [FullType(UsagePlan)],
            ),
          ) as _i2.BuiltList<UsagePlan>));
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
    UsagePlans object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UsagePlans(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(UsagePlan)],
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
