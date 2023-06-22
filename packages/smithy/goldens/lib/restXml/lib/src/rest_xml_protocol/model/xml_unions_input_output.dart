// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.rest_xml_protocol.model.xml_unions_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_union_shape.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'xml_unions_input_output.g.dart';

abstract class XmlUnionsInputOutput
    with
        _i1.HttpInput<XmlUnionsInputOutput>,
        _i2.AWSEquatable<XmlUnionsInputOutput>
    implements Built<XmlUnionsInputOutput, XmlUnionsInputOutputBuilder> {
  factory XmlUnionsInputOutput({_i3.XmlUnionShape? unionValue}) {
    return _$XmlUnionsInputOutput._(unionValue: unionValue);
  }

  factory XmlUnionsInputOutput.build(
          [void Function(XmlUnionsInputOutputBuilder) updates]) =
      _$XmlUnionsInputOutput;

  const XmlUnionsInputOutput._();

  factory XmlUnionsInputOutput.fromRequest(
    XmlUnionsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlUnionsInputOutput] from a [payload] and [response].
  factory XmlUnionsInputOutput.fromResponse(
    XmlUnionsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<XmlUnionsInputOutput>> serializers = [
    XmlUnionsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlUnionsInputOutputBuilder b) {}
  _i3.XmlUnionShape? get unionValue;
  @override
  XmlUnionsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [unionValue];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlUnionsInputOutput')
      ..add(
        'unionValue',
        unionValue,
      );
    return helper.toString();
  }
}

class XmlUnionsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlUnionsInputOutput> {
  const XmlUnionsInputOutputRestXmlSerializer() : super('XmlUnionsInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlUnionsInputOutput,
        _$XmlUnionsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlUnionsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlUnionsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'unionValue':
          result.unionValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.XmlUnionShape),
          ) as _i3.XmlUnionShape);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlUnionsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[const _i1.XmlElementName('XmlUnionsInputOutput')];
    final XmlUnionsInputOutput(:unionValue) = object;
    if (unionValue != null) {
      result$
        ..add(const _i1.XmlElementName('unionValue'))
        ..add(serializers.serialize(
          unionValue,
          specifiedType: const FullType(_i3.XmlUnionShape),
        ));
    }
    return result$;
  }
}
