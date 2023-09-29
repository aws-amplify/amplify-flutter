// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v1.ec2_protocol.model.simple_input_params_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/foo_enum.dart';
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
    FooEnum? fooEnum,
    String? hasQueryName,
    String? hasQueryAndXmlName,
    String? usesXmlName,
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
      hasQueryName: hasQueryName,
      hasQueryAndXmlName: hasQueryAndXmlName,
      usesXmlName: usesXmlName,
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

  static const List<_i1.SmithySerializer<SimpleInputParamsInput>> serializers =
      [SimpleInputParamsInputEc2QuerySerializer()];

  String? get foo;
  String? get bar;
  bool? get baz;
  int? get bam;
  double? get floatValue;
  double? get boo;
  _i3.Uint8List? get qux;
  FooEnum? get fooEnum;
  String? get hasQueryName;
  String? get hasQueryAndXmlName;
  String? get usesXmlName;
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
        hasQueryName,
        hasQueryAndXmlName,
        usesXmlName,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimpleInputParamsInput')
      ..add(
        'foo',
        foo,
      )
      ..add(
        'bar',
        bar,
      )
      ..add(
        'baz',
        baz,
      )
      ..add(
        'bam',
        bam,
      )
      ..add(
        'floatValue',
        floatValue,
      )
      ..add(
        'boo',
        boo,
      )
      ..add(
        'qux',
        qux,
      )
      ..add(
        'fooEnum',
        fooEnum,
      )
      ..add(
        'hasQueryName',
        hasQueryName,
      )
      ..add(
        'hasQueryAndXmlName',
        hasQueryAndXmlName,
      )
      ..add(
        'usesXmlName',
        usesXmlName,
      );
    return helper.toString();
  }
}

class SimpleInputParamsInputEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<SimpleInputParamsInput> {
  const SimpleInputParamsInputEc2QuerySerializer()
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
          shape: 'ec2Query',
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Bar':
          result.bar = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Baz':
          result.baz = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Bam':
          result.bam = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'FloatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Boo':
          result.boo = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Qux':
          result.qux = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Uint8List),
          ) as _i3.Uint8List);
        case 'FooEnum':
          result.fooEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(FooEnum),
          ) as FooEnum);
        case 'HasQueryName':
          result.hasQueryName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IgnoreMe':
          result.hasQueryAndXmlName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'c':
          result.usesXmlName = (serializers.deserialize(
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
    SimpleInputParamsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SimpleInputParamsInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    final SimpleInputParamsInput(
      :foo,
      :bar,
      :baz,
      :bam,
      :floatValue,
      :boo,
      :qux,
      :fooEnum,
      :hasQueryName,
      :hasQueryAndXmlName,
      :usesXmlName
    ) = object;
    if (foo != null) {
      result$
        ..add(const _i1.XmlElementName('Foo'))
        ..add(serializers.serialize(
          foo,
          specifiedType: const FullType(String),
        ));
    }
    if (bar != null) {
      result$
        ..add(const _i1.XmlElementName('Bar'))
        ..add(serializers.serialize(
          bar,
          specifiedType: const FullType(String),
        ));
    }
    if (baz != null) {
      result$
        ..add(const _i1.XmlElementName('Baz'))
        ..add(serializers.serialize(
          baz,
          specifiedType: const FullType(bool),
        ));
    }
    if (bam != null) {
      result$
        ..add(const _i1.XmlElementName('Bam'))
        ..add(serializers.serialize(
          bam,
          specifiedType: const FullType(int),
        ));
    }
    if (floatValue != null) {
      result$
        ..add(const _i1.XmlElementName('FloatValue'))
        ..add(serializers.serialize(
          floatValue,
          specifiedType: const FullType(double),
        ));
    }
    if (boo != null) {
      result$
        ..add(const _i1.XmlElementName('Boo'))
        ..add(serializers.serialize(
          boo,
          specifiedType: const FullType(double),
        ));
    }
    if (qux != null) {
      result$
        ..add(const _i1.XmlElementName('Qux'))
        ..add(serializers.serialize(
          qux,
          specifiedType: const FullType(_i3.Uint8List),
        ));
    }
    if (fooEnum != null) {
      result$
        ..add(const _i1.XmlElementName('FooEnum'))
        ..add(serializers.serialize(
          fooEnum,
          specifiedType: const FullType(FooEnum),
        ));
    }
    if (hasQueryName != null) {
      result$
        ..add(const _i1.XmlElementName('A'))
        ..add(serializers.serialize(
          hasQueryName,
          specifiedType: const FullType(String),
        ));
    }
    if (hasQueryAndXmlName != null) {
      result$
        ..add(const _i1.XmlElementName('B'))
        ..add(serializers.serialize(
          hasQueryAndXmlName,
          specifiedType: const FullType(String),
        ));
    }
    if (usesXmlName != null) {
      result$
        ..add(const _i1.XmlElementName('C'))
        ..add(serializers.serialize(
          usesXmlName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
