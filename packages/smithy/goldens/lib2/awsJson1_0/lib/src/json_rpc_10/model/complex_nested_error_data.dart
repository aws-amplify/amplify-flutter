// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_0_v2.json_rpc_10.model.complex_nested_error_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

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

  static const List<_i2.SmithySerializer> serializers = [
    ComplexNestedErrorDataAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexNestedErrorDataBuilder b) {}
  String? get foo;
  @override
  List<Object?> get props => [foo];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplexNestedErrorData');
    helper.add(
      'foo',
      foo,
    );
    return helper.toString();
  }
}

class ComplexNestedErrorDataAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ComplexNestedErrorData> {
  const ComplexNestedErrorDataAwsJson10Serializer()
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
          shape: 'awsJson1_0',
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
      switch (key) {
        case 'Foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
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
    final payload = (object as ComplexNestedErrorData);
    final result = <Object?>[];
    if (payload.foo != null) {
      result
        ..add('Foo')
        ..add(serializers.serialize(
          payload.foo!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
