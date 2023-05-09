// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.simple_scalar_properties_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    String? foo,
    String? stringValue,
    bool? trueBooleanValue,
    bool? falseBooleanValue,
    int? byteValue,
    int? shortValue,
    int? integerValue,
    _i3.Int64? longValue,
    double? floatValue,
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
    SimpleScalarPropertiesInputOutputRestJson1Serializer()
  ];

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
        doubleValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarPropertiesInputOutput');
    helper.add(
      'foo',
      foo,
    );
    helper.add(
      'stringValue',
      stringValue,
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

class SimpleScalarPropertiesInputOutputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<SimpleScalarPropertiesInputOutputPayload> {
  const SimpleScalarPropertiesInputOutputRestJson1Serializer()
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
          shape: 'restJson1',
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
    final result$ = <Object?>[];
    final SimpleScalarPropertiesInputOutputPayload(
      :byteValue,
      :doubleValue,
      :falseBooleanValue,
      :floatValue,
      :integerValue,
      :longValue,
      :shortValue,
      :stringValue,
      :trueBooleanValue
    ) = object;
    if (byteValue != null) {
      result$
        ..add('byteValue')
        ..add(serializers.serialize(
          byteValue,
          specifiedType: const FullType(int),
        ));
    }
    if (doubleValue != null) {
      result$
        ..add('DoubleDribble')
        ..add(serializers.serialize(
          doubleValue,
          specifiedType: const FullType(double),
        ));
    }
    if (falseBooleanValue != null) {
      result$
        ..add('falseBooleanValue')
        ..add(serializers.serialize(
          falseBooleanValue,
          specifiedType: const FullType(bool),
        ));
    }
    if (floatValue != null) {
      result$
        ..add('floatValue')
        ..add(serializers.serialize(
          floatValue,
          specifiedType: const FullType(double),
        ));
    }
    if (integerValue != null) {
      result$
        ..add('integerValue')
        ..add(serializers.serialize(
          integerValue,
          specifiedType: const FullType(int),
        ));
    }
    if (longValue != null) {
      result$
        ..add('longValue')
        ..add(serializers.serialize(
          longValue,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    if (shortValue != null) {
      result$
        ..add('shortValue')
        ..add(serializers.serialize(
          shortValue,
          specifiedType: const FullType(int),
        ));
    }
    if (stringValue != null) {
      result$
        ..add('stringValue')
        ..add(serializers.serialize(
          stringValue,
          specifiedType: const FullType(String),
        ));
    }
    if (trueBooleanValue != null) {
      result$
        ..add('trueBooleanValue')
        ..add(serializers.serialize(
          trueBooleanValue,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
