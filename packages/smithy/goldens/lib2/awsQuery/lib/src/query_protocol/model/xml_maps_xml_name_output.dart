// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v2.query_protocol.model.xml_maps_xml_name_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/greeting_struct.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'xml_maps_xml_name_output.g.dart';

abstract class XmlMapsXmlNameOutput
    with _i1.AWSEquatable<XmlMapsXmlNameOutput>
    implements Built<XmlMapsXmlNameOutput, XmlMapsXmlNameOutputBuilder> {
  factory XmlMapsXmlNameOutput({Map<String, GreetingStruct>? myMap}) {
    return _$XmlMapsXmlNameOutput._(
        myMap: myMap == null ? null : _i2.BuiltMap(myMap));
  }

  factory XmlMapsXmlNameOutput.build(
          [void Function(XmlMapsXmlNameOutputBuilder) updates]) =
      _$XmlMapsXmlNameOutput;

  const XmlMapsXmlNameOutput._();

  /// Constructs a [XmlMapsXmlNameOutput] from a [payload] and [response].
  factory XmlMapsXmlNameOutput.fromResponse(
    XmlMapsXmlNameOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<XmlMapsXmlNameOutput>> serializers = [
    XmlMapsXmlNameOutputAwsQuerySerializer()
  ];

  _i2.BuiltMap<String, GreetingStruct>? get myMap;
  @override
  List<Object?> get props => [myMap];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlMapsXmlNameOutput')
      ..add(
        'myMap',
        myMap,
      );
    return helper.toString();
  }
}

class XmlMapsXmlNameOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<XmlMapsXmlNameOutput> {
  const XmlMapsXmlNameOutputAwsQuerySerializer()
      : super('XmlMapsXmlNameOutput');

  @override
  Iterable<Type> get types => const [
        XmlMapsXmlNameOutput,
        _$XmlMapsXmlNameOutput,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  XmlMapsXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlMapsXmlNameOutputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
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
          result.myMap.replace(const _i3.XmlBuiltMapSerializer(
            keyName: 'Attribute',
            valueName: 'Setting',
            indexer: _i3.XmlIndexer.awsQueryMap,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(GreetingStruct),
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
    XmlMapsXmlNameOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'XmlMapsXmlNameOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final XmlMapsXmlNameOutput(:myMap) = object;
    if (myMap != null) {
      result$
        ..add(const _i3.XmlElementName('myMap'))
        ..add(const _i3.XmlBuiltMapSerializer(
          keyName: 'Attribute',
          valueName: 'Setting',
          indexer: _i3.XmlIndexer.awsQueryMap,
        ).serialize(
          serializers,
          myMap,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(GreetingStruct),
            ],
          ),
        ));
    }
    return result$;
  }
}
