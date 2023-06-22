// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.xml_int_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/integer_enum.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'xml_int_enums_input_output.g.dart';

abstract class XmlIntEnumsInputOutput
    with
        _i1.HttpInput<XmlIntEnumsInputOutput>,
        _i2.AWSEquatable<XmlIntEnumsInputOutput>
    implements Built<XmlIntEnumsInputOutput, XmlIntEnumsInputOutputBuilder> {
  factory XmlIntEnumsInputOutput({
    _i3.IntegerEnum? intEnum1,
    _i3.IntegerEnum? intEnum2,
    _i3.IntegerEnum? intEnum3,
    List<_i3.IntegerEnum>? intEnumList,
    Set<_i3.IntegerEnum>? intEnumSet,
    Map<String, _i3.IntegerEnum>? intEnumMap,
  }) {
    return _$XmlIntEnumsInputOutput._(
      intEnum1: intEnum1,
      intEnum2: intEnum2,
      intEnum3: intEnum3,
      intEnumList: intEnumList == null ? null : _i4.BuiltList(intEnumList),
      intEnumSet: intEnumSet == null ? null : _i4.BuiltSet(intEnumSet),
      intEnumMap: intEnumMap == null ? null : _i4.BuiltMap(intEnumMap),
    );
  }

  factory XmlIntEnumsInputOutput.build(
          [void Function(XmlIntEnumsInputOutputBuilder) updates]) =
      _$XmlIntEnumsInputOutput;

  const XmlIntEnumsInputOutput._();

  factory XmlIntEnumsInputOutput.fromRequest(
    XmlIntEnumsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlIntEnumsInputOutput] from a [payload] and [response].
  factory XmlIntEnumsInputOutput.fromResponse(
    XmlIntEnumsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<XmlIntEnumsInputOutput>> serializers =
      [XmlIntEnumsInputOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlIntEnumsInputOutputBuilder b) {}
  _i3.IntegerEnum? get intEnum1;
  _i3.IntegerEnum? get intEnum2;
  _i3.IntegerEnum? get intEnum3;
  _i4.BuiltList<_i3.IntegerEnum>? get intEnumList;
  _i4.BuiltSet<_i3.IntegerEnum>? get intEnumSet;
  _i4.BuiltMap<String, _i3.IntegerEnum>? get intEnumMap;
  @override
  XmlIntEnumsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        intEnum1,
        intEnum2,
        intEnum3,
        intEnumList,
        intEnumSet,
        intEnumMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlIntEnumsInputOutput')
      ..add(
        'intEnum1',
        intEnum1,
      )
      ..add(
        'intEnum2',
        intEnum2,
      )
      ..add(
        'intEnum3',
        intEnum3,
      )
      ..add(
        'intEnumList',
        intEnumList,
      )
      ..add(
        'intEnumSet',
        intEnumSet,
      )
      ..add(
        'intEnumMap',
        intEnumMap,
      );
    return helper.toString();
  }
}

class XmlIntEnumsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlIntEnumsInputOutput> {
  const XmlIntEnumsInputOutputRestXmlSerializer()
      : super('XmlIntEnumsInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlIntEnumsInputOutput,
        _$XmlIntEnumsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlIntEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlIntEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'intEnum1':
          result.intEnum1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'intEnum2':
          result.intEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'intEnum3':
          result.intEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'intEnumList':
          result.intEnumList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.IntegerEnum)],
            ),
          ) as _i4.BuiltList<_i3.IntegerEnum>));
        case 'intEnumMap':
          result.intEnumMap
              .replace(const _i1.XmlBuiltMapSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i3.IntegerEnum),
              ],
            ),
          ));
        case 'intEnumSet':
          result.intEnumSet
              .replace((const _i1.XmlBuiltSetSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(_i3.IntegerEnum)],
            ),
          ) as _i4.BuiltSet<_i3.IntegerEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlIntEnumsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('XmlIntEnumsInputOutput')
    ];
    final XmlIntEnumsInputOutput(
      :intEnum1,
      :intEnum2,
      :intEnum3,
      :intEnumList,
      :intEnumMap,
      :intEnumSet
    ) = object;
    if (intEnum1 != null) {
      result$
        ..add(const _i1.XmlElementName('intEnum1'))
        ..add(serializers.serialize(
          intEnum1,
          specifiedType: const FullType.nullable(_i3.IntegerEnum),
        ));
    }
    if (intEnum2 != null) {
      result$
        ..add(const _i1.XmlElementName('intEnum2'))
        ..add(serializers.serialize(
          intEnum2,
          specifiedType: const FullType.nullable(_i3.IntegerEnum),
        ));
    }
    if (intEnum3 != null) {
      result$
        ..add(const _i1.XmlElementName('intEnum3'))
        ..add(serializers.serialize(
          intEnum3,
          specifiedType: const FullType.nullable(_i3.IntegerEnum),
        ));
    }
    if (intEnumList != null) {
      result$
        ..add(const _i1.XmlElementName('intEnumList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          intEnumList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    if (intEnumMap != null) {
      result$
        ..add(const _i1.XmlElementName('intEnumMap'))
        ..add(const _i1.XmlBuiltMapSerializer().serialize(
          serializers,
          intEnumMap,
          specifiedType: const FullType.nullable(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.IntegerEnum),
            ],
          ),
        ));
    }
    if (intEnumSet != null) {
      result$
        ..add(const _i1.XmlElementName('intEnumSet'))
        ..add(const _i1.XmlBuiltSetSerializer().serialize(
          serializers,
          intEnumSet,
          specifiedType: const FullType.nullable(
            _i4.BuiltSet,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    return result$;
  }
}
