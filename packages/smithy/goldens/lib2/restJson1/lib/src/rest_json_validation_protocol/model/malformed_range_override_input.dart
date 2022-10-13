// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.malformed_range_override_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_range_override_input.g.dart';

abstract class MalformedRangeOverrideInput
    with
        _i1.HttpInput<MalformedRangeOverrideInput>,
        _i2.AWSEquatable<MalformedRangeOverrideInput>
    implements
        Built<MalformedRangeOverrideInput, MalformedRangeOverrideInputBuilder> {
  factory MalformedRangeOverrideInput({
    int? byte,
    double? float,
    int? maxByte,
    double? maxFloat,
    int? minByte,
    double? minFloat,
  }) {
    return _$MalformedRangeOverrideInput._(
      byte: byte,
      float: float,
      maxByte: maxByte,
      maxFloat: maxFloat,
      minByte: minByte,
      minFloat: minFloat,
    );
  }

  factory MalformedRangeOverrideInput.build(
          [void Function(MalformedRangeOverrideInputBuilder) updates]) =
      _$MalformedRangeOverrideInput;

  const MalformedRangeOverrideInput._();

  factory MalformedRangeOverrideInput.fromRequest(
    MalformedRangeOverrideInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    MalformedRangeOverrideInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRangeOverrideInputBuilder b) {}
  int? get byte;
  double? get float;
  int? get maxByte;
  double? get maxFloat;
  int? get minByte;
  double? get minFloat;
  @override
  MalformedRangeOverrideInput getPayload() => this;
  @override
  List<Object?> get props => [
        byte,
        float,
        maxByte,
        maxFloat,
        minByte,
        minFloat,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRangeOverrideInput');
    helper.add(
      'byte',
      byte,
    );
    helper.add(
      'float',
      float,
    );
    helper.add(
      'maxByte',
      maxByte,
    );
    helper.add(
      'maxFloat',
      maxFloat,
    );
    helper.add(
      'minByte',
      minByte,
    );
    helper.add(
      'minFloat',
      minFloat,
    );
    return helper.toString();
  }
}

class MalformedRangeOverrideInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRangeOverrideInput> {
  const MalformedRangeOverrideInputRestJson1Serializer()
      : super('MalformedRangeOverrideInput');

  @override
  Iterable<Type> get types => const [
        MalformedRangeOverrideInput,
        _$MalformedRangeOverrideInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedRangeOverrideInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedRangeOverrideInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'byte':
          if (value != null) {
            result.byte = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'float':
          if (value != null) {
            result.float = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'maxByte':
          if (value != null) {
            result.maxByte = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'maxFloat':
          if (value != null) {
            result.maxFloat = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'minByte':
          if (value != null) {
            result.minByte = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'minFloat':
          if (value != null) {
            result.minFloat = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
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
    final payload = (object as MalformedRangeOverrideInput);
    final result = <Object?>[];
    if (payload.byte != null) {
      result
        ..add('byte')
        ..add(serializers.serialize(
          payload.byte!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.float != null) {
      result
        ..add('float')
        ..add(serializers.serialize(
          payload.float!,
          specifiedType: const FullType(double),
        ));
    }
    if (payload.maxByte != null) {
      result
        ..add('maxByte')
        ..add(serializers.serialize(
          payload.maxByte!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.maxFloat != null) {
      result
        ..add('maxFloat')
        ..add(serializers.serialize(
          payload.maxFloat!,
          specifiedType: const FullType(double),
        ));
    }
    if (payload.minByte != null) {
      result
        ..add('minByte')
        ..add(serializers.serialize(
          payload.minByte!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.minFloat != null) {
      result
        ..add('minFloat')
        ..add(serializers.serialize(
          payload.minFloat!,
          specifiedType: const FullType(double),
        ));
    }
    return result;
  }
}
