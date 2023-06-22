// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.flattened_xml_map_with_xml_name_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'flattened_xml_map_with_xml_name_output.g.dart';

abstract class FlattenedXmlMapWithXmlNameOutput
    with
        _i1.AWSEquatable<FlattenedXmlMapWithXmlNameOutput>
    implements
        Built<FlattenedXmlMapWithXmlNameOutput,
            FlattenedXmlMapWithXmlNameOutputBuilder> {
  factory FlattenedXmlMapWithXmlNameOutput({Map<String, String>? myMap}) {
    return _$FlattenedXmlMapWithXmlNameOutput._(
        myMap: myMap == null ? null : _i2.BuiltMap(myMap));
  }

  factory FlattenedXmlMapWithXmlNameOutput.build(
          [void Function(FlattenedXmlMapWithXmlNameOutputBuilder) updates]) =
      _$FlattenedXmlMapWithXmlNameOutput;

  const FlattenedXmlMapWithXmlNameOutput._();

  /// Constructs a [FlattenedXmlMapWithXmlNameOutput] from a [payload] and [response].
  factory FlattenedXmlMapWithXmlNameOutput.fromResponse(
    FlattenedXmlMapWithXmlNameOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<FlattenedXmlMapWithXmlNameOutput>>
      serializers = [FlattenedXmlMapWithXmlNameOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlattenedXmlMapWithXmlNameOutputBuilder b) {}
  _i2.BuiltMap<String, String>? get myMap;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FlattenedXmlMapWithXmlNameOutput')
          ..add(
            'myMap',
            myMap,
          );
    return helper.toString();
  }
}

class FlattenedXmlMapWithXmlNameOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<FlattenedXmlMapWithXmlNameOutput> {
  const FlattenedXmlMapWithXmlNameOutputAwsQuerySerializer()
      : super('FlattenedXmlMapWithXmlNameOutput');

  @override
  Iterable<Type> get types => const [
        FlattenedXmlMapWithXmlNameOutput,
        _$FlattenedXmlMapWithXmlNameOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  FlattenedXmlMapWithXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlattenedXmlMapWithXmlNameOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'KVP':
          result.myMap.addAll(const _i3.XmlBuiltMapSerializer(
            keyName: 'K',
            valueName: 'V',
            flattenedKey: 'KVP',
            indexer: _i3.XmlIndexer.awsQueryMap,
          )
              .deserialize(
                serializers,
                value is String ? const [] : (value as Iterable<Object?>),
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FlattenedXmlMapWithXmlNameOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FlattenedXmlMapWithXmlNameOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final FlattenedXmlMapWithXmlNameOutput(:myMap) = object;
    if (myMap != null) {
      result$.addAll(const _i3.XmlBuiltMapSerializer(
        keyName: 'K',
        valueName: 'V',
        flattenedKey: 'KVP',
        indexer: _i3.XmlIndexer.awsQueryMap,
      ).serialize(
        serializers,
        myMap,
        specifiedType: const FullType.nullable(
          _i2.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ));
    }
    return result$;
  }
}
