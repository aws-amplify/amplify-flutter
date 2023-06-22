// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_validation_protocol.model.malformed_range_override_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
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
    int? minByte,
    int? maxByte,
    int? short,
    int? minShort,
    int? maxShort,
    int? integer,
    int? minInteger,
    int? maxInteger,
    _i3.Int64? long,
    _i3.Int64? minLong,
    _i3.Int64? maxLong,
    double? float,
    double? minFloat,
    double? maxFloat,
  }) {
    return _$MalformedRangeOverrideInput._(
      byte: byte,
      minByte: minByte,
      maxByte: maxByte,
      short: short,
      minShort: minShort,
      maxShort: maxShort,
      integer: integer,
      minInteger: minInteger,
      maxInteger: maxInteger,
      long: long,
      minLong: minLong,
      maxLong: maxLong,
      float: float,
      minFloat: minFloat,
      maxFloat: maxFloat,
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

  static const List<_i1.SmithySerializer<MalformedRangeOverrideInput>>
      serializers = [MalformedRangeOverrideInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRangeOverrideInputBuilder b) {}
  int? get byte;
  int? get minByte;
  int? get maxByte;
  int? get short;
  int? get minShort;
  int? get maxShort;
  int? get integer;
  int? get minInteger;
  int? get maxInteger;
  _i3.Int64? get long;
  _i3.Int64? get minLong;
  _i3.Int64? get maxLong;
  double? get float;
  double? get minFloat;
  double? get maxFloat;
  @override
  MalformedRangeOverrideInput getPayload() => this;
  @override
  List<Object?> get props => [
        byte,
        minByte,
        maxByte,
        short,
        minShort,
        maxShort,
        integer,
        minInteger,
        maxInteger,
        long,
        minLong,
        maxLong,
        float,
        minFloat,
        maxFloat,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRangeOverrideInput')
      ..add(
        'byte',
        byte,
      )
      ..add(
        'minByte',
        minByte,
      )
      ..add(
        'maxByte',
        maxByte,
      )
      ..add(
        'short',
        short,
      )
      ..add(
        'minShort',
        minShort,
      )
      ..add(
        'maxShort',
        maxShort,
      )
      ..add(
        'integer',
        integer,
      )
      ..add(
        'minInteger',
        minInteger,
      )
      ..add(
        'maxInteger',
        maxInteger,
      )
      ..add(
        'long',
        long,
      )
      ..add(
        'minLong',
        minLong,
      )
      ..add(
        'maxLong',
        maxLong,
      )
      ..add(
        'float',
        float,
      )
      ..add(
        'minFloat',
        minFloat,
      )
      ..add(
        'maxFloat',
        maxFloat,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'byte':
          result.byte = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'float':
          result.float = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'integer':
          result.integer = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'long':
          result.long = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'maxByte':
          result.maxByte = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'maxFloat':
          result.maxFloat = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'maxInteger':
          result.maxInteger = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'maxLong':
          result.maxLong = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'maxShort':
          result.maxShort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'minByte':
          result.minByte = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'minFloat':
          result.minFloat = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'minInteger':
          result.minInteger = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'minLong':
          result.minLong = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'minShort':
          result.minShort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'short':
          result.short = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedRangeOverrideInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedRangeOverrideInput(
      :byte,
      :float,
      :integer,
      :long,
      :maxByte,
      :maxFloat,
      :maxInteger,
      :maxLong,
      :maxShort,
      :minByte,
      :minFloat,
      :minInteger,
      :minLong,
      :minShort,
      :short
    ) = object;
    if (byte != null) {
      result$
        ..add('byte')
        ..add(serializers.serialize(
          byte,
          specifiedType: const FullType(int),
        ));
    }
    if (float != null) {
      result$
        ..add('float')
        ..add(serializers.serialize(
          float,
          specifiedType: const FullType(double),
        ));
    }
    if (integer != null) {
      result$
        ..add('integer')
        ..add(serializers.serialize(
          integer,
          specifiedType: const FullType(int),
        ));
    }
    if (long != null) {
      result$
        ..add('long')
        ..add(serializers.serialize(
          long,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    if (maxByte != null) {
      result$
        ..add('maxByte')
        ..add(serializers.serialize(
          maxByte,
          specifiedType: const FullType(int),
        ));
    }
    if (maxFloat != null) {
      result$
        ..add('maxFloat')
        ..add(serializers.serialize(
          maxFloat,
          specifiedType: const FullType(double),
        ));
    }
    if (maxInteger != null) {
      result$
        ..add('maxInteger')
        ..add(serializers.serialize(
          maxInteger,
          specifiedType: const FullType(int),
        ));
    }
    if (maxLong != null) {
      result$
        ..add('maxLong')
        ..add(serializers.serialize(
          maxLong,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    if (maxShort != null) {
      result$
        ..add('maxShort')
        ..add(serializers.serialize(
          maxShort,
          specifiedType: const FullType(int),
        ));
    }
    if (minByte != null) {
      result$
        ..add('minByte')
        ..add(serializers.serialize(
          minByte,
          specifiedType: const FullType(int),
        ));
    }
    if (minFloat != null) {
      result$
        ..add('minFloat')
        ..add(serializers.serialize(
          minFloat,
          specifiedType: const FullType(double),
        ));
    }
    if (minInteger != null) {
      result$
        ..add('minInteger')
        ..add(serializers.serialize(
          minInteger,
          specifiedType: const FullType(int),
        ));
    }
    if (minLong != null) {
      result$
        ..add('minLong')
        ..add(serializers.serialize(
          minLong,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    if (minShort != null) {
      result$
        ..add('minShort')
        ..add(serializers.serialize(
          minShort,
          specifiedType: const FullType(int),
        ));
    }
    if (short != null) {
      result$
        ..add('short')
        ..add(serializers.serialize(
          short,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
