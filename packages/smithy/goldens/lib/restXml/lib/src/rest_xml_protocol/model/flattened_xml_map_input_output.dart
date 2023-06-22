// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.rest_xml_protocol.model.flattened_xml_map_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'flattened_xml_map_input_output.g.dart';

abstract class FlattenedXmlMapInputOutput
    with
        _i1.HttpInput<FlattenedXmlMapInputOutput>,
        _i2.AWSEquatable<FlattenedXmlMapInputOutput>
    implements
        Built<FlattenedXmlMapInputOutput, FlattenedXmlMapInputOutputBuilder> {
  factory FlattenedXmlMapInputOutput({Map<String, _i3.FooEnum>? myMap}) {
    return _$FlattenedXmlMapInputOutput._(
        myMap: myMap == null ? null : _i4.BuiltMap(myMap));
  }

  factory FlattenedXmlMapInputOutput.build(
          [void Function(FlattenedXmlMapInputOutputBuilder) updates]) =
      _$FlattenedXmlMapInputOutput;

  const FlattenedXmlMapInputOutput._();

  factory FlattenedXmlMapInputOutput.fromRequest(
    FlattenedXmlMapInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [FlattenedXmlMapInputOutput] from a [payload] and [response].
  factory FlattenedXmlMapInputOutput.fromResponse(
    FlattenedXmlMapInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<FlattenedXmlMapInputOutput>>
      serializers = [FlattenedXmlMapInputOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlattenedXmlMapInputOutputBuilder b) {}
  _i4.BuiltMap<String, _i3.FooEnum>? get myMap;
  @override
  FlattenedXmlMapInputOutput getPayload() => this;
  @override
  List<Object?> get props => [myMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FlattenedXmlMapInputOutput')
      ..add(
        'myMap',
        myMap,
      );
    return helper.toString();
  }
}

class FlattenedXmlMapInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<FlattenedXmlMapInputOutput> {
  const FlattenedXmlMapInputOutputRestXmlSerializer()
      : super('FlattenedXmlMapInputOutput');

  @override
  Iterable<Type> get types => const [
        FlattenedXmlMapInputOutput,
        _$FlattenedXmlMapInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  FlattenedXmlMapInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlattenedXmlMapInputOutputBuilder();
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
          result.myMap
              .addAll(const _i1.XmlBuiltMapSerializer(flattenedKey: 'myMap')
                  .deserialize(
                    serializers,
                    value is String ? const [] : (value as Iterable<Object?>),
                    specifiedType: const FullType(
                      _i4.BuiltMap,
                      [
                        FullType(String),
                        FullType(_i3.FooEnum),
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
    FlattenedXmlMapInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('FlattenedXmlMapInputOutput')
    ];
    final FlattenedXmlMapInputOutput(:myMap) = object;
    if (myMap != null) {
      result$.addAll(
          const _i1.XmlBuiltMapSerializer(flattenedKey: 'myMap').serialize(
        serializers,
        myMap,
        specifiedType: const FullType.nullable(
          _i4.BuiltMap,
          [
            FullType(String),
            FullType(_i3.FooEnum),
          ],
        ),
      ));
    }
    return result$;
  }
}
