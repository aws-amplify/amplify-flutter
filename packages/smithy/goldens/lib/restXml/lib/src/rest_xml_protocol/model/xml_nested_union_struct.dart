// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.xml_nested_union_struct; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'xml_nested_union_struct.g.dart';

abstract class XmlNestedUnionStruct
    with _i1.AWSEquatable<XmlNestedUnionStruct>
    implements Built<XmlNestedUnionStruct, XmlNestedUnionStructBuilder> {
  factory XmlNestedUnionStruct({
    bool? booleanValue,
    int? byteValue,
    double? doubleValue,
    double? floatValue,
    int? integerValue,
    _i2.Int64? longValue,
    int? shortValue,
    String? stringValue,
  }) {
    return _$XmlNestedUnionStruct._(
      booleanValue: booleanValue,
      byteValue: byteValue,
      doubleValue: doubleValue,
      floatValue: floatValue,
      integerValue: integerValue,
      longValue: longValue,
      shortValue: shortValue,
      stringValue: stringValue,
    );
  }

  factory XmlNestedUnionStruct.build(
          [void Function(XmlNestedUnionStructBuilder) updates]) =
      _$XmlNestedUnionStruct;

  const XmlNestedUnionStruct._();

  static const List<_i3.SmithySerializer> serializers = [
    XmlNestedUnionStructRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlNestedUnionStructBuilder b) {}
  bool? get booleanValue;
  int? get byteValue;
  double? get doubleValue;
  double? get floatValue;
  int? get integerValue;
  _i2.Int64? get longValue;
  int? get shortValue;
  String? get stringValue;
  @override
  List<Object?> get props => [
        booleanValue,
        byteValue,
        doubleValue,
        floatValue,
        integerValue,
        longValue,
        shortValue,
        stringValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlNestedUnionStruct');
    helper.add(
      'booleanValue',
      booleanValue,
    );
    helper.add(
      'byteValue',
      byteValue,
    );
    helper.add(
      'doubleValue',
      doubleValue,
    );
    helper.add(
      'floatValue',
      floatValue,
    );
    helper.add(
      'integerValue',
      integerValue,
    );
    helper.add(
      'longValue',
      longValue,
    );
    helper.add(
      'shortValue',
      shortValue,
    );
    helper.add(
      'stringValue',
      stringValue,
    );
    return helper.toString();
  }
}

class XmlNestedUnionStructRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlNestedUnionStruct> {
  const XmlNestedUnionStructRestXmlSerializer() : super('XmlNestedUnionStruct');

  @override
  Iterable<Type> get types => const [
        XmlNestedUnionStruct,
        _$XmlNestedUnionStruct,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlNestedUnionStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlNestedUnionStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'booleanValue':
          if (value != null) {
            result.booleanValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'byteValue':
          if (value != null) {
            result.byteValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'doubleValue':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'floatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'integerValue':
          if (value != null) {
            result.integerValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'longValue':
          if (value != null) {
            result.longValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'shortValue':
          if (value != null) {
            result.shortValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'stringValue':
          if (value != null) {
            result.stringValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as XmlNestedUnionStruct);
    final result = <Object?>[const _i3.XmlElementName('XmlNestedUnionStruct')];
    if (payload.booleanValue != null) {
      result
        ..add(const _i3.XmlElementName('booleanValue'))
        ..add(serializers.serialize(
          payload.booleanValue!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.byteValue != null) {
      result
        ..add(const _i3.XmlElementName('byteValue'))
        ..add(serializers.serialize(
          payload.byteValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.doubleValue != null) {
      result
        ..add(const _i3.XmlElementName('doubleValue'))
        ..add(serializers.serialize(
          payload.doubleValue!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.floatValue != null) {
      result
        ..add(const _i3.XmlElementName('floatValue'))
        ..add(serializers.serialize(
          payload.floatValue!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.integerValue != null) {
      result
        ..add(const _i3.XmlElementName('integerValue'))
        ..add(serializers.serialize(
          payload.integerValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.longValue != null) {
      result
        ..add(const _i3.XmlElementName('longValue'))
        ..add(serializers.serialize(
          payload.longValue!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (payload.shortValue != null) {
      result
        ..add(const _i3.XmlElementName('shortValue'))
        ..add(serializers.serialize(
          payload.shortValue!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.stringValue != null) {
      result
        ..add(const _i3.XmlElementName('stringValue'))
        ..add(serializers.serialize(
          payload.stringValue!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
