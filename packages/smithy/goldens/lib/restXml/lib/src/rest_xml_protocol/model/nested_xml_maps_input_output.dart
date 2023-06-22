// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.rest_xml_protocol.model.nested_xml_maps_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'nested_xml_maps_input_output.g.dart';

abstract class NestedXmlMapsInputOutput
    with
        _i1.HttpInput<NestedXmlMapsInputOutput>,
        _i2.AWSEquatable<NestedXmlMapsInputOutput>
    implements
        Built<NestedXmlMapsInputOutput, NestedXmlMapsInputOutputBuilder> {
  factory NestedXmlMapsInputOutput({
    Map<String, Map<String, _i3.FooEnum>>? nestedMap,
    Map<String, Map<String, _i3.FooEnum>>? flatNestedMap,
  }) {
    return _$NestedXmlMapsInputOutput._(
      nestedMap: nestedMap == null
          ? null
          : _i4.BuiltMap(nestedMap.map((
              key,
              value,
            ) =>
              MapEntry(
                key,
                _i4.BuiltMap(value),
              ))),
      flatNestedMap: flatNestedMap == null
          ? null
          : _i4.BuiltMap(flatNestedMap.map((
              key,
              value,
            ) =>
              MapEntry(
                key,
                _i4.BuiltMap(value),
              ))),
    );
  }

  factory NestedXmlMapsInputOutput.build(
          [void Function(NestedXmlMapsInputOutputBuilder) updates]) =
      _$NestedXmlMapsInputOutput;

  const NestedXmlMapsInputOutput._();

  factory NestedXmlMapsInputOutput.fromRequest(
    NestedXmlMapsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [NestedXmlMapsInputOutput] from a [payload] and [response].
  factory NestedXmlMapsInputOutput.fromResponse(
    NestedXmlMapsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<NestedXmlMapsInputOutput>>
      serializers = [NestedXmlMapsInputOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NestedXmlMapsInputOutputBuilder b) {}
  _i4.BuiltMap<String, _i4.BuiltMap<String, _i3.FooEnum>>? get nestedMap;
  _i4.BuiltMap<String, _i4.BuiltMap<String, _i3.FooEnum>>? get flatNestedMap;
  @override
  NestedXmlMapsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        nestedMap,
        flatNestedMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedXmlMapsInputOutput')
      ..add(
        'nestedMap',
        nestedMap,
      )
      ..add(
        'flatNestedMap',
        flatNestedMap,
      );
    return helper.toString();
  }
}

class NestedXmlMapsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<NestedXmlMapsInputOutput> {
  const NestedXmlMapsInputOutputRestXmlSerializer()
      : super('NestedXmlMapsInputOutput');

  @override
  Iterable<Type> get types => const [
        NestedXmlMapsInputOutput,
        _$NestedXmlMapsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NestedXmlMapsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedXmlMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'flatNestedMap':
          result.flatNestedMap.addAll(
              const _i1.XmlBuiltMapSerializer(flattenedKey: 'flatNestedMap')
                  .deserialize(
                    serializers,
                    value is String ? const [] : (value as Iterable<Object?>),
                    specifiedType: const FullType(
                      _i4.BuiltMap,
                      [
                        FullType(String),
                        FullType(
                          _i4.BuiltMap,
                          [
                            FullType(String),
                            FullType(_i3.FooEnum),
                          ],
                        ),
                      ],
                    ),
                  )
                  .toMap()
                  .cast());
        case 'nestedMap':
          result.nestedMap
              .replace(const _i1.XmlBuiltMapSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(
                  _i4.BuiltMap,
                  [
                    FullType(String),
                    FullType(_i3.FooEnum),
                  ],
                ),
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
    NestedXmlMapsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('NestedXmlMapsInputOutput')
    ];
    final NestedXmlMapsInputOutput(:flatNestedMap, :nestedMap) = object;
    if (flatNestedMap != null) {
      result$.addAll(
          const _i1.XmlBuiltMapSerializer(flattenedKey: 'flatNestedMap')
              .serialize(
        serializers,
        flatNestedMap,
        specifiedType: const FullType.nullable(
          _i4.BuiltMap,
          [
            FullType(String),
            FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i3.FooEnum),
              ],
            ),
          ],
        ),
      ));
    }
    if (nestedMap != null) {
      result$
        ..add(const _i1.XmlElementName('nestedMap'))
        ..add(const _i1.XmlBuiltMapSerializer().serialize(
          serializers,
          nestedMap,
          specifiedType: const FullType.nullable(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.FooEnum),
                ],
              ),
            ],
          ),
        ));
    }
    return result$;
  }
}
