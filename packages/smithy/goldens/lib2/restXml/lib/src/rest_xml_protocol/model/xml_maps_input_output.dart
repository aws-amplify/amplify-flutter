// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.xml_maps_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/greeting_struct.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'xml_maps_input_output.g.dart';

abstract class XmlMapsInputOutput
    with _i1.HttpInput<XmlMapsInputOutput>, _i2.AWSEquatable<XmlMapsInputOutput>
    implements Built<XmlMapsInputOutput, XmlMapsInputOutputBuilder> {
  factory XmlMapsInputOutput({Map<String, _i3.GreetingStruct>? myMap}) {
    return _$XmlMapsInputOutput._(
        myMap: myMap == null ? null : _i4.BuiltMap(myMap));
  }

  factory XmlMapsInputOutput.build(
          [void Function(XmlMapsInputOutputBuilder) updates]) =
      _$XmlMapsInputOutput;

  const XmlMapsInputOutput._();

  factory XmlMapsInputOutput.fromRequest(
    XmlMapsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlMapsInputOutput] from a [payload] and [response].
  factory XmlMapsInputOutput.fromResponse(
    XmlMapsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<XmlMapsInputOutput>> serializers = [
    XmlMapsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlMapsInputOutputBuilder b) {}
  _i4.BuiltMap<String, _i3.GreetingStruct>? get myMap;
  @override
  XmlMapsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlMapsInputOutput')
      ..add(
        'myMap',
        myMap,
      );
    return helper.toString();
  }
}

class XmlMapsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlMapsInputOutput> {
  const XmlMapsInputOutputRestXmlSerializer() : super('XmlMapsInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlMapsInputOutput,
        _$XmlMapsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlMapsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'myMap':
          result.myMap.replace(const _i1.XmlBuiltMapSerializer().deserialize(
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlMapsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[const _i1.XmlElementName('XmlMapsInputOutput')];
    final XmlMapsInputOutput(:myMap) = object;
    if (myMap != null) {
      result$
        ..add(const _i1.XmlElementName('myMap'))
        ..add(const _i1.XmlBuiltMapSerializer().serialize(
          serializers,
          myMap,
          specifiedType: const FullType.nullable(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.GreetingStruct),
            ],
          ),
        ));
    }
    return result$;
  }
}
