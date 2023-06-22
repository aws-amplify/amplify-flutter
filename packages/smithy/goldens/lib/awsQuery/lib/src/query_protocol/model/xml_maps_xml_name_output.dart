// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.xml_maps_xml_name_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v1/src/query_protocol/model/greeting_struct.dart'
    as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'xml_maps_xml_name_output.g.dart';

abstract class XmlMapsXmlNameOutput
    with _i1.AWSEquatable<XmlMapsXmlNameOutput>
    implements Built<XmlMapsXmlNameOutput, XmlMapsXmlNameOutputBuilder> {
  factory XmlMapsXmlNameOutput({Map<String, _i2.GreetingStruct>? myMap}) {
    return _$XmlMapsXmlNameOutput._(
        myMap: myMap == null ? null : _i3.BuiltMap(myMap));
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

  static const List<_i4.SmithySerializer<XmlMapsXmlNameOutput>> serializers = [
    XmlMapsXmlNameOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlMapsXmlNameOutputBuilder b) {}
  _i3.BuiltMap<String, _i2.GreetingStruct>? get myMap;
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
    extends _i4.StructuredSmithySerializer<XmlMapsXmlNameOutput> {
  const XmlMapsXmlNameOutputAwsQuerySerializer()
      : super('XmlMapsXmlNameOutput');

  @override
  Iterable<Type> get types => const [
        XmlMapsXmlNameOutput,
        _$XmlMapsXmlNameOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
          result.myMap.replace(const _i4.XmlBuiltMapSerializer(
            keyName: 'Attribute',
            valueName: 'Setting',
            indexer: _i4.XmlIndexer.awsQueryMap,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.GreetingStruct),
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
      const _i4.XmlElementName(
        'XmlMapsXmlNameOutputResponse',
        _i4.XmlNamespace('https://example.com/'),
      )
    ];
    final XmlMapsXmlNameOutput(:myMap) = object;
    if (myMap != null) {
      result$
        ..add(const _i4.XmlElementName('myMap'))
        ..add(const _i4.XmlBuiltMapSerializer(
          keyName: 'Attribute',
          valueName: 'Setting',
          indexer: _i4.XmlIndexer.awsQueryMap,
        ).serialize(
          serializers,
          myMap,
          specifiedType: const FullType.nullable(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.GreetingStruct),
            ],
          ),
        ));
    }
    return result$;
  }
}
