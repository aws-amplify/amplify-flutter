// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.xml_nested_union_struct; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    String? stringValue,
    bool? booleanValue,
    int? byteValue,
    int? shortValue,
    int? integerValue,
    _i2.Int64? longValue,
    double? floatValue,
    double? doubleValue,
  }) {
    return _$XmlNestedUnionStruct._(
      stringValue: stringValue,
      booleanValue: booleanValue,
      byteValue: byteValue,
      shortValue: shortValue,
      integerValue: integerValue,
      longValue: longValue,
      floatValue: floatValue,
      doubleValue: doubleValue,
    );
  }

  factory XmlNestedUnionStruct.build(
          [void Function(XmlNestedUnionStructBuilder) updates]) =
      _$XmlNestedUnionStruct;

  const XmlNestedUnionStruct._();

  static const List<_i3.SmithySerializer<XmlNestedUnionStruct>> serializers = [
    XmlNestedUnionStructRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlNestedUnionStructBuilder b) {}
  String? get stringValue;
  bool? get booleanValue;
  int? get byteValue;
  int? get shortValue;
  int? get integerValue;
  _i2.Int64? get longValue;
  double? get floatValue;
  double? get doubleValue;
  @override
  List<Object?> get props => [
        stringValue,
        booleanValue,
        byteValue,
        shortValue,
        integerValue,
        longValue,
        floatValue,
        doubleValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlNestedUnionStruct')
      ..add(
        'stringValue',
        stringValue,
      )
      ..add(
        'booleanValue',
        booleanValue,
      )
      ..add(
        'byteValue',
        byteValue,
      )
      ..add(
        'shortValue',
        shortValue,
      )
      ..add(
        'integerValue',
        integerValue,
      )
      ..add(
        'longValue',
        longValue,
      )
      ..add(
        'floatValue',
        floatValue,
      )
      ..add(
        'doubleValue',
        doubleValue,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'booleanValue':
          result.booleanValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'byteValue':
          result.byteValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'doubleValue':
          result.doubleValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'floatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'integerValue':
          result.integerValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'longValue':
          result.longValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'shortValue':
          result.shortValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'stringValue':
          result.stringValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlNestedUnionStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[const _i3.XmlElementName('XmlNestedUnionStruct')];
    final XmlNestedUnionStruct(
      :booleanValue,
      :byteValue,
      :doubleValue,
      :floatValue,
      :integerValue,
      :longValue,
      :shortValue,
      :stringValue
    ) = object;
    if (booleanValue != null) {
      result$
        ..add(const _i3.XmlElementName('booleanValue'))
        ..add(serializers.serialize(
          booleanValue,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (byteValue != null) {
      result$
        ..add(const _i3.XmlElementName('byteValue'))
        ..add(serializers.serialize(
          byteValue,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (doubleValue != null) {
      result$
        ..add(const _i3.XmlElementName('doubleValue'))
        ..add(serializers.serialize(
          doubleValue,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (floatValue != null) {
      result$
        ..add(const _i3.XmlElementName('floatValue'))
        ..add(serializers.serialize(
          floatValue,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (integerValue != null) {
      result$
        ..add(const _i3.XmlElementName('integerValue'))
        ..add(serializers.serialize(
          integerValue,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (longValue != null) {
      result$
        ..add(const _i3.XmlElementName('longValue'))
        ..add(serializers.serialize(
          longValue,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (shortValue != null) {
      result$
        ..add(const _i3.XmlElementName('shortValue'))
        ..add(serializers.serialize(
          shortValue,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (stringValue != null) {
      result$
        ..add(const _i3.XmlElementName('stringValue'))
        ..add(serializers.serialize(
          stringValue,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
