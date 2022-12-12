// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    Map<String, _i3.IntegerEnum>? intEnumMap,
    Set<_i3.IntegerEnum>? intEnumSet,
  }) {
    return _$XmlIntEnumsInputOutput._(
      intEnum1: intEnum1,
      intEnum2: intEnum2,
      intEnum3: intEnum3,
      intEnumList: intEnumList == null ? null : _i4.BuiltList(intEnumList),
      intEnumMap: intEnumMap == null ? null : _i4.BuiltMap(intEnumMap),
      intEnumSet: intEnumSet == null ? null : _i4.BuiltSet(intEnumSet),
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

  static const List<_i1.SmithySerializer> serializers = [
    XmlIntEnumsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlIntEnumsInputOutputBuilder b) {}
  _i3.IntegerEnum? get intEnum1;
  _i3.IntegerEnum? get intEnum2;
  _i3.IntegerEnum? get intEnum3;
  _i4.BuiltList<_i3.IntegerEnum>? get intEnumList;
  _i4.BuiltMap<String, _i3.IntegerEnum>? get intEnumMap;
  _i4.BuiltSet<_i3.IntegerEnum>? get intEnumSet;
  @override
  XmlIntEnumsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        intEnum1,
        intEnum2,
        intEnum3,
        intEnumList,
        intEnumMap,
        intEnumSet,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlIntEnumsInputOutput');
    helper.add(
      'intEnum1',
      intEnum1,
    );
    helper.add(
      'intEnum2',
      intEnum2,
    );
    helper.add(
      'intEnum3',
      intEnum3,
    );
    helper.add(
      'intEnumList',
      intEnumList,
    );
    helper.add(
      'intEnumMap',
      intEnumMap,
    );
    helper.add(
      'intEnumSet',
      intEnumSet,
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'intEnum1':
          if (value != null) {
            result.intEnum1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IntegerEnum),
            ) as _i3.IntegerEnum);
          }
          break;
        case 'intEnum2':
          if (value != null) {
            result.intEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IntegerEnum),
            ) as _i3.IntegerEnum);
          }
          break;
        case 'intEnum3':
          if (value != null) {
            result.intEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IntegerEnum),
            ) as _i3.IntegerEnum);
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList
                .replace((const _i1.XmlBuiltListSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.IntegerEnum)],
              ),
            ) as _i4.BuiltList<_i3.IntegerEnum>));
          }
          break;
        case 'intEnumMap':
          if (value != null) {
            result.intEnumMap
                .replace(const _i1.XmlBuiltMapSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.IntegerEnum),
                ],
              ),
            ));
          }
          break;
        case 'intEnumSet':
          if (value != null) {
            result.intEnumSet
                .replace((const _i1.XmlBuiltSetSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltSet,
                [FullType(_i3.IntegerEnum)],
              ),
            ) as _i4.BuiltSet<_i3.IntegerEnum>));
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
    final payload = (object as XmlIntEnumsInputOutput);
    final result = <Object?>[
      const _i1.XmlElementName('XmlIntEnumsInputOutput')
    ];
    if (payload.intEnum1 != null) {
      result
        ..add(const _i1.XmlElementName('intEnum1'))
        ..add(serializers.serialize(
          payload.intEnum1!,
          specifiedType: const FullType.nullable(_i3.IntegerEnum),
        ));
    }
    if (payload.intEnum2 != null) {
      result
        ..add(const _i1.XmlElementName('intEnum2'))
        ..add(serializers.serialize(
          payload.intEnum2!,
          specifiedType: const FullType.nullable(_i3.IntegerEnum),
        ));
    }
    if (payload.intEnum3 != null) {
      result
        ..add(const _i1.XmlElementName('intEnum3'))
        ..add(serializers.serialize(
          payload.intEnum3!,
          specifiedType: const FullType.nullable(_i3.IntegerEnum),
        ));
    }
    if (payload.intEnumList != null) {
      result
        ..add(const _i1.XmlElementName('intEnumList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          payload.intEnumList!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    if (payload.intEnumMap != null) {
      result
        ..add(const _i1.XmlElementName('intEnumMap'))
        ..add(const _i1.XmlBuiltMapSerializer().serialize(
          serializers,
          payload.intEnumMap!,
          specifiedType: const FullType.nullable(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.IntegerEnum),
            ],
          ),
        ));
    }
    if (payload.intEnumSet != null) {
      result
        ..add(const _i1.XmlElementName('intEnumSet'))
        ..add(const _i1.XmlBuiltSetSerializer().serialize(
          serializers,
          payload.intEnumSet!,
          specifiedType: const FullType.nullable(
            _i4.BuiltSet,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    return result;
  }
}
