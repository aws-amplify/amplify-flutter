// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.model.flattened_xml_map_with_xml_name_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'flattened_xml_map_with_xml_name_input_output.g.dart';

abstract class FlattenedXmlMapWithXmlNameInputOutput
    with
        _i1.HttpInput<FlattenedXmlMapWithXmlNameInputOutput>,
        _i2.AWSEquatable<FlattenedXmlMapWithXmlNameInputOutput>
    implements
        Built<FlattenedXmlMapWithXmlNameInputOutput,
            FlattenedXmlMapWithXmlNameInputOutputBuilder> {
  factory FlattenedXmlMapWithXmlNameInputOutput(
      {_i3.BuiltMap<String, String>? myMap}) {
    return _$FlattenedXmlMapWithXmlNameInputOutput._(myMap: myMap);
  }

  factory FlattenedXmlMapWithXmlNameInputOutput.build(
      [void Function(FlattenedXmlMapWithXmlNameInputOutputBuilder)
          updates]) = _$FlattenedXmlMapWithXmlNameInputOutput;

  const FlattenedXmlMapWithXmlNameInputOutput._();

  factory FlattenedXmlMapWithXmlNameInputOutput.fromRequest(
    FlattenedXmlMapWithXmlNameInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [FlattenedXmlMapWithXmlNameInputOutput] from a [payload] and [response].
  factory FlattenedXmlMapWithXmlNameInputOutput.fromResponse(
    FlattenedXmlMapWithXmlNameInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    FlattenedXmlMapWithXmlNameInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlattenedXmlMapWithXmlNameInputOutputBuilder b) {}
  _i3.BuiltMap<String, String>? get myMap;
  @override
  FlattenedXmlMapWithXmlNameInputOutput getPayload() => this;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FlattenedXmlMapWithXmlNameInputOutput');
    helper.add(
      'myMap',
      myMap,
    );
    return helper.toString();
  }
}

class FlattenedXmlMapWithXmlNameInputOutputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<FlattenedXmlMapWithXmlNameInputOutput> {
  const FlattenedXmlMapWithXmlNameInputOutputRestXmlSerializer()
      : super('FlattenedXmlMapWithXmlNameInputOutput');

  @override
  Iterable<Type> get types => const [
        FlattenedXmlMapWithXmlNameInputOutput,
        _$FlattenedXmlMapWithXmlNameInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  FlattenedXmlMapWithXmlNameInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlattenedXmlMapWithXmlNameInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'KVP':
          if (value != null) {
            result.myMap.addAll(const _i1.XmlBuiltMapSerializer(
              keyName: 'K',
              valueName: 'V',
              flattenedKey: 'KVP',
            )
                .deserialize(
                  serializers,
                  (value as Iterable<Object?>),
                  specifiedType: const FullType(
                    _i3.BuiltMap,
                    [
                      FullType(String),
                      FullType(String),
                    ],
                  ),
                )
                .toMap()
                .cast());
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
    final payload = (object as FlattenedXmlMapWithXmlNameInputOutput);
    final result = <Object?>[
      const _i1.XmlElementName('FlattenedXmlMapWithXmlNameInputOutput')
    ];
    if (payload.myMap != null) {
      result.addAll(const _i1.XmlBuiltMapSerializer(
        keyName: 'K',
        valueName: 'V',
        flattenedKey: 'KVP',
      ).serialize(
        serializers,
        payload.myMap!,
        specifiedType: const FullType.nullable(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ));
    }
    return result;
  }
}
