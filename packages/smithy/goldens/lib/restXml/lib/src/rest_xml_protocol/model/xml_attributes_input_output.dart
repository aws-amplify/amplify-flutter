// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.xml_attributes_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:xml/xml.dart' as _i3;

part 'xml_attributes_input_output.g.dart';

abstract class XmlAttributesInputOutput
    with
        _i1.HttpInput<XmlAttributesInputOutput>,
        _i2.AWSEquatable<XmlAttributesInputOutput>
    implements
        Built<XmlAttributesInputOutput, XmlAttributesInputOutputBuilder> {
  factory XmlAttributesInputOutput({
    String? attr,
    String? foo,
  }) {
    return _$XmlAttributesInputOutput._(
      attr: attr,
      foo: foo,
    );
  }

  factory XmlAttributesInputOutput.build(
          [void Function(XmlAttributesInputOutputBuilder) updates]) =
      _$XmlAttributesInputOutput;

  const XmlAttributesInputOutput._();

  factory XmlAttributesInputOutput.fromRequest(
    XmlAttributesInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlAttributesInputOutput] from a [payload] and [response].
  factory XmlAttributesInputOutput.fromResponse(
    XmlAttributesInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    XmlAttributesInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlAttributesInputOutputBuilder b) {}
  String? get attr;
  String? get foo;
  @override
  XmlAttributesInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        attr,
        foo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlAttributesInputOutput');
    helper.add(
      'attr',
      attr,
    );
    helper.add(
      'foo',
      foo,
    );
    return helper.toString();
  }
}

class XmlAttributesInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlAttributesInputOutput> {
  const XmlAttributesInputOutputRestXmlSerializer()
      : super('XmlAttributesInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlAttributesInputOutput,
        _$XmlAttributesInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlAttributesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAttributesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'test':
          if (value != null) {
            result.attr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as XmlAttributesInputOutput);
    final result = <Object?>[
      const _i1.XmlElementName('XmlAttributesInputOutput')
    ];
    if (payload.attr != null) {
      result.add(_i3.XmlAttribute(
        _i3.XmlName('test'),
        (serializers.serialize(
          payload.attr!,
          specifiedType: const FullType(String),
        ) as String),
      ));
    }
    if (payload.foo != null) {
      result
        ..add(const _i1.XmlElementName('foo'))
        ..add(serializers.serialize(
          payload.foo!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
