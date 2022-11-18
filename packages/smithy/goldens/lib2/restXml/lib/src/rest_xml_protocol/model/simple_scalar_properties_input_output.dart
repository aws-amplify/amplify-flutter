// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.model.simple_scalar_properties_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'simple_scalar_properties_input_output.g.dart';

abstract class SimpleScalarPropertiesInputOutput
    with
        _i1.HttpInput<SimpleScalarPropertiesInputOutputPayload>,
        _i2.AWSEquatable<SimpleScalarPropertiesInputOutput>
    implements
        Built<SimpleScalarPropertiesInputOutput,
            SimpleScalarPropertiesInputOutputBuilder>,
        _i1.HasPayload<SimpleScalarPropertiesInputOutputPayload> {
  factory SimpleScalarPropertiesInputOutput({
    int? byteValue,
    double? doubleValue,
    bool? falseBooleanValue,
    double? floatValue,
    String? foo,
    int? integerValue,
    _i3.Int64? longValue,
    int? shortValue,
    String? stringValue,
    bool? trueBooleanValue,
  }) {
    return _$SimpleScalarPropertiesInputOutput._(
      byteValue: byteValue,
      doubleValue: doubleValue,
      falseBooleanValue: falseBooleanValue,
      floatValue: floatValue,
      foo: foo,
      integerValue: integerValue,
      longValue: longValue,
      shortValue: shortValue,
      stringValue: stringValue,
      trueBooleanValue: trueBooleanValue,
    );
  }

  factory SimpleScalarPropertiesInputOutput.build(
          [void Function(SimpleScalarPropertiesInputOutputBuilder) updates]) =
      _$SimpleScalarPropertiesInputOutput;

  const SimpleScalarPropertiesInputOutput._();

  factory SimpleScalarPropertiesInputOutput.fromRequest(
    SimpleScalarPropertiesInputOutputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      SimpleScalarPropertiesInputOutput.build((b) {
        b.byteValue = payload.byteValue;
        b.doubleValue = payload.doubleValue;
        b.falseBooleanValue = payload.falseBooleanValue;
        b.floatValue = payload.floatValue;
        b.integerValue = payload.integerValue;
        b.longValue = payload.longValue;
        b.shortValue = payload.shortValue;
        b.stringValue = payload.stringValue;
        b.trueBooleanValue = payload.trueBooleanValue;
        if (request.headers['X-Foo'] != null) {
          b.foo = request.headers['X-Foo']!;
        }
      });

  /// Constructs a [SimpleScalarPropertiesInputOutput] from a [payload] and [response].
  factory SimpleScalarPropertiesInputOutput.fromResponse(
    SimpleScalarPropertiesInputOutputPayload payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      SimpleScalarPropertiesInputOutput.build((b) {
        b.byteValue = payload.byteValue;
        b.doubleValue = payload.doubleValue;
        b.falseBooleanValue = payload.falseBooleanValue;
        b.floatValue = payload.floatValue;
        b.integerValue = payload.integerValue;
        b.longValue = payload.longValue;
        b.shortValue = payload.shortValue;
        b.stringValue = payload.stringValue;
        b.trueBooleanValue = payload.trueBooleanValue;
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    SimpleScalarPropertiesInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputOutputBuilder b) {}
  int? get byteValue;
  double? get doubleValue;
  bool? get falseBooleanValue;
  double? get floatValue;
  String? get foo;
  int? get integerValue;
  _i3.Int64? get longValue;
  int? get shortValue;
  String? get stringValue;
  bool? get trueBooleanValue;
  @override
  SimpleScalarPropertiesInputOutputPayload getPayload() =>
      SimpleScalarPropertiesInputOutputPayload((b) {
        b.byteValue = byteValue;
        b.doubleValue = doubleValue;
        b.falseBooleanValue = falseBooleanValue;
        b.floatValue = floatValue;
        b.integerValue = integerValue;
        b.longValue = longValue;
        b.shortValue = shortValue;
        b.stringValue = stringValue;
        b.trueBooleanValue = trueBooleanValue;
      });
  @override
  List<Object?> get props => [
        byteValue,
        doubleValue,
        falseBooleanValue,
        floatValue,
        foo,
        integerValue,
        longValue,
        shortValue,
        stringValue,
        trueBooleanValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarPropertiesInputOutput');
    helper.add(
      'byteValue',
      byteValue,
    );
    helper.add(
      'doubleValue',
      doubleValue,
    );
    helper.add(
      'falseBooleanValue',
      falseBooleanValue,
    );
    helper.add(
      'floatValue',
      floatValue,
    );
    helper.add(
      'foo',
      foo,
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
      'shortValue',
      shortValue,
    );
    helper.add(
      'stringValue',
      stringValue,
    );
    helper.add(
      'trueBooleanValue',
      trueBooleanValue,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class SimpleScalarPropertiesInputOutputPayload
    with
        _i2.AWSEquatable<SimpleScalarPropertiesInputOutputPayload>
    implements
        Built<SimpleScalarPropertiesInputOutputPayload,
            SimpleScalarPropertiesInputOutputPayloadBuilder> {
  factory SimpleScalarPropertiesInputOutputPayload(
      [void Function(SimpleScalarPropertiesInputOutputPayloadBuilder)
          updates]) = _$SimpleScalarPropertiesInputOutputPayload;

  const SimpleScalarPropertiesInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputOutputPayloadBuilder b) {}
  int? get byteValue;
  double? get doubleValue;
  bool? get falseBooleanValue;
  double? get floatValue;
  int? get integerValue;
  _i3.Int64? get longValue;
  int? get shortValue;
  String? get stringValue;
  bool? get trueBooleanValue;
  @override
  List<Object?> get props => [
        byteValue,
        doubleValue,
        falseBooleanValue,
        floatValue,
        integerValue,
        longValue,
        shortValue,
        stringValue,
        trueBooleanValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarPropertiesInputOutputPayload');
    helper.add(
      'byteValue',
      byteValue,
    );
    helper.add(
      'doubleValue',
      doubleValue,
    );
    helper.add(
      'falseBooleanValue',
      falseBooleanValue,
    );
    helper.add(
      'floatValue',
      floatValue,
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
      'shortValue',
      shortValue,
    );
    helper.add(
      'stringValue',
      stringValue,
    );
    helper.add(
      'trueBooleanValue',
      trueBooleanValue,
    );
    return helper.toString();
  }
}

class SimpleScalarPropertiesInputOutputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<SimpleScalarPropertiesInputOutputPayload> {
  const SimpleScalarPropertiesInputOutputRestXmlSerializer()
      : super('SimpleScalarPropertiesInputOutput');

  @override
  Iterable<Type> get types => const [
        SimpleScalarPropertiesInputOutput,
        _$SimpleScalarPropertiesInputOutput,
        SimpleScalarPropertiesInputOutputPayload,
        _$SimpleScalarPropertiesInputOutputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  SimpleScalarPropertiesInputOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarPropertiesInputOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'byteValue':
          if (value != null) {
            result.byteValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
        case 'falseBooleanValue':
          if (value != null) {
            result.falseBooleanValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
              specifiedType: const FullType(_i3.Int64),
            ) as _i3.Int64);
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
        case 'stringValue':
          if (value != null) {
            result.stringValue = (serializers.deserialize(
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
    final payload = object is SimpleScalarPropertiesInputOutput
        ? object.getPayload()
        : (object as SimpleScalarPropertiesInputOutputPayload);
    final result = <Object?>[
      const _i1.XmlElementName('SimpleScalarPropertiesInputOutput')
    ];
    if (payload.byteValue != null) {
      result
        ..add(const _i1.XmlElementName('byteValue'))
        ..add(serializers.serialize(
          payload.byteValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.doubleValue != null) {
      result
        ..add(const _i1.XmlElementName('DoubleDribble'))
        ..add(serializers.serialize(
          payload.doubleValue!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.falseBooleanValue != null) {
      result
        ..add(const _i1.XmlElementName('falseBooleanValue'))
        ..add(serializers.serialize(
          payload.falseBooleanValue!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.floatValue != null) {
      result
        ..add(const _i1.XmlElementName('floatValue'))
        ..add(serializers.serialize(
          payload.floatValue!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.integerValue != null) {
      result
        ..add(const _i1.XmlElementName('integerValue'))
        ..add(serializers.serialize(
          payload.integerValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.longValue != null) {
      result
        ..add(const _i1.XmlElementName('longValue'))
        ..add(serializers.serialize(
          payload.longValue!,
          specifiedType: const FullType.nullable(_i3.Int64),
        ));
    }
    if (payload.shortValue != null) {
      result
        ..add(const _i1.XmlElementName('shortValue'))
        ..add(serializers.serialize(
          payload.shortValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.stringValue != null) {
      result
        ..add(const _i1.XmlElementName('stringValue'))
        ..add(serializers.serialize(
          payload.stringValue!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.trueBooleanValue != null) {
      result
        ..add(const _i1.XmlElementName('trueBooleanValue'))
        ..add(serializers.serialize(
          payload.trueBooleanValue!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
