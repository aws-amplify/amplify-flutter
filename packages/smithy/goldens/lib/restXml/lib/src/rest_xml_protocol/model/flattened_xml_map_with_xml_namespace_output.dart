// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.flattened_xml_map_with_xml_namespace_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'flattened_xml_map_with_xml_namespace_output.g.dart';

abstract class FlattenedXmlMapWithXmlNamespaceOutput
    with
        _i1.AWSEquatable<FlattenedXmlMapWithXmlNamespaceOutput>
    implements
        Built<FlattenedXmlMapWithXmlNamespaceOutput,
            FlattenedXmlMapWithXmlNamespaceOutputBuilder> {
  factory FlattenedXmlMapWithXmlNamespaceOutput(
      {_i2.BuiltMap<String, String>? myMap}) {
    return _$FlattenedXmlMapWithXmlNamespaceOutput._(myMap: myMap);
  }

  factory FlattenedXmlMapWithXmlNamespaceOutput.build(
      [void Function(FlattenedXmlMapWithXmlNamespaceOutputBuilder)
          updates]) = _$FlattenedXmlMapWithXmlNamespaceOutput;

  const FlattenedXmlMapWithXmlNamespaceOutput._();

  /// Constructs a [FlattenedXmlMapWithXmlNamespaceOutput] from a [payload] and [response].
  factory FlattenedXmlMapWithXmlNamespaceOutput.fromResponse(
    FlattenedXmlMapWithXmlNamespaceOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlattenedXmlMapWithXmlNamespaceOutputBuilder b) {}
  _i2.BuiltMap<String, String>? get myMap;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FlattenedXmlMapWithXmlNamespaceOutput');
    helper.add(
      'myMap',
      myMap,
    );
    return helper.toString();
  }
}

class FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer extends _i3
    .StructuredSmithySerializer<FlattenedXmlMapWithXmlNamespaceOutput> {
  const FlattenedXmlMapWithXmlNamespaceOutputRestXmlSerializer()
      : super('FlattenedXmlMapWithXmlNamespaceOutput');

  @override
  Iterable<Type> get types => const [
        FlattenedXmlMapWithXmlNamespaceOutput,
        _$FlattenedXmlMapWithXmlNamespaceOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  FlattenedXmlMapWithXmlNamespaceOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlattenedXmlMapWithXmlNamespaceOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'KVP':
          if (value != null) {
            result.myMap.addAll(const _i3.XmlBuiltMapSerializer(
              keyName: 'K',
              valueName: 'V',
              flattenedKey: 'KVP',
            )
                .deserialize(
                  serializers,
                  (value as Iterable<Object?>),
                  specifiedType: const FullType(
                    _i2.BuiltMap,
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
    final payload = (object as FlattenedXmlMapWithXmlNamespaceOutput);
    final result = <Object?>[
      const _i3.XmlElementName('FlattenedXmlMapWithXmlNamespaceOutput')
    ];
    if (payload.myMap != null) {
      result.addAll(const _i3.XmlBuiltMapSerializer(
        keyName: 'K',
        valueName: 'V',
        flattenedKey: 'KVP',
      ).serialize(
        serializers,
        payload.myMap!,
        specifiedType: const FullType.nullable(
          _i2.BuiltMap,
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
