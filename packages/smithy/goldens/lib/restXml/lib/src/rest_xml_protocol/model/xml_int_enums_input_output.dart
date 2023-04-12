// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.xml_int_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'xml_int_enums_input_output.g.dart';

abstract class XmlIntEnumsInputOutput
    with
        _i1.HttpInput<XmlIntEnumsInputOutput>,
        _i2.AWSEquatable<XmlIntEnumsInputOutput>
    implements Built<XmlIntEnumsInputOutput, XmlIntEnumsInputOutputBuilder> {
  factory XmlIntEnumsInputOutput({
    int? intEnum1,
    int? intEnum2,
    int? intEnum3,
    List<int>? intEnumList,
    Map<String, int>? intEnumMap,
    Set<int>? intEnumSet,
  }) {
    return _$XmlIntEnumsInputOutput._(
      intEnum1: intEnum1,
      intEnum2: intEnum2,
      intEnum3: intEnum3,
      intEnumList: intEnumList == null ? null : _i3.BuiltList(intEnumList),
      intEnumMap: intEnumMap == null ? null : _i3.BuiltMap(intEnumMap),
      intEnumSet: intEnumSet == null ? null : _i3.BuiltSet(intEnumSet),
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
  int? get intEnum1;
  int? get intEnum2;
  int? get intEnum3;
  _i3.BuiltList<int>? get intEnumList;
  _i3.BuiltMap<String, int>? get intEnumMap;
  _i3.BuiltSet<int>? get intEnumSet;
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
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'intEnum2':
          if (value != null) {
            result.intEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'intEnum3':
          if (value != null) {
            result.intEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList
                .replace((const _i1.XmlBuiltListSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(int)],
              ),
            ) as _i3.BuiltList<int>));
          }
          break;
        case 'intEnumMap':
          if (value != null) {
            result.intEnumMap
                .replace(const _i1.XmlBuiltMapSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(int),
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
                _i3.BuiltSet,
                [FullType(int)],
              ),
            ) as _i3.BuiltSet<int>));
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
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.intEnum2 != null) {
      result
        ..add(const _i1.XmlElementName('intEnum2'))
        ..add(serializers.serialize(
          payload.intEnum2!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.intEnum3 != null) {
      result
        ..add(const _i1.XmlElementName('intEnum3'))
        ..add(serializers.serialize(
          payload.intEnum3!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.intEnumList != null) {
      result
        ..add(const _i1.XmlElementName('intEnumList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          payload.intEnumList!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(int)],
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
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(int),
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
            _i3.BuiltSet,
            [FullType(int)],
          ),
        ));
    }
    return result;
  }
}
