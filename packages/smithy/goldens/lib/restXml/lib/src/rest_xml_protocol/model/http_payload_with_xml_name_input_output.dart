// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.http_payload_with_xml_name_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_name.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_xml_name_input_output.g.dart';

abstract class HttpPayloadWithXmlNameInputOutput
    with
        _i1.HttpInput<_i2.PayloadWithXmlName>,
        _i3.AWSEquatable<HttpPayloadWithXmlNameInputOutput>
    implements
        Built<HttpPayloadWithXmlNameInputOutput,
            HttpPayloadWithXmlNameInputOutputBuilder>,
        _i1.HasPayload<_i2.PayloadWithXmlName> {
  factory HttpPayloadWithXmlNameInputOutput({_i2.PayloadWithXmlName? nested}) {
    return _$HttpPayloadWithXmlNameInputOutput._(nested: nested);
  }

  factory HttpPayloadWithXmlNameInputOutput.build(
          [void Function(HttpPayloadWithXmlNameInputOutputBuilder) updates]) =
      _$HttpPayloadWithXmlNameInputOutput;

  const HttpPayloadWithXmlNameInputOutput._();

  factory HttpPayloadWithXmlNameInputOutput.fromRequest(
    _i2.PayloadWithXmlName? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPayloadWithXmlNameInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  /// Constructs a [HttpPayloadWithXmlNameInputOutput] from a [payload] and [response].
  factory HttpPayloadWithXmlNameInputOutput.fromResponse(
    _i2.PayloadWithXmlName? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      HttpPayloadWithXmlNameInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpPayloadWithXmlNameInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPayloadWithXmlNameInputOutputBuilder b) {}
  _i2.PayloadWithXmlName? get nested;
  @override
  _i2.PayloadWithXmlName? getPayload() => nested ?? _i2.PayloadWithXmlName();
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPayloadWithXmlNameInputOutput');
    helper.add(
      'nested',
      nested,
    );
    return helper.toString();
  }
}

class HttpPayloadWithXmlNameInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.PayloadWithXmlName> {
  const HttpPayloadWithXmlNameInputOutputRestXmlSerializer()
      : super('HttpPayloadWithXmlNameInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadWithXmlNameInputOutput,
        _$HttpPayloadWithXmlNameInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.PayloadWithXmlName deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.PayloadWithXmlNameBuilder();
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
    final payload = object is HttpPayloadWithXmlNameInputOutput
        ? object.getPayload()
        : (object as _i2.PayloadWithXmlName?);
    final result = <Object?>[const _i1.XmlElementName('Hello')];
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
