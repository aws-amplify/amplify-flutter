// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.rest_xml_protocol.model.body_with_xml_name_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_name.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'body_with_xml_name_input_output.g.dart';

abstract class BodyWithXmlNameInputOutput
    with
        _i1.HttpInput<BodyWithXmlNameInputOutput>,
        _i2.AWSEquatable<BodyWithXmlNameInputOutput>
    implements
        Built<BodyWithXmlNameInputOutput, BodyWithXmlNameInputOutputBuilder> {
  factory BodyWithXmlNameInputOutput({_i3.PayloadWithXmlName? nested}) {
    return _$BodyWithXmlNameInputOutput._(nested: nested);
  }

  factory BodyWithXmlNameInputOutput.build(
          [void Function(BodyWithXmlNameInputOutputBuilder) updates]) =
      _$BodyWithXmlNameInputOutput;

  const BodyWithXmlNameInputOutput._();

  factory BodyWithXmlNameInputOutput.fromRequest(
    BodyWithXmlNameInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [BodyWithXmlNameInputOutput] from a [payload] and [response].
  factory BodyWithXmlNameInputOutput.fromResponse(
    BodyWithXmlNameInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<BodyWithXmlNameInputOutput>>
      serializers = [BodyWithXmlNameInputOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BodyWithXmlNameInputOutputBuilder b) {}
  _i3.PayloadWithXmlName? get nested;
  @override
  BodyWithXmlNameInputOutput getPayload() => this;
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BodyWithXmlNameInputOutput')
      ..add(
        'nested',
        nested,
      );
    return helper.toString();
  }
}

class BodyWithXmlNameInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<BodyWithXmlNameInputOutput> {
  const BodyWithXmlNameInputOutputRestXmlSerializer()
      : super('BodyWithXmlNameInputOutput');

  @override
  Iterable<Type> get types => const [
        BodyWithXmlNameInputOutput,
        _$BodyWithXmlNameInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BodyWithXmlNameInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BodyWithXmlNameInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.PayloadWithXmlName),
          ) as _i3.PayloadWithXmlName));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BodyWithXmlNameInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[const _i1.XmlElementName('Ahoy')];
    final BodyWithXmlNameInputOutput(:nested) = object;
    if (nested != null) {
      result$
        ..add(const _i1.XmlElementName('nested'))
        ..add(serializers.serialize(
          nested,
          specifiedType: const FullType(_i3.PayloadWithXmlName),
        ));
    }
    return result$;
  }
}
