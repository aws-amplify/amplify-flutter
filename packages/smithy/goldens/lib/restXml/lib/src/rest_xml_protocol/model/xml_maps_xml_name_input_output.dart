// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.xml_maps_xml_name_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/greeting_struct.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'xml_maps_xml_name_input_output.g.dart';

abstract class XmlMapsXmlNameInputOutput
    with
        _i1.HttpInput<XmlMapsXmlNameInputOutput>,
        _i2.AWSEquatable<XmlMapsXmlNameInputOutput>
    implements
        Built<XmlMapsXmlNameInputOutput, XmlMapsXmlNameInputOutputBuilder> {
  factory XmlMapsXmlNameInputOutput({Map<String, _i3.GreetingStruct>? myMap}) {
    return _$XmlMapsXmlNameInputOutput._(
        myMap: myMap == null ? null : _i4.BuiltMap(myMap));
  }

  factory XmlMapsXmlNameInputOutput.build(
          [void Function(XmlMapsXmlNameInputOutputBuilder) updates]) =
      _$XmlMapsXmlNameInputOutput;

  const XmlMapsXmlNameInputOutput._();

  factory XmlMapsXmlNameInputOutput.fromRequest(
    XmlMapsXmlNameInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlMapsXmlNameInputOutput] from a [payload] and [response].
  factory XmlMapsXmlNameInputOutput.fromResponse(
    XmlMapsXmlNameInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    XmlMapsXmlNameInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlMapsXmlNameInputOutputBuilder b) {}
  _i4.BuiltMap<String, _i3.GreetingStruct>? get myMap;
  @override
  XmlMapsXmlNameInputOutput getPayload() => this;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlMapsXmlNameInputOutput');
    helper.add(
      'myMap',
      myMap,
    );
    return helper.toString();
  }
}

class XmlMapsXmlNameInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlMapsXmlNameInputOutput> {
  const XmlMapsXmlNameInputOutputRestXmlSerializer()
      : super('XmlMapsXmlNameInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlMapsXmlNameInputOutput,
        _$XmlMapsXmlNameInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlMapsXmlNameInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlMapsXmlNameInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'myMap':
          if (value != null) {
            result.myMap.replace(const _i1.XmlBuiltMapSerializer(
              keyName: 'Attribute',
              valueName: 'Setting',
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.GreetingStruct),
                ],
              ),
            ));
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
    final payload = (object as XmlMapsXmlNameInputOutput);
    final result = <Object?>[
      const _i1.XmlElementName('XmlMapsXmlNameInputOutput')
    ];
    if (payload.myMap != null) {
      result
        ..add(const _i1.XmlElementName('myMap'))
        ..add(const _i1.XmlBuiltMapSerializer(
          keyName: 'Attribute',
          valueName: 'Setting',
        ).serialize(
          serializers,
          payload.myMap!,
          specifiedType: const FullType.nullable(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.GreetingStruct),
            ],
          ),
        ));
    }
    return result;
  }
}
