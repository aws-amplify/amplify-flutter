// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v2.query_protocol.model.xml_maps_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/greeting_struct.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'xml_maps_output.g.dart';

abstract class XmlMapsOutput
    with _i1.AWSEquatable<XmlMapsOutput>
    implements Built<XmlMapsOutput, XmlMapsOutputBuilder> {
  factory XmlMapsOutput({Map<String, GreetingStruct>? myMap}) {
    return _$XmlMapsOutput._(myMap: myMap == null ? null : _i2.BuiltMap(myMap));
  }

  factory XmlMapsOutput.build([void Function(XmlMapsOutputBuilder) updates]) =
      _$XmlMapsOutput;

  const XmlMapsOutput._();

  /// Constructs a [XmlMapsOutput] from a [payload] and [response].
  factory XmlMapsOutput.fromResponse(
    XmlMapsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<XmlMapsOutput>> serializers = [
    XmlMapsOutputAwsQuerySerializer()
  ];

  _i2.BuiltMap<String, GreetingStruct>? get myMap;
  @override
  List<Object?> get props => [myMap];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlMapsOutput')
      ..add(
        'myMap',
        myMap,
      );
    return helper.toString();
  }
}

class XmlMapsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<XmlMapsOutput> {
  const XmlMapsOutputAwsQuerySerializer() : super('XmlMapsOutput');

  @override
  Iterable<Type> get types => const [
        XmlMapsOutput,
        _$XmlMapsOutput,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  XmlMapsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlMapsOutputBuilder();
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
                  indexer: _i3.XmlIndexer.awsQueryMap)
              .deserialize(
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
    XmlMapsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'XmlMapsOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final XmlMapsOutput(:myMap) = object;
    if (myMap != null) {
      result$
        ..add(const _i3.XmlElementName('myMap'))
        ..add(
            const _i3.XmlBuiltMapSerializer(indexer: _i3.XmlIndexer.awsQueryMap)
                .serialize(
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
