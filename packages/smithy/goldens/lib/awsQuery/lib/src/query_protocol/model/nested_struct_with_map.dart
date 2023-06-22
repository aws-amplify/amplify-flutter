// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.nested_struct_with_map; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'nested_struct_with_map.g.dart';

abstract class NestedStructWithMap
    with _i1.AWSEquatable<NestedStructWithMap>
    implements Built<NestedStructWithMap, NestedStructWithMapBuilder> {
  factory NestedStructWithMap({Map<String, String>? mapArg}) {
    return _$NestedStructWithMap._(
        mapArg: mapArg == null ? null : _i2.BuiltMap(mapArg));
  }

  factory NestedStructWithMap.build(
          [void Function(NestedStructWithMapBuilder) updates]) =
      _$NestedStructWithMap;

  const NestedStructWithMap._();

  static const List<_i3.SmithySerializer<NestedStructWithMap>> serializers = [
    NestedStructWithMapAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NestedStructWithMapBuilder b) {}
  _i2.BuiltMap<String, String>? get mapArg;
  @override
  List<Object?> get props => [mapArg];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedStructWithMap')
      ..add(
        'mapArg',
        mapArg,
      );
    return helper.toString();
  }
}

class NestedStructWithMapAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<NestedStructWithMap> {
  const NestedStructWithMapAwsQuerySerializer() : super('NestedStructWithMap');

  @override
  Iterable<Type> get types => const [
        NestedStructWithMap,
        _$NestedStructWithMap,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  NestedStructWithMap deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedStructWithMapBuilder();
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
          result.mapArg.replace(const _i3.XmlBuiltMapSerializer(
                  indexer: _i3.XmlIndexer.awsQueryMap)
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
          ));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NestedStructWithMap object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NestedStructWithMapResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final NestedStructWithMap(:mapArg) = object;
    if (mapArg != null) {
      result$
        ..add(const _i3.XmlElementName('MapArg'))
        ..add(
            const _i3.XmlBuiltMapSerializer(indexer: _i3.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          mapArg,
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
