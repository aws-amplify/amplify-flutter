// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.http_payload_with_structure_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/nested_payload.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_structure_input_output.g.dart';

abstract class HttpPayloadWithStructureInputOutput
    with
        _i1.HttpInput<_i2.NestedPayload>,
        _i3.AWSEquatable<HttpPayloadWithStructureInputOutput>
    implements
        Built<HttpPayloadWithStructureInputOutput,
            HttpPayloadWithStructureInputOutputBuilder>,
        _i1.HasPayload<_i2.NestedPayload> {
  factory HttpPayloadWithStructureInputOutput({_i2.NestedPayload? nested}) {
    return _$HttpPayloadWithStructureInputOutput._(nested: nested);
  }

  factory HttpPayloadWithStructureInputOutput.build(
          [void Function(HttpPayloadWithStructureInputOutputBuilder) updates]) =
      _$HttpPayloadWithStructureInputOutput;

  const HttpPayloadWithStructureInputOutput._();

  factory HttpPayloadWithStructureInputOutput.fromRequest(
    _i2.NestedPayload? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPayloadWithStructureInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  /// Constructs a [HttpPayloadWithStructureInputOutput] from a [payload] and [response].
  factory HttpPayloadWithStructureInputOutput.fromResponse(
    _i2.NestedPayload? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      HttpPayloadWithStructureInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpPayloadWithStructureInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPayloadWithStructureInputOutputBuilder b) {}
  _i2.NestedPayload? get nested;
  @override
  _i2.NestedPayload? getPayload() => nested ?? _i2.NestedPayload();
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPayloadWithStructureInputOutput');
    helper.add(
      'nested',
      nested,
    );
    return helper.toString();
  }
}

class HttpPayloadWithStructureInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.NestedPayload> {
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
  _i2.NestedPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.NestedPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
    final payload = object is HttpPayloadWithStructureInputOutput
        ? object.getPayload()
        : (object as _i2.NestedPayload?);
    final result = <Object?>[const _i1.XmlElementName('NestedPayload')];
    if (payload == null) {
      return result;
    }
    if (payload.greeting != null) {
      result
        ..add(const _i1.XmlElementName('greeting'))
        ..add(serializers.serialize(
          payload.greeting!,
          specifiedType: const FullType(String),
        ));
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
