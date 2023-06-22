// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.usage_plan_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'usage_plan_key.g.dart';

/// Represents a usage plan key to identify a plan customer.
abstract class UsagePlanKey
    with _i1.AWSEquatable<UsagePlanKey>
    implements Built<UsagePlanKey, UsagePlanKeyBuilder> {
  /// Represents a usage plan key to identify a plan customer.
  factory UsagePlanKey({
    String? id,
    String? type,
    String? value,
    String? name,
  }) {
    return _$UsagePlanKey._(
      id: id,
      type: type,
      value: value,
      name: name,
    );
  }

  /// Represents a usage plan key to identify a plan customer.
  factory UsagePlanKey.build([void Function(UsagePlanKeyBuilder) updates]) =
      _$UsagePlanKey;

  const UsagePlanKey._();

  /// Constructs a [UsagePlanKey] from a [payload] and [response].
  factory UsagePlanKey.fromResponse(
    UsagePlanKey payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<UsagePlanKey>> serializers = [
    UsagePlanKeyRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UsagePlanKeyBuilder b) {}

  /// The Id of a usage plan key.
  String? get id;

  /// The type of a usage plan key. Currently, the valid key type is `API_KEY`.
  String? get type;

  /// The value of a usage plan key.
  String? get value;

  /// The name of a usage plan key.
  String? get name;
  @override
  List<Object?> get props => [
        id,
        type,
        value,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UsagePlanKey')
      ..add(
        'id',
        id,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'value',
        value,
      )
      ..add(
        'name',
        name,
      );
    return helper.toString();
  }
}

class UsagePlanKeyRestJson1Serializer
    extends _i2.StructuredSmithySerializer<UsagePlanKey> {
  const UsagePlanKeyRestJson1Serializer() : super('UsagePlanKey');

  @override
  Iterable<Type> get types => const [
        UsagePlanKey,
        _$UsagePlanKey,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UsagePlanKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsagePlanKeyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'value':
          result.value = (serializers.deserialize(
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
    UsagePlanKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UsagePlanKey(:id, :name, :type, :value) = object;
    if (id != null) {
      result$
        ..add('id')
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add('type')
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    if (value != null) {
      result$
        ..add('value')
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
