// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v2.query_protocol.model.ignores_wrapping_xml_name_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ignores_wrapping_xml_name_output.g.dart';

abstract class IgnoresWrappingXmlNameOutput
    with
        _i1.AWSEquatable<IgnoresWrappingXmlNameOutput>
    implements
        Built<IgnoresWrappingXmlNameOutput,
            IgnoresWrappingXmlNameOutputBuilder> {
  factory IgnoresWrappingXmlNameOutput({String? foo}) {
    return _$IgnoresWrappingXmlNameOutput._(foo: foo);
  }

  factory IgnoresWrappingXmlNameOutput.build(
          [void Function(IgnoresWrappingXmlNameOutputBuilder) updates]) =
      _$IgnoresWrappingXmlNameOutput;

  const IgnoresWrappingXmlNameOutput._();

  /// Constructs a [IgnoresWrappingXmlNameOutput] from a [payload] and [response].
  factory IgnoresWrappingXmlNameOutput.fromResponse(
    IgnoresWrappingXmlNameOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<IgnoresWrappingXmlNameOutput>>
      serializers = [IgnoresWrappingXmlNameOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IgnoresWrappingXmlNameOutputBuilder b) {}
  String? get foo;
  @override
  List<Object?> get props => [foo];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IgnoresWrappingXmlNameOutput')
      ..add(
        'foo',
        foo,
      );
    return helper.toString();
  }
}

class IgnoresWrappingXmlNameOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<IgnoresWrappingXmlNameOutput> {
  const IgnoresWrappingXmlNameOutputAwsQuerySerializer()
      : super('IgnoresWrappingXmlNameOutput');

  @override
  Iterable<Type> get types => const [
        IgnoresWrappingXmlNameOutput,
        _$IgnoresWrappingXmlNameOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  IgnoresWrappingXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IgnoresWrappingXmlNameOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
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
    IgnoresWrappingXmlNameOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IgnoreMeResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final IgnoresWrappingXmlNameOutput(:foo) = object;
    if (foo != null) {
      result$
        ..add(const _i2.XmlElementName('foo'))
        ..add(serializers.serialize(
          foo,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
