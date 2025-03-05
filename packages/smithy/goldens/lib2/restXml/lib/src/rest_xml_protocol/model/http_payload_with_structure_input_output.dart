// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.rest_xml_protocol.model.http_payload_with_structure_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/nested_payload.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_structure_input_output.g.dart';

abstract class HttpPayloadWithStructureInputOutput
    with
        _i1.HttpInput<NestedPayload>,
        _i2.AWSEquatable<HttpPayloadWithStructureInputOutput>
    implements
        Built<HttpPayloadWithStructureInputOutput,
            HttpPayloadWithStructureInputOutputBuilder>,
        _i1.HasPayload<NestedPayload> {
  factory HttpPayloadWithStructureInputOutput({NestedPayload? nested}) {
    return _$HttpPayloadWithStructureInputOutput._(nested: nested);
  }

  factory HttpPayloadWithStructureInputOutput.build(
          [void Function(HttpPayloadWithStructureInputOutputBuilder) updates]) =
      _$HttpPayloadWithStructureInputOutput;

  const HttpPayloadWithStructureInputOutput._();

  factory HttpPayloadWithStructureInputOutput.fromRequest(
    NestedPayload? payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPayloadWithStructureInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  /// Constructs a [HttpPayloadWithStructureInputOutput] from a [payload] and [response].
  factory HttpPayloadWithStructureInputOutput.fromResponse(
    NestedPayload? payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      HttpPayloadWithStructureInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  static const List<_i1.SmithySerializer<NestedPayload?>> serializers = [
    HttpPayloadWithStructureInputOutputRestXmlSerializer()
  ];

  NestedPayload? get nested;
  @override
  NestedPayload? getPayload() => nested ?? NestedPayload();

  @override
  List<Object?> get props => [nested];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPayloadWithStructureInputOutput')
          ..add(
            'nested',
            nested,
          );
    return helper.toString();
  }
}

class HttpPayloadWithStructureInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<NestedPayload> {
  const HttpPayloadWithStructureInputOutputRestXmlSerializer()
      : super('HttpPayloadWithStructureInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadWithStructureInputOutput,
        _$HttpPayloadWithStructureInputOutput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  NestedPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'greeting':
          result.greeting = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    NestedPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[const _i1.XmlElementName('NestedPayload')];
    final NestedPayload(:greeting, :name) = object;
    if (greeting != null) {
      result$
        ..add(const _i1.XmlElementName('greeting'))
        ..add(serializers.serialize(
          greeting,
          specifiedType: const FullType(String),
        ));
    }
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
