// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.model.xml_blobs_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'xml_blobs_input_output.g.dart';

abstract class XmlBlobsInputOutput
    with
        _i1.HttpInput<XmlBlobsInputOutput>,
        _i2.AWSEquatable<XmlBlobsInputOutput>
    implements Built<XmlBlobsInputOutput, XmlBlobsInputOutputBuilder> {
  factory XmlBlobsInputOutput({_i3.Uint8List? data}) {
    return _$XmlBlobsInputOutput._(data: data);
  }

  factory XmlBlobsInputOutput.build(
          [void Function(XmlBlobsInputOutputBuilder) updates]) =
      _$XmlBlobsInputOutput;

  const XmlBlobsInputOutput._();

  factory XmlBlobsInputOutput.fromRequest(
    XmlBlobsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlBlobsInputOutput] from a [payload] and [response].
  factory XmlBlobsInputOutput.fromResponse(
    XmlBlobsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    XmlBlobsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlBlobsInputOutputBuilder b) {}
  _i3.Uint8List? get data;
  @override
  XmlBlobsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [data];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlBlobsInputOutput');
    helper.add(
      'data',
      data,
    );
    return helper.toString();
  }
}

class XmlBlobsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlBlobsInputOutput> {
  const XmlBlobsInputOutputRestXmlSerializer() : super('XmlBlobsInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlBlobsInputOutput,
        _$XmlBlobsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlBlobsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlBlobsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'data':
          if (value != null) {
            result.data = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Uint8List),
            ) as _i3.Uint8List);
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
    final payload = (object as XmlBlobsInputOutput);
    final result = <Object?>[const _i1.XmlElementName('XmlBlobsInputOutput')];
    if (payload.data != null) {
      result
        ..add(const _i1.XmlElementName('data'))
        ..add(serializers.serialize(
          payload.data!,
          specifiedType: const FullType.nullable(_i3.Uint8List),
        ));
    }
    return result;
  }
}
