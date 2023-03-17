// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.malformed_range_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_range_input.g.dart';

abstract class MalformedRangeInput
    with
        _i1.HttpInput<MalformedRangeInput>,
        _i2.AWSEquatable<MalformedRangeInput>
    implements Built<MalformedRangeInput, MalformedRangeInputBuilder> {
  factory MalformedRangeInput({
    int? byte,
    double? float,
    int? integer,
    _i3.Int64? long,
    int? maxByte,
    double? maxFloat,
    int? maxInteger,
    _i3.Int64? maxLong,
    int? maxShort,
    int? minByte,
    double? minFloat,
    int? minInteger,
    _i3.Int64? minLong,
    int? minShort,
    int? short,
  }) {
    return _$MalformedRangeInput._(
      byte: byte,
      float: float,
      integer: integer,
      long: long,
      maxByte: maxByte,
      maxFloat: maxFloat,
      maxInteger: maxInteger,
      maxLong: maxLong,
      maxShort: maxShort,
      minByte: minByte,
      minFloat: minFloat,
      minInteger: minInteger,
      minLong: minLong,
      minShort: minShort,
      short: short,
    );
  }

  factory MalformedRangeInput.build(
          [void Function(MalformedRangeInputBuilder) updates]) =
      _$MalformedRangeInput;

  const MalformedRangeInput._();

  factory MalformedRangeInput.fromRequest(
    MalformedRangeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    MalformedRangeInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRangeInputBuilder b) {}
  int? get byte;
  double? get float;
  int? get integer;
  _i3.Int64? get long;
  int? get maxByte;
  double? get maxFloat;
  int? get maxInteger;
  _i3.Int64? get maxLong;
  int? get maxShort;
  int? get minByte;
  double? get minFloat;
  int? get minInteger;
  _i3.Int64? get minLong;
  int? get minShort;
  int? get short;
  @override
  MalformedRangeInput getPayload() => this;
  @override
  List<Object?> get props => [
        byte,
        float,
        integer,
        long,
        maxByte,
        maxFloat,
        maxInteger,
        maxLong,
        maxShort,
        minByte,
        minFloat,
        minInteger,
        minLong,
        minShort,
        short,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRangeInput');
    helper.add(
      'byte',
      byte,
    );
    helper.add(
      'float',
      float,
    );
    helper.add(
      'integer',
      integer,
    );
    helper.add(
      'long',
      long,
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
      'maxInteger',
      maxInteger,
    );
    helper.add(
      'maxLong',
      maxLong,
    );
    helper.add(
      'maxShort',
      maxShort,
    );
    helper.add(
      'minByte',
      minByte,
    );
    helper.add(
      'minFloat',
      minFloat,
    );
    helper.add(
      'minInteger',
      minInteger,
    );
    helper.add(
      'minLong',
      minLong,
    );
    helper.add(
      'minShort',
      minShort,
    );
    helper.add(
      'short',
      short,
    );
    return helper.toString();
  }
}

class MalformedRangeInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRangeInput> {
  const MalformedRangeInputRestJson1Serializer() : super('MalformedRangeInput');

  @override
  Iterable<Type> get types => const [
        MalformedRangeInput,
        _$MalformedRangeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedRangeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedRangeInputBuilder();
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
        case 'integer':
          if (value != null) {
            result.integer = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'long':
          if (value != null) {
            result.long = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Int64),
            ) as _i3.Int64);
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
        case 'maxInteger':
          if (value != null) {
            result.maxInteger = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'maxLong':
          if (value != null) {
            result.maxLong = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Int64),
            ) as _i3.Int64);
          }
          break;
        case 'maxShort':
          if (value != null) {
            result.maxShort = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
        case 'minInteger':
          if (value != null) {
            result.minInteger = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'minLong':
          if (value != null) {
            result.minLong = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Int64),
            ) as _i3.Int64);
          }
          break;
        case 'minShort':
          if (value != null) {
            result.minShort = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'short':
          if (value != null) {
            result.short = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as MalformedRangeInput);
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
    if (payload.integer != null) {
      result
        ..add('integer')
        ..add(serializers.serialize(
          payload.integer!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.long != null) {
      result
        ..add('long')
        ..add(serializers.serialize(
          payload.long!,
          specifiedType: const FullType(_i3.Int64),
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
    if (payload.maxInteger != null) {
      result
        ..add('maxInteger')
        ..add(serializers.serialize(
          payload.maxInteger!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.maxLong != null) {
      result
        ..add('maxLong')
        ..add(serializers.serialize(
          payload.maxLong!,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    if (payload.maxShort != null) {
      result
        ..add('maxShort')
        ..add(serializers.serialize(
          payload.maxShort!,
          specifiedType: const FullType(int),
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
    if (payload.minInteger != null) {
      result
        ..add('minInteger')
        ..add(serializers.serialize(
          payload.minInteger!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.minLong != null) {
      result
        ..add('minLong')
        ..add(serializers.serialize(
          payload.minLong!,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    if (payload.minShort != null) {
      result
        ..add('minShort')
        ..add(serializers.serialize(
          payload.minShort!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.short != null) {
      result
        ..add('short')
        ..add(serializers.serialize(
          payload.short!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
