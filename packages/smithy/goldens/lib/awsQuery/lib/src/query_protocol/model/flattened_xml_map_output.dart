// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v1.query_protocol.model.flattened_xml_map_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v1/src/query_protocol/model/foo_enum.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'flattened_xml_map_output.g.dart';

abstract class FlattenedXmlMapOutput
    with _i1.AWSEquatable<FlattenedXmlMapOutput>
    implements Built<FlattenedXmlMapOutput, FlattenedXmlMapOutputBuilder> {
  factory FlattenedXmlMapOutput({Map<String, FooEnum>? myMap}) {
    return _$FlattenedXmlMapOutput._(
        myMap: myMap == null ? null : _i2.BuiltMap(myMap));
  }

  factory FlattenedXmlMapOutput.build(
          [void Function(FlattenedXmlMapOutputBuilder) updates]) =
      _$FlattenedXmlMapOutput;

  const FlattenedXmlMapOutput._();

  /// Constructs a [FlattenedXmlMapOutput] from a [payload] and [response].
  factory FlattenedXmlMapOutput.fromResponse(
    FlattenedXmlMapOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<FlattenedXmlMapOutput>> serializers = [
    FlattenedXmlMapOutputAwsQuerySerializer()
  ];

  _i2.BuiltMap<String, FooEnum>? get myMap;
  @override
  List<Object?> get props => [myMap];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FlattenedXmlMapOutput')
      ..add(
        'myMap',
        myMap,
      );
    return helper.toString();
  }
}

class FlattenedXmlMapOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<FlattenedXmlMapOutput> {
  const FlattenedXmlMapOutputAwsQuerySerializer()
      : super('FlattenedXmlMapOutput');

  @override
  Iterable<Type> get types => const [
        FlattenedXmlMapOutput,
        _$FlattenedXmlMapOutput,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  FlattenedXmlMapOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlattenedXmlMapOutputBuilder();
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
          result.myMap.addAll(const _i3.XmlBuiltMapSerializer(
            flattenedKey: 'myMap',
            indexer: _i3.XmlIndexer.awsQueryMap,
          )
              .deserialize(
                serializers,
                value is String ? const [] : (value as Iterable<Object?>),
                specifiedType: const FullType(
                  _i2.BuiltMap,
                  [
                    FullType(String),
                    FullType(FooEnum),
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
    FlattenedXmlMapOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FlattenedXmlMapOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final FlattenedXmlMapOutput(:myMap) = object;
    if (myMap != null) {
      result$.addAll(const _i3.XmlBuiltMapSerializer(
        flattenedKey: 'myMap',
        indexer: _i3.XmlIndexer.awsQueryMap,
      ).serialize(
        serializers,
        myMap,
        specifiedType: const FullType(
          _i2.BuiltMap,
          [
            FullType(String),
            FullType(FooEnum),
          ],
        ),
      ));
    }
    return result$;
  }
}
