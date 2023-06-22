// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_with_namespace_v2.rest_xml_protocol_namespace.model.simple_scalar_properties_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i5;
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/nested_with_namespace.dart'
    as _i4;
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
    String? foo,
    String? stringValue,
    bool? trueBooleanValue,
    bool? falseBooleanValue,
    int? byteValue,
    int? shortValue,
    int? integerValue,
    _i3.Int64? longValue,
    double? floatValue,
    _i4.NestedWithNamespace? nested,
    double? doubleValue,
  }) {
    return _$SimpleScalarPropertiesInputOutput._(
      foo: foo,
      stringValue: stringValue,
      trueBooleanValue: trueBooleanValue,
      falseBooleanValue: falseBooleanValue,
      byteValue: byteValue,
      shortValue: shortValue,
      integerValue: integerValue,
      longValue: longValue,
      floatValue: floatValue,
      nested: nested,
      doubleValue: doubleValue,
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
        if (payload.nested != null) {
          b.nested.replace(payload.nested!);
        }
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
        if (payload.nested != null) {
          b.nested.replace(payload.nested!);
        }
        b.shortValue = payload.shortValue;
        b.stringValue = payload.stringValue;
        b.trueBooleanValue = payload.trueBooleanValue;
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
      });

  static const List<
          _i1.SmithySerializer<SimpleScalarPropertiesInputOutputPayload>>
      serializers = [SimpleScalarPropertiesInputOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputOutputBuilder b) {}
  String? get foo;
  String? get stringValue;
  bool? get trueBooleanValue;
  bool? get falseBooleanValue;
  int? get byteValue;
  int? get shortValue;
  int? get integerValue;
  _i3.Int64? get longValue;
  double? get floatValue;
  _i4.NestedWithNamespace? get nested;
  double? get doubleValue;
  @override
  SimpleScalarPropertiesInputOutputPayload getPayload() =>
      SimpleScalarPropertiesInputOutputPayload((b) {
        b.byteValue = byteValue;
        b.doubleValue = doubleValue;
        b.falseBooleanValue = falseBooleanValue;
        b.floatValue = floatValue;
        b.integerValue = integerValue;
        b.longValue = longValue;
        if (nested != null) {
          b.nested.replace(nested!);
        }
        b.shortValue = shortValue;
        b.stringValue = stringValue;
        b.trueBooleanValue = trueBooleanValue;
      });
  @override
  List<Object?> get props => [
        foo,
        stringValue,
        trueBooleanValue,
        falseBooleanValue,
        byteValue,
        shortValue,
        integerValue,
        longValue,
        floatValue,
        nested,
        doubleValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarPropertiesInputOutput')
          ..add(
            'foo',
            foo,
          )
          ..add(
            'stringValue',
            stringValue,
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
            'nested',
            nested,
          )
          ..add(
            'doubleValue',
            doubleValue,
          );
    return helper.toString();
  }
}

@_i5.internal
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
  _i4.NestedWithNamespace? get nested;
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
        nested,
        shortValue,
        stringValue,
        trueBooleanValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarPropertiesInputOutputPayload')
          ..add(
            'byteValue',
            byteValue,
          )
          ..add(
            'doubleValue',
            doubleValue,
          )
          ..add(
            'falseBooleanValue',
            falseBooleanValue,
          )
          ..add(
            'floatValue',
            floatValue,
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
            'nested',
            nested,
          )
          ..add(
            'shortValue',
            shortValue,
          )
          ..add(
            'stringValue',
            stringValue,
          )
          ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'byteValue':
          result.byteValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DoubleDribble':
          result.doubleValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'falseBooleanValue':
          result.falseBooleanValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'floatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'integerValue':
          result.integerValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'longValue':
          result.longValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'Nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.NestedWithNamespace),
          ) as _i4.NestedWithNamespace));
        case 'shortValue':
          result.shortValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'stringValue':
          result.stringValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trueBooleanValue':
          result.trueBooleanValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleScalarPropertiesInputOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SimpleScalarPropertiesInputOutput',
        _i1.XmlNamespace('https://example.com'),
      )
    ];
    final SimpleScalarPropertiesInputOutputPayload(
      :byteValue,
      :doubleValue,
      :falseBooleanValue,
      :floatValue,
      :integerValue,
      :longValue,
      :nested,
      :shortValue,
      :stringValue,
      :trueBooleanValue
    ) = object;
    if (byteValue != null) {
      result$
        ..add(const _i1.XmlElementName('byteValue'))
        ..add(serializers.serialize(
          byteValue,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (doubleValue != null) {
      result$
        ..add(const _i1.XmlElementName('DoubleDribble'))
        ..add(serializers.serialize(
          doubleValue,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (falseBooleanValue != null) {
      result$
        ..add(const _i1.XmlElementName('falseBooleanValue'))
        ..add(serializers.serialize(
          falseBooleanValue,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (floatValue != null) {
      result$
        ..add(const _i1.XmlElementName('floatValue'))
        ..add(serializers.serialize(
          floatValue,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (integerValue != null) {
      result$
        ..add(const _i1.XmlElementName('integerValue'))
        ..add(serializers.serialize(
          integerValue,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (longValue != null) {
      result$
        ..add(const _i1.XmlElementName('longValue'))
        ..add(serializers.serialize(
          longValue,
          specifiedType: const FullType.nullable(_i3.Int64),
        ));
    }
    if (nested != null) {
      result$
        ..add(const _i1.XmlElementName(
          'Nested',
          _i1.XmlNamespace(
            'https://example.com',
            'xsi',
          ),
        ))
        ..add(serializers.serialize(
          nested,
          specifiedType: const FullType(_i4.NestedWithNamespace),
        ));
    }
    if (shortValue != null) {
      result$
        ..add(const _i1.XmlElementName('shortValue'))
        ..add(serializers.serialize(
          shortValue,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (stringValue != null) {
      result$
        ..add(const _i1.XmlElementName('stringValue'))
        ..add(serializers.serialize(
          stringValue,
          specifiedType: const FullType(String),
        ));
    }
    if (trueBooleanValue != null) {
      result$
        ..add(const _i1.XmlElementName('trueBooleanValue'))
        ..add(serializers.serialize(
          trueBooleanValue,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
