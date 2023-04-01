// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v1.query_protocol.model.simple_scalar_xml_properties_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

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

  static const List<_i3.SmithySerializer> serializers = [
    SimpleScalarXmlPropertiesOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarXmlPropertiesOutputBuilder b) {}
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
        newBuiltValueToStringHelper('SimpleScalarXmlPropertiesOutput');
    helper.add(
      'stringValue',
      stringValue,
    );
    helper.add(
      'emptyStringValue',
      emptyStringValue,
    );
    helper.add(
      'trueBooleanValue',
      trueBooleanValue,
    );
    helper.add(
      'falseBooleanValue',
      falseBooleanValue,
    );
    helper.add(
      'byteValue',
      byteValue,
    );
    helper.add(
      'shortValue',
      shortValue,
    );
    helper.add(
      'integerValue',
      integerValue,
    );
    helper.add(
      'longValue',
      longValue,
    );
    helper.add(
      'floatValue',
      floatValue,
    );
    helper.add(
      'doubleValue',
      doubleValue,
    );
    return helper.toString();
  }
}

class SimpleScalarXmlPropertiesOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<SimpleScalarXmlPropertiesOutput> {
  const SimpleScalarXmlPropertiesOutputAwsQuerySerializer()
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
          shape: 'awsQuery',
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'stringValue':
          if (value != null) {
            result.stringValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'emptyStringValue':
          if (value != null) {
            result.emptyStringValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'trueBooleanValue':
          if (value != null) {
            result.trueBooleanValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'falseBooleanValue':
          if (value != null) {
            result.falseBooleanValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'byteValue':
          if (value != null) {
            result.byteValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'shortValue':
          if (value != null) {
            result.shortValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'integerValue':
          if (value != null) {
            result.integerValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'longValue':
          if (value != null) {
            result.longValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'floatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'DoubleDribble':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(
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
    final payload = (object as SimpleScalarXmlPropertiesOutput);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SimpleScalarXmlPropertiesOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.stringValue != null) {
      result
        ..add(const _i3.XmlElementName('stringValue'))
        ..add(serializers.serialize(
          payload.stringValue!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.emptyStringValue != null) {
      result
        ..add(const _i3.XmlElementName('emptyStringValue'))
        ..add(serializers.serialize(
          payload.emptyStringValue!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.trueBooleanValue != null) {
      result
        ..add(const _i3.XmlElementName('trueBooleanValue'))
        ..add(serializers.serialize(
          payload.trueBooleanValue!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.falseBooleanValue != null) {
      result
        ..add(const _i3.XmlElementName('falseBooleanValue'))
        ..add(serializers.serialize(
          payload.falseBooleanValue!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.byteValue != null) {
      result
        ..add(const _i3.XmlElementName('byteValue'))
        ..add(serializers.serialize(
          payload.byteValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.shortValue != null) {
      result
        ..add(const _i3.XmlElementName('shortValue'))
        ..add(serializers.serialize(
          payload.shortValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.integerValue != null) {
      result
        ..add(const _i3.XmlElementName('integerValue'))
        ..add(serializers.serialize(
          payload.integerValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.longValue != null) {
      result
        ..add(const _i3.XmlElementName('longValue'))
        ..add(serializers.serialize(
          payload.longValue!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (payload.floatValue != null) {
      result
        ..add(const _i3.XmlElementName('floatValue'))
        ..add(serializers.serialize(
          payload.floatValue!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.doubleValue != null) {
      result
        ..add(const _i3.XmlElementName('DoubleDribble'))
        ..add(serializers.serialize(
          payload.doubleValue!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    return result;
  }
}
