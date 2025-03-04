// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v1.ec2_protocol.model.xml_enums_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/foo_enum.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'xml_enums_output.g.dart';

abstract class XmlEnumsOutput
    with _i1.AWSEquatable<XmlEnumsOutput>
    implements Built<XmlEnumsOutput, XmlEnumsOutputBuilder> {
  factory XmlEnumsOutput({
    FooEnum? fooEnum1,
    FooEnum? fooEnum2,
    FooEnum? fooEnum3,
    List<FooEnum>? fooEnumList,
    Set<FooEnum>? fooEnumSet,
    Map<String, FooEnum>? fooEnumMap,
  }) {
    return _$XmlEnumsOutput._(
      fooEnum1: fooEnum1,
      fooEnum2: fooEnum2,
      fooEnum3: fooEnum3,
      fooEnumList: fooEnumList == null ? null : _i2.BuiltList(fooEnumList),
      fooEnumSet: fooEnumSet == null ? null : _i2.BuiltSet(fooEnumSet),
      fooEnumMap: fooEnumMap == null ? null : _i2.BuiltMap(fooEnumMap),
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

  static const List<_i3.SmithySerializer<XmlEnumsOutput>> serializers = [
    XmlEnumsOutputEc2QuerySerializer()
  ];

  FooEnum? get fooEnum1;
  FooEnum? get fooEnum2;
  FooEnum? get fooEnum3;
  _i2.BuiltList<FooEnum>? get fooEnumList;
  _i2.BuiltSet<FooEnum>? get fooEnumSet;
  _i2.BuiltMap<String, FooEnum>? get fooEnumMap;
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

class XmlEnumsOutputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<XmlEnumsOutput> {
  const XmlEnumsOutputEc2QuerySerializer() : super('XmlEnumsOutput');

  @override
  Iterable<Type> get types => const [
        XmlEnumsOutput,
        _$XmlEnumsOutput,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
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
            specifiedType: const FullType(FooEnum),
          ) as FooEnum);
        case 'fooEnum2':
          result.fooEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(FooEnum),
          ) as FooEnum);
        case 'fooEnum3':
          result.fooEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(FooEnum),
          ) as FooEnum);
        case 'fooEnumList':
          result.fooEnumList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FooEnum)],
            ),
          ) as _i2.BuiltList<FooEnum>));
        case 'fooEnumSet':
          result.fooEnumSet.replace((const _i3.XmlBuiltSetSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltSet,
              [FullType(FooEnum)],
            ),
          ) as _i2.BuiltSet<FooEnum>));
        case 'fooEnumMap':
          result.fooEnumMap
              .replace(const _i3.XmlBuiltMapSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(FooEnum),
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
      const _i3.XmlElementName(
        'XmlEnumsOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
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
        ..add(const _i3.XmlElementName('FooEnum1'))
        ..add(serializers.serialize(
          fooEnum1,
          specifiedType: const FullType(FooEnum),
        ));
    }
    if (fooEnum2 != null) {
      result$
        ..add(const _i3.XmlElementName('FooEnum2'))
        ..add(serializers.serialize(
          fooEnum2,
          specifiedType: const FullType(FooEnum),
        ));
    }
    if (fooEnum3 != null) {
      result$
        ..add(const _i3.XmlElementName('FooEnum3'))
        ..add(serializers.serialize(
          fooEnum3,
          specifiedType: const FullType(FooEnum),
        ));
    }
    if (fooEnumList != null) {
      result$
        ..add(const _i3.XmlElementName('FooEnumList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          fooEnumList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(FooEnum)],
          ),
        ));
    }
    if (fooEnumSet != null) {
      result$
        ..add(const _i3.XmlElementName('FooEnumSet'))
        ..add(const _i3.XmlBuiltSetSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          fooEnumSet,
          specifiedType: const FullType(
            _i2.BuiltSet,
            [FullType(FooEnum)],
          ),
        ));
    }
    if (fooEnumMap != null) {
      result$
        ..add(const _i3.XmlElementName('FooEnumMap'))
        ..add(const _i3.XmlBuiltMapSerializer().serialize(
          serializers,
          fooEnumMap,
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
