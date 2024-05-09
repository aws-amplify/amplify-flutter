// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.rest_xml_protocol.model.xml_attributes_on_payload_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_input_output.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:xml/xml.dart' as _i3;

part 'xml_attributes_on_payload_input_output.g.dart';

abstract class XmlAttributesOnPayloadInputOutput
    with
        _i1.HttpInput<XmlAttributesInputOutput>,
        _i2.AWSEquatable<XmlAttributesOnPayloadInputOutput>
    implements
        Built<XmlAttributesOnPayloadInputOutput,
            XmlAttributesOnPayloadInputOutputBuilder>,
        _i1.HasPayload<XmlAttributesInputOutput> {
  factory XmlAttributesOnPayloadInputOutput(
      {XmlAttributesInputOutput? payload}) {
    return _$XmlAttributesOnPayloadInputOutput._(payload: payload);
  }

  factory XmlAttributesOnPayloadInputOutput.build(
          [void Function(XmlAttributesOnPayloadInputOutputBuilder) updates]) =
      _$XmlAttributesOnPayloadInputOutput;

  const XmlAttributesOnPayloadInputOutput._();

  factory XmlAttributesOnPayloadInputOutput.fromRequest(
    XmlAttributesInputOutput? payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      XmlAttributesOnPayloadInputOutput.build((b) {
        if (payload != null) {
          b.payload.replace(payload);
        }
      });

  /// Constructs a [XmlAttributesOnPayloadInputOutput] from a [payload] and [response].
  factory XmlAttributesOnPayloadInputOutput.fromResponse(
    XmlAttributesInputOutput? payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      XmlAttributesOnPayloadInputOutput.build((b) {
        if (payload != null) {
          b.payload.replace(payload);
        }
      });

  static const List<_i1.SmithySerializer<XmlAttributesInputOutput?>>
      serializers = [XmlAttributesOnPayloadInputOutputRestXmlSerializer()];

  XmlAttributesInputOutput? get payload;
  @override
  XmlAttributesInputOutput? getPayload() =>
      payload ?? XmlAttributesInputOutput();

  @override
  List<Object?> get props => [payload];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('XmlAttributesOnPayloadInputOutput')
          ..add(
            'payload',
            payload,
          );
    return helper.toString();
  }
}

class XmlAttributesOnPayloadInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlAttributesInputOutput> {
  const XmlAttributesOnPayloadInputOutputRestXmlSerializer()
      : super('XmlAttributesOnPayloadInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlAttributesOnPayloadInputOutput,
        _$XmlAttributesOnPayloadInputOutput,
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
        case 'test':
          result.attr = (serializers.deserialize(
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
    XmlAttributesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('XmlAttributesInputOutput')
    ];
    final XmlAttributesInputOutput(:foo, :attr) = object;
    if (attr != null) {
      result$.add(_i3.XmlAttribute(
        _i3.XmlName('test'),
        (serializers.serialize(
          attr,
          specifiedType: const FullType(String),
        ) as String),
      ));
    }
    if (foo != null) {
      result$
        ..add(const _i1.XmlElementName('foo'))
        ..add(serializers.serialize(
          foo,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
