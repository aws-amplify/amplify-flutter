// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.rest_xml_protocol.model.http_payload_with_member_xml_name_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_name.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_member_xml_name_input_output.g.dart';

abstract class HttpPayloadWithMemberXmlNameInputOutput
    with
        _i1.HttpInput<PayloadWithXmlName>,
        _i2.AWSEquatable<HttpPayloadWithMemberXmlNameInputOutput>
    implements
        Built<HttpPayloadWithMemberXmlNameInputOutput,
            HttpPayloadWithMemberXmlNameInputOutputBuilder>,
        _i1.HasPayload<PayloadWithXmlName> {
  factory HttpPayloadWithMemberXmlNameInputOutput(
      {PayloadWithXmlName? nested}) {
    return _$HttpPayloadWithMemberXmlNameInputOutput._(nested: nested);
  }

  factory HttpPayloadWithMemberXmlNameInputOutput.build(
      [void Function(HttpPayloadWithMemberXmlNameInputOutputBuilder)
          updates]) = _$HttpPayloadWithMemberXmlNameInputOutput;

  const HttpPayloadWithMemberXmlNameInputOutput._();

  factory HttpPayloadWithMemberXmlNameInputOutput.fromRequest(
    PayloadWithXmlName? payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPayloadWithMemberXmlNameInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  /// Constructs a [HttpPayloadWithMemberXmlNameInputOutput] from a [payload] and [response].
  factory HttpPayloadWithMemberXmlNameInputOutput.fromResponse(
    PayloadWithXmlName? payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      HttpPayloadWithMemberXmlNameInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  static const List<_i1.SmithySerializer<PayloadWithXmlName?>> serializers = [
    HttpPayloadWithMemberXmlNameInputOutputRestXmlSerializer()
  ];

  PayloadWithXmlName? get nested;
  @override
  PayloadWithXmlName? getPayload() => nested ?? PayloadWithXmlName();

  @override
  List<Object?> get props => [nested];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPayloadWithMemberXmlNameInputOutput')
          ..add(
            'nested',
            nested,
          );
    return helper.toString();
  }
}

class HttpPayloadWithMemberXmlNameInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<PayloadWithXmlName> {
  const HttpPayloadWithMemberXmlNameInputOutputRestXmlSerializer()
      : super('HttpPayloadWithMemberXmlNameInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadWithMemberXmlNameInputOutput,
        _$HttpPayloadWithMemberXmlNameInputOutput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  PayloadWithXmlName deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayloadWithXmlNameBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
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
    PayloadWithXmlName object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[const _i1.XmlElementName('Hola')];
    final PayloadWithXmlName(:name) = object;
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
