// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v2.json_protocol.model.struct_with_json_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'struct_with_json_name.g.dart';

abstract class StructWithJsonName
    with _i1.AWSEquatable<StructWithJsonName>
    implements Built<StructWithJsonName, StructWithJsonNameBuilder> {
  factory StructWithJsonName({String? value}) {
    return _$StructWithJsonName._(value: value);
  }

  factory StructWithJsonName.build(
          [void Function(StructWithJsonNameBuilder) updates]) =
      _$StructWithJsonName;

  const StructWithJsonName._();

  static const List<_i2.SmithySerializer<StructWithJsonName>> serializers = [
    StructWithJsonNameAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructWithJsonNameBuilder b) {}
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StructWithJsonName')
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class StructWithJsonNameAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<StructWithJsonName> {
  const StructWithJsonNameAwsJson11Serializer() : super('StructWithJsonName');

  @override
  Iterable<Type> get types => const [
        StructWithJsonName,
        _$StructWithJsonName,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StructWithJsonName deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructWithJsonNameBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Value':
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
    StructWithJsonName object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StructWithJsonName(:value) = object;
    if (value != null) {
      result$
        ..add('Value')
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
