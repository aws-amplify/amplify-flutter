// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v2.query_protocol.model.simple_input_params_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_query_v2/src/query_protocol/model/foo_enum.dart' as _i4;
import 'package:aws_query_v2/src/query_protocol/model/integer_enum.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'simple_input_params_input.g.dart';

abstract class SimpleInputParamsInput
    with
        _i1.HttpInput<SimpleInputParamsInput>,
        _i2.AWSEquatable<SimpleInputParamsInput>
    implements Built<SimpleInputParamsInput, SimpleInputParamsInputBuilder> {
  factory SimpleInputParamsInput({
    String? foo,
    String? bar,
    bool? baz,
    int? bam,
    double? floatValue,
    double? boo,
    _i3.Uint8List? qux,
    _i4.FooEnum? fooEnum,
    _i5.IntegerEnum? integerEnum,
  }) {
    return _$SimpleInputParamsInput._(
      foo: foo,
      bar: bar,
      baz: baz,
      bam: bam,
      floatValue: floatValue,
      boo: boo,
      qux: qux,
      fooEnum: fooEnum,
      integerEnum: integerEnum,
    );
  }

  factory SimpleInputParamsInput.build(
          [void Function(SimpleInputParamsInputBuilder) updates]) =
      _$SimpleInputParamsInput;

  const SimpleInputParamsInput._();

  factory SimpleInputParamsInput.fromRequest(
    SimpleInputParamsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    SimpleInputParamsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleInputParamsInputBuilder b) {}
  String? get foo;
  String? get bar;
  bool? get baz;
  int? get bam;
  double? get floatValue;
  double? get boo;
  _i3.Uint8List? get qux;
  _i4.FooEnum? get fooEnum;
  _i5.IntegerEnum? get integerEnum;
  @override
  SimpleInputParamsInput getPayload() => this;
  @override
  List<Object?> get props => [
        foo,
        bar,
        baz,
        bam,
        floatValue,
        boo,
        qux,
        fooEnum,
        integerEnum,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimpleInputParamsInput');
    helper.add(
      'foo',
      foo,
    );
    helper.add(
      'bar',
      bar,
    );
    helper.add(
      'baz',
      baz,
    );
    helper.add(
      'bam',
      bam,
    );
    helper.add(
      'floatValue',
      floatValue,
    );
    helper.add(
      'boo',
      boo,
    );
    helper.add(
      'qux',
      qux,
    );
    helper.add(
      'fooEnum',
      fooEnum,
    );
    helper.add(
      'integerEnum',
      integerEnum,
    );
    return helper.toString();
  }
}

class SimpleInputParamsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<SimpleInputParamsInput> {
  const SimpleInputParamsInputAwsQuerySerializer()
      : super('SimpleInputParamsInput');

  @override
  Iterable<Type> get types => const [
        SimpleInputParamsInput,
        _$SimpleInputParamsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SimpleInputParamsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleInputParamsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Bar':
          if (value != null) {
            result.bar = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Baz':
          if (value != null) {
            result.baz = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Bam':
          if (value != null) {
            result.bam = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'FloatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'Boo':
          if (value != null) {
            result.boo = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'Qux':
          if (value != null) {
            result.qux = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Uint8List),
            ) as _i3.Uint8List);
          }
          break;
        case 'FooEnum':
          if (value != null) {
            result.fooEnum = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.FooEnum),
            ) as _i4.FooEnum);
          }
          break;
        case 'IntegerEnum':
          if (value != null) {
            result.integerEnum = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.IntegerEnum),
            ) as _i5.IntegerEnum);
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
    final payload = (object as SimpleInputParamsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'SimpleInputParamsInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.foo != null) {
      result
        ..add(const _i1.XmlElementName('Foo'))
        ..add(serializers.serialize(
          payload.foo!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.bar != null) {
      result
        ..add(const _i1.XmlElementName('Bar'))
        ..add(serializers.serialize(
          payload.bar!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.baz != null) {
      result
        ..add(const _i1.XmlElementName('Baz'))
        ..add(serializers.serialize(
          payload.baz!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.bam != null) {
      result
        ..add(const _i1.XmlElementName('Bam'))
        ..add(serializers.serialize(
          payload.bam!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.floatValue != null) {
      result
        ..add(const _i1.XmlElementName('FloatValue'))
        ..add(serializers.serialize(
          payload.floatValue!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.boo != null) {
      result
        ..add(const _i1.XmlElementName('Boo'))
        ..add(serializers.serialize(
          payload.boo!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.qux != null) {
      result
        ..add(const _i1.XmlElementName('Qux'))
        ..add(serializers.serialize(
          payload.qux!,
          specifiedType: const FullType.nullable(_i3.Uint8List),
        ));
    }
    if (payload.fooEnum != null) {
      result
        ..add(const _i1.XmlElementName('FooEnum'))
        ..add(serializers.serialize(
          payload.fooEnum!,
          specifiedType: const FullType.nullable(_i4.FooEnum),
        ));
    }
    if (payload.integerEnum != null) {
      result
        ..add(const _i1.XmlElementName('IntegerEnum'))
        ..add(serializers.serialize(
          payload.integerEnum!,
          specifiedType: const FullType.nullable(_i5.IntegerEnum),
        ));
    }
    return result;
  }
}
