// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library custom_v2.custom.model.nested_collections_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'nested_collections_input.g.dart';

abstract class NestedCollectionsInput
    with
        _i1.HttpInput<NestedCollectionsInput>,
        _i2.AWSEquatable<NestedCollectionsInput>
    implements Built<NestedCollectionsInput, NestedCollectionsInputBuilder> {
  factory NestedCollectionsInput(
      {Map<String, List<Map<String, List<String>>?>>? mapOfListOfMapOfLists}) {
    return _$NestedCollectionsInput._(
        mapOfListOfMapOfLists: mapOfListOfMapOfLists == null
            ? null
            : _i3.BuiltListMultimap(mapOfListOfMapOfLists.map((
                key,
                value,
              ) =>
                MapEntry(
                  key,
                  value.map(
                      (el) => el == null ? null : _i3.BuiltListMultimap(el)),
                ))));
  }

  factory NestedCollectionsInput.build(
          [void Function(NestedCollectionsInputBuilder) updates]) =
      _$NestedCollectionsInput;

  const NestedCollectionsInput._();

  factory NestedCollectionsInput.fromRequest(
    NestedCollectionsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    NestedCollectionsInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NestedCollectionsInputBuilder b) {}
  _i3.BuiltListMultimap<String, _i3.BuiltListMultimap<String, String>?>?
      get mapOfListOfMapOfLists;
  @override
  NestedCollectionsInput getPayload() => this;
  @override
  List<Object?> get props => [mapOfListOfMapOfLists];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedCollectionsInput');
    helper.add(
      'mapOfListOfMapOfLists',
      mapOfListOfMapOfLists,
    );
    return helper.toString();
  }
}

class NestedCollectionsInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<NestedCollectionsInput> {
  const NestedCollectionsInputRestJson1Serializer()
      : super('NestedCollectionsInput');

  @override
  Iterable<Type> get types => const [
        NestedCollectionsInput,
        _$NestedCollectionsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  NestedCollectionsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedCollectionsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'mapOfListOfMapOfLists':
          if (value != null) {
            result.mapOfListOfMapOfLists.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltListMultimap,
                [
                  FullType(String),
                  FullType.nullable(
                    _i3.BuiltListMultimap,
                    [
                      FullType(String),
                      FullType(String),
                    ],
                  ),
                ],
              ),
            ) as _i3.BuiltListMultimap<String,
                _i3.BuiltListMultimap<String, String>?>));
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
    final payload = (object as NestedCollectionsInput);
    final result = <Object?>[];
    if (payload.mapOfListOfMapOfLists != null) {
      result
        ..add('mapOfListOfMapOfLists')
        ..add(serializers.serialize(
          payload.mapOfListOfMapOfLists!,
          specifiedType: const FullType(
            _i3.BuiltListMultimap,
            [
              FullType(String),
              FullType.nullable(
                _i3.BuiltListMultimap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ],
          ),
        ));
    }
    return result;
  }
}
