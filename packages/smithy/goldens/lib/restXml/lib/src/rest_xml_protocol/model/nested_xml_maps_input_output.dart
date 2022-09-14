// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.nested_xml_maps_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'nested_xml_maps_input_output.g.dart';

abstract class NestedXmlMapsInputOutput
    with
        _i1.HttpInput<NestedXmlMapsInputOutput>,
        _i2.AWSEquatable<NestedXmlMapsInputOutput>
    implements
        Built<NestedXmlMapsInputOutput, NestedXmlMapsInputOutputBuilder> {
  factory NestedXmlMapsInputOutput(
      {_i3.BuiltMap<String, _i3.BuiltMap<String, _i4.FooEnum>>? flatNestedMap,
      _i3.BuiltMap<String, _i3.BuiltMap<String, _i4.FooEnum>>? nestedMap}) {
    return _$NestedXmlMapsInputOutput._(
        flatNestedMap: flatNestedMap, nestedMap: nestedMap);
  }

  factory NestedXmlMapsInputOutput.build(
          [void Function(NestedXmlMapsInputOutputBuilder) updates]) =
      _$NestedXmlMapsInputOutput;

  const NestedXmlMapsInputOutput._();

  factory NestedXmlMapsInputOutput.fromRequest(
          NestedXmlMapsInputOutput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  /// Constructs a [NestedXmlMapsInputOutput] from a [payload] and [response].
  factory NestedXmlMapsInputOutput.fromResponse(
          NestedXmlMapsInputOutput payload, _i2.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    NestedXmlMapsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NestedXmlMapsInputOutputBuilder b) {}
  _i3.BuiltMap<String, _i3.BuiltMap<String, _i4.FooEnum>>? get flatNestedMap;
  _i3.BuiltMap<String, _i3.BuiltMap<String, _i4.FooEnum>>? get nestedMap;
  @override
  NestedXmlMapsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [flatNestedMap, nestedMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedXmlMapsInputOutput');
    helper.add('flatNestedMap', flatNestedMap);
    helper.add('nestedMap', nestedMap);
    return helper.toString();
  }
}

class NestedXmlMapsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<NestedXmlMapsInputOutput> {
  const NestedXmlMapsInputOutputRestXmlSerializer()
      : super('NestedXmlMapsInputOutput');

  @override
  Iterable<Type> get types =>
      const [NestedXmlMapsInputOutput, _$NestedXmlMapsInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  NestedXmlMapsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = NestedXmlMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'flatNestedMap':
          if (value != null) {
            result.flatNestedMap.addAll(
                const _i1.XmlBuiltMapSerializer(flattenedKey: 'flatNestedMap')
                    .deserialize(serializers, (value as Iterable<Object?>),
                        specifiedType: const FullType(_i3.BuiltMap, [
                          FullType(String),
                          FullType(_i3.BuiltMap,
                              [FullType(String), FullType(_i4.FooEnum)])
                        ]))
                    .toMap()
                    .cast());
          }
          break;
        case 'nestedMap':
          if (value != null) {
            result.nestedMap.replace(const _i1.XmlBuiltMapSerializer()
                .deserialize(serializers, (value as Iterable<Object?>),
                    specifiedType: const FullType(_i3.BuiltMap, [
                      FullType(String),
                      FullType(_i3.BuiltMap,
                          [FullType(String), FullType(_i4.FooEnum)])
                    ])));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as NestedXmlMapsInputOutput);
    final result = <Object?>[
      const _i1.XmlElementName('NestedXmlMapsInputOutput')
    ];
    if (payload.flatNestedMap != null) {
      result.addAll(
          const _i1.XmlBuiltMapSerializer(flattenedKey: 'flatNestedMap')
              .serialize(serializers, payload.flatNestedMap!,
                  specifiedType: const FullType.nullable(_i3.BuiltMap, [
                    FullType(String),
                    FullType(
                        _i3.BuiltMap, [FullType(String), FullType(_i4.FooEnum)])
                  ])));
    }
    if (payload.nestedMap != null) {
      result
        ..add(const _i1.XmlElementName('nestedMap'))
        ..add(const _i1.XmlBuiltMapSerializer().serialize(
            serializers, payload.nestedMap!,
            specifiedType: const FullType.nullable(_i3.BuiltMap, [
              FullType(String),
              FullType(_i3.BuiltMap, [FullType(String), FullType(_i4.FooEnum)])
            ])));
    }
    return result;
  }
}
