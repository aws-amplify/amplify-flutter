// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.http_payload_with_xml_namespace_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_xml_namespace_input_output.g.dart';

abstract class HttpPayloadWithXmlNamespaceInputOutput
    with
        _i1.HttpInput<_i2.PayloadWithXmlNamespace>,
        _i3.AWSEquatable<HttpPayloadWithXmlNamespaceInputOutput>
    implements
        Built<HttpPayloadWithXmlNamespaceInputOutput,
            HttpPayloadWithXmlNamespaceInputOutputBuilder>,
        _i1.HasPayload<_i2.PayloadWithXmlNamespace> {
  factory HttpPayloadWithXmlNamespaceInputOutput(
      {_i2.PayloadWithXmlNamespace? nested}) {
    return _$HttpPayloadWithXmlNamespaceInputOutput._(nested: nested);
  }

  factory HttpPayloadWithXmlNamespaceInputOutput.build(
      [void Function(HttpPayloadWithXmlNamespaceInputOutputBuilder)
          updates]) = _$HttpPayloadWithXmlNamespaceInputOutput;

  const HttpPayloadWithXmlNamespaceInputOutput._();

  factory HttpPayloadWithXmlNamespaceInputOutput.fromRequest(
    _i2.PayloadWithXmlNamespace? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPayloadWithXmlNamespaceInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  /// Constructs a [HttpPayloadWithXmlNamespaceInputOutput] from a [payload] and [response].
  factory HttpPayloadWithXmlNamespaceInputOutput.fromResponse(
    _i2.PayloadWithXmlNamespace? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      HttpPayloadWithXmlNamespaceInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpPayloadWithXmlNamespaceInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPayloadWithXmlNamespaceInputOutputBuilder b) {}
  _i2.PayloadWithXmlNamespace? get nested;
  @override
  _i2.PayloadWithXmlNamespace? getPayload() =>
      nested ?? _i2.PayloadWithXmlNamespace();
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPayloadWithXmlNamespaceInputOutput');
    helper.add(
      'nested',
      nested,
    );
    return helper.toString();
  }
}

class HttpPayloadWithXmlNamespaceInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.PayloadWithXmlNamespace> {
  const HttpPayloadWithXmlNamespaceInputOutputRestXmlSerializer()
      : super('HttpPayloadWithXmlNamespaceInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadWithXmlNamespaceInputOutput,
        _$HttpPayloadWithXmlNamespaceInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.PayloadWithXmlNamespace deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.PayloadWithXmlNamespaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
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
    final payload = object is HttpPayloadWithXmlNamespaceInputOutput
        ? object.getPayload()
        : (object as _i2.PayloadWithXmlNamespace?);
    final result = <Object?>[
      const _i1.XmlElementName(
        'PayloadWithXmlNamespace',
        _i1.XmlNamespace('http://foo.com'),
      )
    ];
    if (payload == null) {
      return result;
    }
    if (payload.name != null) {
      result
        ..add(const _i1.XmlElementName('name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
