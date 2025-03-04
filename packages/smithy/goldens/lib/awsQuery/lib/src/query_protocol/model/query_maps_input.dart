// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v1.query_protocol.model.query_maps_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_query_v1/src/query_protocol/model/greeting_struct.dart';
import 'package:aws_query_v1/src/query_protocol/model/nested_struct_with_map.dart';
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'query_maps_input.g.dart';

abstract class QueryMapsInput
    with _i1.HttpInput<QueryMapsInput>, _i2.AWSEquatable<QueryMapsInput>
    implements Built<QueryMapsInput, QueryMapsInputBuilder> {
  factory QueryMapsInput({
    Map<String, String>? mapArg,
    Map<String, String>? renamedMapArg,
    Map<String, GreetingStruct>? complexMapArg,
    Map<String, String>? mapWithXmlMemberName,
    Map<String, String>? flattenedMap,
    Map<String, String>? flattenedMapWithXmlName,
    Map<String, List<String>>? mapOfLists,
    NestedStructWithMap? nestedStructWithMap,
  }) {
    return _$QueryMapsInput._(
      mapArg: mapArg == null ? null : _i3.BuiltMap(mapArg),
      renamedMapArg: renamedMapArg == null ? null : _i3.BuiltMap(renamedMapArg),
      complexMapArg: complexMapArg == null ? null : _i3.BuiltMap(complexMapArg),
      mapWithXmlMemberName: mapWithXmlMemberName == null
          ? null
          : _i3.BuiltMap(mapWithXmlMemberName),
      flattenedMap: flattenedMap == null ? null : _i3.BuiltMap(flattenedMap),
      flattenedMapWithXmlName: flattenedMapWithXmlName == null
          ? null
          : _i3.BuiltMap(flattenedMapWithXmlName),
      mapOfLists: mapOfLists == null ? null : _i3.BuiltListMultimap(mapOfLists),
      nestedStructWithMap: nestedStructWithMap,
    );
  }

  factory QueryMapsInput.build([void Function(QueryMapsInputBuilder) updates]) =
      _$QueryMapsInput;

  const QueryMapsInput._();

  factory QueryMapsInput.fromRequest(
    QueryMapsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<QueryMapsInput>> serializers = [
    QueryMapsInputAwsQuerySerializer()
  ];

  _i3.BuiltMap<String, String>? get mapArg;
  _i3.BuiltMap<String, String>? get renamedMapArg;
  _i3.BuiltMap<String, GreetingStruct>? get complexMapArg;
  _i3.BuiltMap<String, String>? get mapWithXmlMemberName;
  _i3.BuiltMap<String, String>? get flattenedMap;
  _i3.BuiltMap<String, String>? get flattenedMapWithXmlName;
  _i3.BuiltListMultimap<String, String>? get mapOfLists;
  NestedStructWithMap? get nestedStructWithMap;
  @override
  QueryMapsInput getPayload() => this;

  @override
  List<Object?> get props => [
        mapArg,
        renamedMapArg,
        complexMapArg,
        mapWithXmlMemberName,
        flattenedMap,
        flattenedMapWithXmlName,
        mapOfLists,
        nestedStructWithMap,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryMapsInput')
      ..add(
        'mapArg',
        mapArg,
      )
      ..add(
        'renamedMapArg',
        renamedMapArg,
      )
      ..add(
        'complexMapArg',
        complexMapArg,
      )
      ..add(
        'mapWithXmlMemberName',
        mapWithXmlMemberName,
      )
      ..add(
        'flattenedMap',
        flattenedMap,
      )
      ..add(
        'flattenedMapWithXmlName',
        flattenedMapWithXmlName,
      )
      ..add(
        'mapOfLists',
        mapOfLists,
      )
      ..add(
        'nestedStructWithMap',
        nestedStructWithMap,
      );
    return helper.toString();
  }
}

class QueryMapsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<QueryMapsInput> {
  const QueryMapsInputAwsQuerySerializer() : super('QueryMapsInput');

  @override
  Iterable<Type> get types => const [
        QueryMapsInput,
        _$QueryMapsInput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  QueryMapsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryMapsInputBuilder();
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
        case 'MapArg':
          result.mapArg.replace(const _i1.XmlBuiltMapSerializer(
                  indexer: _i1.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ));
        case 'Foo':
          result.renamedMapArg.replace(const _i1.XmlBuiltMapSerializer(
                  indexer: _i1.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ));
        case 'ComplexMapArg':
          result.complexMapArg.replace(const _i1.XmlBuiltMapSerializer(
                  indexer: _i1.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(GreetingStruct),
              ],
            ),
          ));
        case 'MapWithXmlMemberName':
          result.mapWithXmlMemberName.replace(const _i1.XmlBuiltMapSerializer(
            keyName: 'K',
            valueName: 'V',
            indexer: _i1.XmlIndexer.awsQueryMap,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ));
        case 'FlattenedMap':
          result.flattenedMap.addAll(const _i1.XmlBuiltMapSerializer(
            flattenedKey: 'FlattenedMap',
            indexer: _i1.XmlIndexer.awsQueryMap,
          )
              .deserialize(
                serializers,
                value is String ? const [] : (value as Iterable<Object?>),
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
        case 'Hi':
          result.flattenedMapWithXmlName.addAll(const _i1.XmlBuiltMapSerializer(
            keyName: 'K',
            valueName: 'V',
            flattenedKey: 'Hi',
            indexer: _i1.XmlIndexer.awsQueryMap,
          )
              .deserialize(
                serializers,
                value is String ? const [] : (value as Iterable<Object?>),
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
        case 'MapOfLists':
          result.mapOfLists.replace(const _i1.XmlBuiltMultimapSerializer(
                  indexer: _i1.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltListMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ));
        case 'NestedStructWithMap':
          result.nestedStructWithMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NestedStructWithMap),
          ) as NestedStructWithMap));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryMapsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'QueryMapsInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    final QueryMapsInput(
      :mapArg,
      :renamedMapArg,
      :complexMapArg,
      :mapWithXmlMemberName,
      :flattenedMap,
      :flattenedMapWithXmlName,
      :mapOfLists,
      :nestedStructWithMap
    ) = object;
    if (mapArg != null) {
      result$
        ..add(const _i1.XmlElementName('MapArg'))
        ..add(
            const _i1.XmlBuiltMapSerializer(indexer: _i1.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          mapArg,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (renamedMapArg != null) {
      result$
        ..add(const _i1.XmlElementName('Foo'))
        ..add(
            const _i1.XmlBuiltMapSerializer(indexer: _i1.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          renamedMapArg,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (complexMapArg != null) {
      result$
        ..add(const _i1.XmlElementName('ComplexMapArg'))
        ..add(
            const _i1.XmlBuiltMapSerializer(indexer: _i1.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          complexMapArg,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(GreetingStruct),
            ],
          ),
        ));
    }
    if (mapWithXmlMemberName != null) {
      result$
        ..add(const _i1.XmlElementName('MapWithXmlMemberName'))
        ..add(const _i1.XmlBuiltMapSerializer(
          keyName: 'K',
          valueName: 'V',
          indexer: _i1.XmlIndexer.awsQueryMap,
        ).serialize(
          serializers,
          mapWithXmlMemberName,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (flattenedMap != null) {
      result$.addAll(const _i1.XmlBuiltMapSerializer(
        flattenedKey: 'FlattenedMap',
        indexer: _i1.XmlIndexer.awsQueryMap,
      ).serialize(
        serializers,
        flattenedMap,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ));
    }
    if (flattenedMapWithXmlName != null) {
      result$.addAll(const _i1.XmlBuiltMapSerializer(
        keyName: 'K',
        valueName: 'V',
        flattenedKey: 'Hi',
        indexer: _i1.XmlIndexer.awsQueryMap,
      ).serialize(
        serializers,
        flattenedMapWithXmlName,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ));
    }
    if (mapOfLists != null) {
      result$
        ..add(const _i1.XmlElementName('MapOfLists'))
        ..add(const _i1.XmlBuiltMultimapSerializer(
                indexer: _i1.XmlIndexer.awsQueryMap)
            .serialize(
          serializers,
          mapOfLists,
          specifiedType: const FullType(
            _i3.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (nestedStructWithMap != null) {
      result$
        ..add(const _i1.XmlElementName('NestedStructWithMap'))
        ..add(serializers.serialize(
          nestedStructWithMap,
          specifiedType: const FullType(NestedStructWithMap),
        ));
    }
    return result$;
  }
}
