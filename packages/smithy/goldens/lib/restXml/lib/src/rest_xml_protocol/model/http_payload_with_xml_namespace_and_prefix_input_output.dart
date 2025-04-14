// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_xml_v1.rest_xml_protocol.model.http_payload_with_xml_namespace_and_prefix_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_xml_namespace_and_prefix_input_output.g.dart';

abstract class HttpPayloadWithXmlNamespaceAndPrefixInputOutput
    with
        _i1.HttpInput<PayloadWithXmlNamespaceAndPrefix>,
        _i2.AWSEquatable<HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
    implements
        Built<
          HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
          HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder
        >,
        _i1.HasPayload<PayloadWithXmlNamespaceAndPrefix> {
  factory HttpPayloadWithXmlNamespaceAndPrefixInputOutput({
    PayloadWithXmlNamespaceAndPrefix? nested,
  }) {
    return _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput._(nested: nested);
  }

  factory HttpPayloadWithXmlNamespaceAndPrefixInputOutput.build([
    void Function(HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder)
    updates,
  ]) = _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput;

  const HttpPayloadWithXmlNamespaceAndPrefixInputOutput._();

  factory HttpPayloadWithXmlNamespaceAndPrefixInputOutput.fromRequest(
    PayloadWithXmlNamespaceAndPrefix? payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => HttpPayloadWithXmlNamespaceAndPrefixInputOutput.build((b) {
    if (payload != null) {
      b.nested.replace(payload);
    }
  });

  /// Constructs a [HttpPayloadWithXmlNamespaceAndPrefixInputOutput] from a [payload] and [response].
  factory HttpPayloadWithXmlNamespaceAndPrefixInputOutput.fromResponse(
    PayloadWithXmlNamespaceAndPrefix? payload,
    _i2.AWSBaseHttpResponse response,
  ) => HttpPayloadWithXmlNamespaceAndPrefixInputOutput.build((b) {
    if (payload != null) {
      b.nested.replace(payload);
    }
  });

  static const List<_i1.SmithySerializer<PayloadWithXmlNamespaceAndPrefix?>>
  serializers = [
    HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer(),
  ];

  PayloadWithXmlNamespaceAndPrefix? get nested;
  @override
  PayloadWithXmlNamespaceAndPrefix? getPayload() =>
      nested ?? PayloadWithXmlNamespaceAndPrefix();

  @override
  List<Object?> get props => [nested];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
      'HttpPayloadWithXmlNamespaceAndPrefixInputOutput',
    )..add('nested', nested);
    return helper.toString();
  }
}

class HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<PayloadWithXmlNamespaceAndPrefix> {
  const HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer()
    : super('HttpPayloadWithXmlNamespaceAndPrefixInputOutput');

  @override
  Iterable<Type> get types => const [
    HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
    _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  PayloadWithXmlNamespaceAndPrefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayloadWithXmlNamespaceAndPrefixBuilder();
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
          result.name =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PayloadWithXmlNamespaceAndPrefix object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PayloadWithXmlNamespaceAndPrefix',
        _i1.XmlNamespace('http://foo.com', 'baz'),
      ),
    ];
    final PayloadWithXmlNamespaceAndPrefix(:name) = object;
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('name'))
        ..add(
          serializers.serialize(name, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
