// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.xml_union_shape; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_nested_union_struct.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

sealed class XmlUnionShape extends _i1.SmithyUnion<XmlUnionShape> {
  const XmlUnionShape._();

  const factory XmlUnionShape.stringValue(String stringValue) =
      XmlUnionShapeStringValue;

  const factory XmlUnionShape.booleanValue(bool booleanValue) =
      XmlUnionShapeBooleanValue;

  const factory XmlUnionShape.byteValue(int byteValue) = XmlUnionShapeByteValue;

  const factory XmlUnionShape.shortValue(int shortValue) =
      XmlUnionShapeShortValue;

  const factory XmlUnionShape.integerValue(int integerValue) =
      XmlUnionShapeIntegerValue;

  const factory XmlUnionShape.longValue(_i2.Int64 longValue) =
      XmlUnionShapeLongValue;

  const factory XmlUnionShape.floatValue(double floatValue) =
      XmlUnionShapeFloatValue;

  const factory XmlUnionShape.doubleValue(double doubleValue) =
      XmlUnionShapeDoubleValue;

  const factory XmlUnionShape.unionValue(XmlUnionShape unionValue) =
      XmlUnionShapeUnionValue;

  factory XmlUnionShape.structValue({
    String? stringValue,
    bool? booleanValue,
    int? byteValue,
    int? shortValue,
    int? integerValue,
    _i2.Int64? longValue,
    double? floatValue,
    double? doubleValue,
  }) =>
      XmlUnionShapeStructValue(_i3.XmlNestedUnionStruct(
        stringValue: stringValue,
        booleanValue: booleanValue,
        byteValue: byteValue,
        shortValue: shortValue,
        integerValue: integerValue,
        longValue: longValue,
        floatValue: floatValue,
        doubleValue: doubleValue,
      ));

  const factory XmlUnionShape.sdkUnknown(
    String name,
    Object value,
  ) = XmlUnionShapeSdkUnknown;

  static const List<_i1.SmithySerializer<XmlUnionShape>> serializers = [
    XmlUnionShapeRestXmlSerializer()
  ];

  String? get stringValue => null;
  bool? get booleanValue => null;
  int? get byteValue => null;
  int? get shortValue => null;
  int? get integerValue => null;
  _i2.Int64? get longValue => null;
  double? get floatValue => null;
  double? get doubleValue => null;
  XmlUnionShape? get unionValue => null;
  _i3.XmlNestedUnionStruct? get structValue => null;
  @override
  Object get value => (stringValue ??
      booleanValue ??
      byteValue ??
      shortValue ??
      integerValue ??
      longValue ??
      floatValue ??
      doubleValue ??
      unionValue ??
      structValue)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'XmlUnionShape');
    if (stringValue != null) {
      helper.add(
        r'stringValue',
        stringValue,
      );
    }
    if (booleanValue != null) {
      helper.add(
        r'booleanValue',
        booleanValue,
      );
    }
    if (byteValue != null) {
      helper.add(
        r'byteValue',
        byteValue,
      );
    }
    if (shortValue != null) {
      helper.add(
        r'shortValue',
        shortValue,
      );
    }
    if (integerValue != null) {
      helper.add(
        r'integerValue',
        integerValue,
      );
    }
    if (longValue != null) {
      helper.add(
        r'longValue',
        longValue,
      );
    }
    if (floatValue != null) {
      helper.add(
        r'floatValue',
        floatValue,
      );
    }
    if (doubleValue != null) {
      helper.add(
        r'doubleValue',
        doubleValue,
      );
    }
    if (unionValue != null) {
      helper.add(
        r'unionValue',
        unionValue,
      );
    }
    if (structValue != null) {
      helper.add(
        r'structValue',
        structValue,
      );
    }
    return helper.toString();
  }
}

final class XmlUnionShapeStringValue extends XmlUnionShape {
  const XmlUnionShapeStringValue(this.stringValue) : super._();

  @override
  final String stringValue;

  @override
  String get name => 'stringValue';
}

final class XmlUnionShapeBooleanValue extends XmlUnionShape {
  const XmlUnionShapeBooleanValue(this.booleanValue) : super._();

  @override
  final bool booleanValue;

  @override
  String get name => 'booleanValue';
}

final class XmlUnionShapeByteValue extends XmlUnionShape {
  const XmlUnionShapeByteValue(this.byteValue) : super._();

  @override
  final int byteValue;

  @override
  String get name => 'byteValue';
}

final class XmlUnionShapeShortValue extends XmlUnionShape {
  const XmlUnionShapeShortValue(this.shortValue) : super._();

  @override
  final int shortValue;

  @override
  String get name => 'shortValue';
}

final class XmlUnionShapeIntegerValue extends XmlUnionShape {
  const XmlUnionShapeIntegerValue(this.integerValue) : super._();

  @override
  final int integerValue;

  @override
  String get name => 'integerValue';
}

final class XmlUnionShapeLongValue extends XmlUnionShape {
  const XmlUnionShapeLongValue(this.longValue) : super._();

  @override
  final _i2.Int64 longValue;

  @override
  String get name => 'longValue';
}

final class XmlUnionShapeFloatValue extends XmlUnionShape {
  const XmlUnionShapeFloatValue(this.floatValue) : super._();

  @override
  final double floatValue;

  @override
  String get name => 'floatValue';
}

final class XmlUnionShapeDoubleValue extends XmlUnionShape {
  const XmlUnionShapeDoubleValue(this.doubleValue) : super._();

  @override
  final double doubleValue;

  @override
  String get name => 'doubleValue';
}

final class XmlUnionShapeUnionValue extends XmlUnionShape {
  const XmlUnionShapeUnionValue(this.unionValue) : super._();

  @override
  final XmlUnionShape unionValue;

  @override
  String get name => 'unionValue';
}

final class XmlUnionShapeStructValue extends XmlUnionShape {
  const XmlUnionShapeStructValue(this.structValue) : super._();

  @override
  final _i3.XmlNestedUnionStruct structValue;

  @override
  String get name => 'structValue';
}

final class XmlUnionShapeSdkUnknown extends XmlUnionShape {
  const XmlUnionShapeSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class XmlUnionShapeRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlUnionShape> {
  const XmlUnionShapeRestXmlSerializer() : super('XmlUnionShape');

  @override
  Iterable<Type> get types => const [
        XmlUnionShape,
        XmlUnionShapeStringValue,
        XmlUnionShapeBooleanValue,
        XmlUnionShapeByteValue,
        XmlUnionShapeShortValue,
        XmlUnionShapeIntegerValue,
        XmlUnionShapeLongValue,
        XmlUnionShapeFloatValue,
        XmlUnionShapeDoubleValue,
        XmlUnionShapeUnionValue,
        XmlUnionShapeStructValue,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlUnionShape deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'stringValue':
        return XmlUnionShapeStringValue((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'booleanValue':
        return XmlUnionShapeBooleanValue((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
      case 'byteValue':
        return XmlUnionShapeByteValue((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
      case 'shortValue':
        return XmlUnionShapeShortValue((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
      case 'integerValue':
        return XmlUnionShapeIntegerValue((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
      case 'longValue':
        return XmlUnionShapeLongValue((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Int64),
        ) as _i2.Int64));
      case 'floatValue':
        return XmlUnionShapeFloatValue((serializers.deserialize(
          value,
          specifiedType: const FullType(double),
        ) as double));
      case 'doubleValue':
        return XmlUnionShapeDoubleValue((serializers.deserialize(
          value,
          specifiedType: const FullType(double),
        ) as double));
      case 'unionValue':
        return XmlUnionShapeUnionValue((serializers.deserialize(
          value,
          specifiedType: const FullType(XmlUnionShape),
        ) as XmlUnionShape));
      case 'structValue':
        return XmlUnionShapeStructValue((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.XmlNestedUnionStruct),
        ) as _i3.XmlNestedUnionStruct));
    }
    return XmlUnionShape.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlUnionShape object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        XmlUnionShapeStringValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        XmlUnionShapeBooleanValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(bool),
          ),
        XmlUnionShapeByteValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(int),
          ),
        XmlUnionShapeShortValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(int),
          ),
        XmlUnionShapeIntegerValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(int),
          ),
        XmlUnionShapeLongValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ),
        XmlUnionShapeFloatValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(double),
          ),
        XmlUnionShapeDoubleValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(double),
          ),
        XmlUnionShapeUnionValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(XmlUnionShape),
          ),
        XmlUnionShapeStructValue(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i3.XmlNestedUnionStruct),
          ),
        XmlUnionShapeSdkUnknown(:final value) => value,
      },
    ];
  }
}
