// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.xml_enums_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v1/src/query_protocol/model/foo_enum.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'xml_enums_output.g.dart';

abstract class XmlEnumsOutput
    with _i1.AWSEquatable<XmlEnumsOutput>
    implements Built<XmlEnumsOutput, XmlEnumsOutputBuilder> {
  factory XmlEnumsOutput({
    _i2.FooEnum? fooEnum1,
    _i2.FooEnum? fooEnum2,
    _i2.FooEnum? fooEnum3,
    List<_i2.FooEnum>? fooEnumList,
    Set<_i2.FooEnum>? fooEnumSet,
    Map<String, _i2.FooEnum>? fooEnumMap,
  }) {
    return _$XmlEnumsOutput._(
      fooEnum1: fooEnum1,
      fooEnum2: fooEnum2,
      fooEnum3: fooEnum3,
      fooEnumList: fooEnumList == null ? null : _i3.BuiltList(fooEnumList),
      fooEnumSet: fooEnumSet == null ? null : _i3.BuiltSet(fooEnumSet),
      fooEnumMap: fooEnumMap == null ? null : _i3.BuiltMap(fooEnumMap),
    );
  }

  factory XmlEnumsOutput.build([void Function(XmlEnumsOutputBuilder) updates]) =
      _$XmlEnumsOutput;

  const XmlEnumsOutput._();

  /// Constructs a [XmlEnumsOutput] from a [payload] and [response].
  factory XmlEnumsOutput.fromResponse(
    XmlEnumsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<XmlEnumsOutput>> serializers = [
    XmlEnumsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlEnumsOutputBuilder b) {}
  _i2.FooEnum? get fooEnum1;
  _i2.FooEnum? get fooEnum2;
  _i2.FooEnum? get fooEnum3;
  _i3.BuiltList<_i2.FooEnum>? get fooEnumList;
  _i3.BuiltSet<_i2.FooEnum>? get fooEnumSet;
  _i3.BuiltMap<String, _i2.FooEnum>? get fooEnumMap;
  @override
  List<Object?> get props => [
        fooEnum1,
        fooEnum2,
        fooEnum3,
        fooEnumList,
        fooEnumSet,
        fooEnumMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlEnumsOutput')
      ..add(
        'fooEnum1',
        fooEnum1,
      )
      ..add(
        'fooEnum2',
        fooEnum2,
      )
      ..add(
        'fooEnum3',
        fooEnum3,
      )
      ..add(
        'fooEnumList',
        fooEnumList,
      )
      ..add(
        'fooEnumSet',
        fooEnumSet,
      )
      ..add(
        'fooEnumMap',
        fooEnumMap,
      );
    return helper.toString();
  }
}

class XmlEnumsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<XmlEnumsOutput> {
  const XmlEnumsOutputAwsQuerySerializer() : super('XmlEnumsOutput');

  @override
  Iterable<Type> get types => const [
        XmlEnumsOutput,
        _$XmlEnumsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  XmlEnumsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlEnumsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fooEnum1':
          result.fooEnum1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FooEnum),
          ) as _i2.FooEnum);
        case 'fooEnum2':
          result.fooEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FooEnum),
          ) as _i2.FooEnum);
        case 'fooEnum3':
          result.fooEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FooEnum),
          ) as _i2.FooEnum);
        case 'fooEnumList':
          result.fooEnumList.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.FooEnum)],
            ),
          ) as _i3.BuiltList<_i2.FooEnum>));
        case 'fooEnumSet':
          result.fooEnumSet.replace((const _i4.XmlBuiltSetSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltSet,
              [FullType(_i2.FooEnum)],
            ),
          ) as _i3.BuiltSet<_i2.FooEnum>));
        case 'fooEnumMap':
          result.fooEnumMap.replace(const _i4.XmlBuiltMapSerializer(
                  indexer: _i4.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.FooEnum),
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
    XmlEnumsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'XmlEnumsOutputResponse',
        _i4.XmlNamespace('https://example.com/'),
      )
    ];
    final XmlEnumsOutput(
      :fooEnum1,
      :fooEnum2,
      :fooEnum3,
      :fooEnumList,
      :fooEnumSet,
      :fooEnumMap
    ) = object;
    if (fooEnum1 != null) {
      result$
        ..add(const _i4.XmlElementName('fooEnum1'))
        ..add(serializers.serialize(
          fooEnum1,
          specifiedType: const FullType.nullable(_i2.FooEnum),
        ));
    }
    if (fooEnum2 != null) {
      result$
        ..add(const _i4.XmlElementName('fooEnum2'))
        ..add(serializers.serialize(
          fooEnum2,
          specifiedType: const FullType.nullable(_i2.FooEnum),
        ));
    }
    if (fooEnum3 != null) {
      result$
        ..add(const _i4.XmlElementName('fooEnum3'))
        ..add(serializers.serialize(
          fooEnum3,
          specifiedType: const FullType.nullable(_i2.FooEnum),
        ));
    }
    if (fooEnumList != null) {
      result$
        ..add(const _i4.XmlElementName('fooEnumList'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          fooEnumList,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.FooEnum)],
          ),
        ));
    }
    if (fooEnumSet != null) {
      result$
        ..add(const _i4.XmlElementName('fooEnumSet'))
        ..add(const _i4.XmlBuiltSetSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          fooEnumSet,
          specifiedType: const FullType.nullable(
            _i3.BuiltSet,
            [FullType(_i2.FooEnum)],
          ),
        ));
    }
    if (fooEnumMap != null) {
      result$
        ..add(const _i4.XmlElementName('fooEnumMap'))
        ..add(
            const _i4.XmlBuiltMapSerializer(indexer: _i4.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          fooEnumMap,
          specifiedType: const FullType.nullable(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.FooEnum),
            ],
          ),
        ));
    }
    return result$;
  }
}
