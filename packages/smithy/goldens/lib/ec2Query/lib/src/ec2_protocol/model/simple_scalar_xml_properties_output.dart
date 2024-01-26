// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v1.ec2_protocol.model.simple_scalar_xml_properties_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'simple_scalar_xml_properties_output.g.dart';

abstract class SimpleScalarXmlPropertiesOutput
    with
        _i1.AWSEquatable<SimpleScalarXmlPropertiesOutput>
    implements
        Built<SimpleScalarXmlPropertiesOutput,
            SimpleScalarXmlPropertiesOutputBuilder> {
  factory SimpleScalarXmlPropertiesOutput({
    String? stringValue,
    String? emptyStringValue,
    bool? trueBooleanValue,
    bool? falseBooleanValue,
    int? byteValue,
    int? shortValue,
    int? integerValue,
    _i2.Int64? longValue,
    double? floatValue,
    double? doubleValue,
  }) {
    return _$SimpleScalarXmlPropertiesOutput._(
      stringValue: stringValue,
      emptyStringValue: emptyStringValue,
      trueBooleanValue: trueBooleanValue,
      falseBooleanValue: falseBooleanValue,
      byteValue: byteValue,
      shortValue: shortValue,
      integerValue: integerValue,
      longValue: longValue,
      floatValue: floatValue,
      doubleValue: doubleValue,
    );
  }

  factory SimpleScalarXmlPropertiesOutput.build(
          [void Function(SimpleScalarXmlPropertiesOutputBuilder) updates]) =
      _$SimpleScalarXmlPropertiesOutput;

  const SimpleScalarXmlPropertiesOutput._();

  /// Constructs a [SimpleScalarXmlPropertiesOutput] from a [payload] and [response].
  factory SimpleScalarXmlPropertiesOutput.fromResponse(
    SimpleScalarXmlPropertiesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<SimpleScalarXmlPropertiesOutput>>
      serializers = [SimpleScalarXmlPropertiesOutputEc2QuerySerializer()];

  String? get stringValue;
  String? get emptyStringValue;
  bool? get trueBooleanValue;
  bool? get falseBooleanValue;
  int? get byteValue;
  int? get shortValue;
  int? get integerValue;
  _i2.Int64? get longValue;
  double? get floatValue;
  double? get doubleValue;
  @override
  List<Object?> get props => [
        stringValue,
        emptyStringValue,
        trueBooleanValue,
        falseBooleanValue,
        byteValue,
        shortValue,
        integerValue,
        longValue,
        floatValue,
        doubleValue,
      ];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarXmlPropertiesOutput')
          ..add(
            'stringValue',
            stringValue,
          )
          ..add(
            'emptyStringValue',
            emptyStringValue,
          )
          ..add(
            'trueBooleanValue',
            trueBooleanValue,
          )
          ..add(
            'falseBooleanValue',
            falseBooleanValue,
          )
          ..add(
            'byteValue',
            byteValue,
          )
          ..add(
            'shortValue',
            shortValue,
          )
          ..add(
            'integerValue',
            integerValue,
          )
          ..add(
            'longValue',
            longValue,
          )
          ..add(
            'floatValue',
            floatValue,
          )
          ..add(
            'doubleValue',
            doubleValue,
          );
    return helper.toString();
  }
}

class SimpleScalarXmlPropertiesOutputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SimpleScalarXmlPropertiesOutput> {
  const SimpleScalarXmlPropertiesOutputEc2QuerySerializer()
      : super('SimpleScalarXmlPropertiesOutput');

  @override
  Iterable<Type> get types => const [
        SimpleScalarXmlPropertiesOutput,
        _$SimpleScalarXmlPropertiesOutput,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  SimpleScalarXmlPropertiesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarXmlPropertiesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'stringValue':
          result.stringValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'emptyStringValue':
          result.emptyStringValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trueBooleanValue':
          result.trueBooleanValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'falseBooleanValue':
          result.falseBooleanValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'byteValue':
          result.byteValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'shortValue':
          result.shortValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'integerValue':
          result.integerValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'longValue':
          result.longValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'floatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'DoubleDribble':
          result.doubleValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleScalarXmlPropertiesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SimpleScalarXmlPropertiesOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final SimpleScalarXmlPropertiesOutput(
      :stringValue,
      :emptyStringValue,
      :trueBooleanValue,
      :falseBooleanValue,
      :byteValue,
      :shortValue,
      :integerValue,
      :longValue,
      :floatValue,
      :doubleValue
    ) = object;
    if (stringValue != null) {
      result$
        ..add(const _i3.XmlElementName('IgnoreMe'))
        ..add(serializers.serialize(
          stringValue,
          specifiedType: const FullType(String),
        ));
    }
    if (emptyStringValue != null) {
      result$
        ..add(const _i3.XmlElementName('EmptyStringValue'))
        ..add(serializers.serialize(
          emptyStringValue,
          specifiedType: const FullType(String),
        ));
    }
    if (trueBooleanValue != null) {
      result$
        ..add(const _i3.XmlElementName('TrueBooleanValue'))
        ..add(serializers.serialize(
          trueBooleanValue,
          specifiedType: const FullType(bool),
        ));
    }
    if (falseBooleanValue != null) {
      result$
        ..add(const _i3.XmlElementName('FalseBooleanValue'))
        ..add(serializers.serialize(
          falseBooleanValue,
          specifiedType: const FullType(bool),
        ));
    }
    if (byteValue != null) {
      result$
        ..add(const _i3.XmlElementName('ByteValue'))
        ..add(serializers.serialize(
          byteValue,
          specifiedType: const FullType(int),
        ));
    }
    if (shortValue != null) {
      result$
        ..add(const _i3.XmlElementName('ShortValue'))
        ..add(serializers.serialize(
          shortValue,
          specifiedType: const FullType(int),
        ));
    }
    if (integerValue != null) {
      result$
        ..add(const _i3.XmlElementName('IntegerValue'))
        ..add(serializers.serialize(
          integerValue,
          specifiedType: const FullType(int),
        ));
    }
    if (longValue != null) {
      result$
        ..add(const _i3.XmlElementName('LongValue'))
        ..add(serializers.serialize(
          longValue,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (floatValue != null) {
      result$
        ..add(const _i3.XmlElementName('FloatValue'))
        ..add(serializers.serialize(
          floatValue,
          specifiedType: const FullType(double),
        ));
    }
    if (doubleValue != null) {
      result$
        ..add(const _i3.XmlElementName('DoubleDribble'))
        ..add(serializers.serialize(
          doubleValue,
          specifiedType: const FullType(double),
        ));
    }
    return result$;
  }
}
