// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.xml_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/foo_enum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'xml_enums_input_output.g.dart';

abstract class XmlEnumsInputOutput
    with
        _i1.HttpInput<XmlEnumsInputOutput>,
        _i2.AWSEquatable<XmlEnumsInputOutput>
    implements Built<XmlEnumsInputOutput, XmlEnumsInputOutputBuilder> {
  factory XmlEnumsInputOutput({
    _i3.FooEnum? fooEnum1,
    _i3.FooEnum? fooEnum2,
    _i3.FooEnum? fooEnum3,
    List<_i3.FooEnum>? fooEnumList,
    Set<_i3.FooEnum>? fooEnumSet,
    Map<String, _i3.FooEnum>? fooEnumMap,
  }) {
    return _$XmlEnumsInputOutput._(
      fooEnum1: fooEnum1,
      fooEnum2: fooEnum2,
      fooEnum3: fooEnum3,
      fooEnumList: fooEnumList == null ? null : _i4.BuiltList(fooEnumList),
      fooEnumSet: fooEnumSet == null ? null : _i4.BuiltSet(fooEnumSet),
      fooEnumMap: fooEnumMap == null ? null : _i4.BuiltMap(fooEnumMap),
    );
  }

  factory XmlEnumsInputOutput.build(
          [void Function(XmlEnumsInputOutputBuilder) updates]) =
      _$XmlEnumsInputOutput;

  const XmlEnumsInputOutput._();

  factory XmlEnumsInputOutput.fromRequest(
    XmlEnumsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlEnumsInputOutput] from a [payload] and [response].
  factory XmlEnumsInputOutput.fromResponse(
    XmlEnumsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<XmlEnumsInputOutput>> serializers = [
    XmlEnumsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlEnumsInputOutputBuilder b) {}
  _i3.FooEnum? get fooEnum1;
  _i3.FooEnum? get fooEnum2;
  _i3.FooEnum? get fooEnum3;
  _i4.BuiltList<_i3.FooEnum>? get fooEnumList;
  _i4.BuiltSet<_i3.FooEnum>? get fooEnumSet;
  _i4.BuiltMap<String, _i3.FooEnum>? get fooEnumMap;
  @override
  XmlEnumsInputOutput getPayload() => this;
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
    final helper = newBuiltValueToStringHelper('XmlEnumsInputOutput')
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

class XmlEnumsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlEnumsInputOutput> {
  const XmlEnumsInputOutputRestXmlSerializer() : super('XmlEnumsInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlEnumsInputOutput,
        _$XmlEnumsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlEnumsInputOutputBuilder();
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
            specifiedType: const FullType(_i3.FooEnum),
          ) as _i3.FooEnum);
        case 'fooEnum2':
          result.fooEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.FooEnum),
          ) as _i3.FooEnum);
        case 'fooEnum3':
          result.fooEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.FooEnum),
          ) as _i3.FooEnum);
        case 'fooEnumList':
          result.fooEnumList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.FooEnum)],
            ),
          ) as _i4.BuiltList<_i3.FooEnum>));
        case 'fooEnumMap':
          result.fooEnumMap
              .replace(const _i1.XmlBuiltMapSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i3.FooEnum),
              ],
            ),
          ));
        case 'fooEnumSet':
          result.fooEnumSet
              .replace((const _i1.XmlBuiltSetSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(_i3.FooEnum)],
            ),
          ) as _i4.BuiltSet<_i3.FooEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlEnumsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[const _i1.XmlElementName('XmlEnumsInputOutput')];
    final XmlEnumsInputOutput(
      :fooEnum1,
      :fooEnum2,
      :fooEnum3,
      :fooEnumList,
      :fooEnumMap,
      :fooEnumSet
    ) = object;
    if (fooEnum1 != null) {
      result$
        ..add(const _i1.XmlElementName('fooEnum1'))
        ..add(serializers.serialize(
          fooEnum1,
          specifiedType: const FullType.nullable(_i3.FooEnum),
        ));
    }
    if (fooEnum2 != null) {
      result$
        ..add(const _i1.XmlElementName('fooEnum2'))
        ..add(serializers.serialize(
          fooEnum2,
          specifiedType: const FullType.nullable(_i3.FooEnum),
        ));
    }
    if (fooEnum3 != null) {
      result$
        ..add(const _i1.XmlElementName('fooEnum3'))
        ..add(serializers.serialize(
          fooEnum3,
          specifiedType: const FullType.nullable(_i3.FooEnum),
        ));
    }
    if (fooEnumList != null) {
      result$
        ..add(const _i1.XmlElementName('fooEnumList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          fooEnumList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.FooEnum)],
          ),
        ));
    }
    if (fooEnumMap != null) {
      result$
        ..add(const _i1.XmlElementName('fooEnumMap'))
        ..add(const _i1.XmlBuiltMapSerializer().serialize(
          serializers,
          fooEnumMap,
          specifiedType: const FullType.nullable(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.FooEnum),
            ],
          ),
        ));
    }
    if (fooEnumSet != null) {
      result$
        ..add(const _i1.XmlElementName('fooEnumSet'))
        ..add(const _i1.XmlBuiltSetSerializer().serialize(
          serializers,
          fooEnumSet,
          specifiedType: const FullType.nullable(
            _i4.BuiltSet,
            [FullType(_i3.FooEnum)],
          ),
        ));
    }
    return result$;
  }
}
