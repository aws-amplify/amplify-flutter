// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas,unnecessary_library_name

library rest_json1_v2.rest_json_protocol.model.complex_nested_error_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'complex_nested_error_data.g.dart';

abstract class ComplexNestedErrorData
    with _i1.AWSEquatable<ComplexNestedErrorData>
    implements Built<ComplexNestedErrorData, ComplexNestedErrorDataBuilder> {
  factory ComplexNestedErrorData({String? foo}) {
    return _$ComplexNestedErrorData._(foo: foo);
  }

  factory ComplexNestedErrorData.build(
          [void Function(ComplexNestedErrorDataBuilder) updates]) =
      _$ComplexNestedErrorData;

  const ComplexNestedErrorData._();

  static const List<_i2.SmithySerializer<ComplexNestedErrorData>> serializers =
      [ComplexNestedErrorDataRestJson1Serializer()];

  String? get foo;
  @override
  List<Object?> get props => [foo];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplexNestedErrorData')
      ..add(
        'foo',
        foo,
      );
    return helper.toString();
  }
}

class ComplexNestedErrorDataRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ComplexNestedErrorData> {
  const ComplexNestedErrorDataRestJson1Serializer()
      : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types => const [
        ComplexNestedErrorData,
        _$ComplexNestedErrorData,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  ComplexNestedErrorData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexNestedErrorDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Fooooo':
          result.foo = (serializers.deserialize(
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
    ComplexNestedErrorData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ComplexNestedErrorData(:foo) = object;
    if (foo != null) {
      result$
        ..add('Fooooo')
        ..add(serializers.serialize(
          foo,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
