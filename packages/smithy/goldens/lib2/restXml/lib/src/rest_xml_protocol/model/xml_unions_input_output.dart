// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.model.xml_unions_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_union_shape.dart'
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
          XmlUnionsInputOutput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  /// Constructs a [XmlUnionsInputOutput] from a [payload] and [response].
  factory XmlUnionsInputOutput.fromResponse(
          XmlUnionsInputOutput payload, _i2.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
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
    final helper = newBuiltValueToStringHelper('XmlUnionsInputOutput');
    helper.add('unionValue', unionValue);
    return helper.toString();
  }
}

class XmlUnionsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlUnionsInputOutput> {
  const XmlUnionsInputOutputRestXmlSerializer() : super('XmlUnionsInputOutput');

  @override
  Iterable<Type> get types =>
      const [XmlUnionsInputOutput, _$XmlUnionsInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  XmlUnionsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = XmlUnionsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'unionValue':
          if (value != null) {
            result.unionValue = (serializers.deserialize(value,
                    specifiedType: const FullType(_i3.XmlUnionShape))
                as _i3.XmlUnionShape);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as XmlUnionsInputOutput);
    final result = <Object?>[const _i1.XmlElementName('XmlUnionsInputOutput')];
    if (payload.unionValue != null) {
      result
        ..add(const _i1.XmlElementName('unionValue'))
        ..add(serializers.serialize(payload.unionValue!,
            specifiedType: const FullType(_i3.XmlUnionShape)));
    }
    return result;
  }
}
