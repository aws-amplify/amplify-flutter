// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.static_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'static_value.g.dart';

/// The static value of the resource.
abstract class StaticValue
    with _i1.AWSEquatable<StaticValue>
    implements Built<StaticValue, StaticValueBuilder> {
  /// The static value of the resource.
  factory StaticValue({required List<String> values}) {
    return _$StaticValue._(values: _i2.BuiltList(values));
  }

  /// The static value of the resource.
  factory StaticValue.build([void Function(StaticValueBuilder) updates]) =
      _$StaticValue;

  const StaticValue._();

  static const List<_i3.SmithySerializer<StaticValue>> serializers = [
    StaticValueAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StaticValueBuilder b) {}

  /// A list of values. For example, the ARN of the assumed role.
  _i2.BuiltList<String> get values;
  @override
  List<Object?> get props => [values];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StaticValue')
      ..add(
        'values',
        values,
      );
    return helper.toString();
  }
}

class StaticValueAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<StaticValue> {
  const StaticValueAwsJson11Serializer() : super('StaticValue');

  @override
  Iterable<Type> get types => const [
        StaticValue,
        _$StaticValue,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StaticValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StaticValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Values':
          result.values.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StaticValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StaticValue(:values) = object;
    result$.addAll([
      'Values',
      serializers.serialize(
        values,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ),
    ]);
    return result$;
  }
}
