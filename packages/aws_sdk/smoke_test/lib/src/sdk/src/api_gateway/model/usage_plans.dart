// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.usage_plans; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage_plan.dart'
    as _i2;

part 'usage_plans.g.dart';

/// Represents a collection of usage plans for an AWS account.
abstract class UsagePlans
    with _i1.AWSEquatable<UsagePlans>
    implements Built<UsagePlans, UsagePlansBuilder> {
  /// Represents a collection of usage plans for an AWS account.
  factory UsagePlans({
    List<_i2.UsagePlan>? items,
    String? position,
  }) {
    return _$UsagePlans._(
      items: items == null ? null : _i3.BuiltList(items),
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

  static const List<_i4.SmithySerializer> serializers = [
    UsagePlansRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UsagePlansBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.UsagePlan>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UsagePlans');
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

class UsagePlansRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UsagePlans> {
  const UsagePlansRestJson1Serializer() : super('UsagePlans');

  @override
  Iterable<Type> get types => const [
        UsagePlans,
        _$UsagePlans,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'item':
          if (value != null) {
            result.items.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.UsagePlan)],
              ),
            ) as _i3.BuiltList<_i2.UsagePlan>));
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
    final payload = (object as UsagePlans);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.UsagePlan)],
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
