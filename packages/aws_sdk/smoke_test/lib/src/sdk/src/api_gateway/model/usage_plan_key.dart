// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? name,
    String? type,
    String? value,
  }) {
    return _$UsagePlanKey._(
      id: id,
      name: name,
      type: type,
      value: value,
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

  static const List<_i2.SmithySerializer> serializers = [
    UsagePlanKeyRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UsagePlanKeyBuilder b) {}

  /// The Id of a usage plan key.
  String? get id;

  /// The name of a usage plan key.
  String? get name;

  /// The type of a usage plan key. Currently, the valid key type is `API_KEY`.
  String? get type;

  /// The value of a usage plan key.
  String? get value;
  @override
  List<Object?> get props => [
        id,
        name,
        type,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UsagePlanKey');
    helper.add(
      'id',
      id,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'value',
      value,
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
      switch (key) {
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as UsagePlanKey);
    final result = <Object?>[];
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
