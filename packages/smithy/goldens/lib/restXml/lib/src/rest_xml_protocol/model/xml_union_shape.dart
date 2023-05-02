// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.xml_union_shape; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_nested_union_struct.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

/// The discrete values of [XmlUnionShape].
enum XmlUnionShapeType<T extends XmlUnionShape> {
  /// The type for [XmlUnionShapeStringValue].
  stringValue<XmlUnionShapeStringValue>(r'stringValue'),

  /// The type for [XmlUnionShapeBooleanValue].
  booleanValue<XmlUnionShapeBooleanValue>(r'booleanValue'),

  /// The type for [XmlUnionShapeByteValue].
  byteValue<XmlUnionShapeByteValue>(r'byteValue'),

  /// The type for [XmlUnionShapeShortValue].
  shortValue<XmlUnionShapeShortValue>(r'shortValue'),

  /// The type for [XmlUnionShapeIntegerValue].
  integerValue<XmlUnionShapeIntegerValue>(r'integerValue'),

  /// The type for [XmlUnionShapeLongValue].
  longValue<XmlUnionShapeLongValue>(r'longValue'),

  /// The type for [XmlUnionShapeFloatValue].
  floatValue<XmlUnionShapeFloatValue>(r'floatValue'),

  /// The type for [XmlUnionShapeDoubleValue].
  doubleValue<XmlUnionShapeDoubleValue>(r'doubleValue'),

  /// The type for [XmlUnionShapeUnionValue].
  unionValue<XmlUnionShapeUnionValue>(r'unionValue'),

  /// The type for [XmlUnionShapeStructValue].
  structValue<XmlUnionShapeStructValue>(r'structValue'),

  /// The type for an unknown value.
  sdkUnknown<XmlUnionShapeSdkUnknown>('sdkUnknown');

  /// The discrete values of [XmlUnionShape].
  const XmlUnionShapeType(this.value);

  /// The Smithy value.
  final String value;
}

abstract class XmlUnionShape extends _i1.SmithyUnion<XmlUnionShape> {
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

  const factory XmlUnionShape.structValue(
      _i3.XmlNestedUnionStruct structValue) = XmlUnionShapeStructValue;

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
  XmlUnionShapeType get type;
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
  T? when<T>({
    T Function(String)? stringValue,
    T Function(bool)? booleanValue,
    T Function(int)? byteValue,
    T Function(int)? shortValue,
    T Function(int)? integerValue,
    T Function(_i2.Int64)? longValue,
    T Function(double)? floatValue,
    T Function(double)? doubleValue,
    T Function(XmlUnionShape)? unionValue,
    T Function(_i3.XmlNestedUnionStruct)? structValue,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is XmlUnionShapeStringValue) {
      return stringValue?.call((this as XmlUnionShapeStringValue).stringValue);
    }
    if (this is XmlUnionShapeBooleanValue) {
      return booleanValue
          ?.call((this as XmlUnionShapeBooleanValue).booleanValue);
    }
    if (this is XmlUnionShapeByteValue) {
      return byteValue?.call((this as XmlUnionShapeByteValue).byteValue);
    }
    if (this is XmlUnionShapeShortValue) {
      return shortValue?.call((this as XmlUnionShapeShortValue).shortValue);
    }
    if (this is XmlUnionShapeIntegerValue) {
      return integerValue
          ?.call((this as XmlUnionShapeIntegerValue).integerValue);
    }
    if (this is XmlUnionShapeLongValue) {
      return longValue?.call((this as XmlUnionShapeLongValue).longValue);
    }
    if (this is XmlUnionShapeFloatValue) {
      return floatValue?.call((this as XmlUnionShapeFloatValue).floatValue);
    }
    if (this is XmlUnionShapeDoubleValue) {
      return doubleValue?.call((this as XmlUnionShapeDoubleValue).doubleValue);
    }
    if (this is XmlUnionShapeUnionValue) {
      return unionValue?.call((this as XmlUnionShapeUnionValue).unionValue);
    }
    if (this is XmlUnionShapeStructValue) {
      return structValue?.call((this as XmlUnionShapeStructValue).structValue);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

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

class XmlUnionShapeStringValue extends XmlUnionShape {
  const XmlUnionShapeStringValue(this.stringValue) : super._();

  @override
  final String stringValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.stringValue;
  @override
  String get name => 'stringValue';
}

class XmlUnionShapeBooleanValue extends XmlUnionShape {
  const XmlUnionShapeBooleanValue(this.booleanValue) : super._();

  @override
  final bool booleanValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.booleanValue;
  @override
  String get name => 'booleanValue';
}

class XmlUnionShapeByteValue extends XmlUnionShape {
  const XmlUnionShapeByteValue(this.byteValue) : super._();

  @override
  final int byteValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.byteValue;
  @override
  String get name => 'byteValue';
}

class XmlUnionShapeShortValue extends XmlUnionShape {
  const XmlUnionShapeShortValue(this.shortValue) : super._();

  @override
  final int shortValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.shortValue;
  @override
  String get name => 'shortValue';
}

class XmlUnionShapeIntegerValue extends XmlUnionShape {
  const XmlUnionShapeIntegerValue(this.integerValue) : super._();

  @override
  final int integerValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.integerValue;
  @override
  String get name => 'integerValue';
}

class XmlUnionShapeLongValue extends XmlUnionShape {
  const XmlUnionShapeLongValue(this.longValue) : super._();

  @override
  final _i2.Int64 longValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.longValue;
  @override
  String get name => 'longValue';
}

class XmlUnionShapeFloatValue extends XmlUnionShape {
  const XmlUnionShapeFloatValue(this.floatValue) : super._();

  @override
  final double floatValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.floatValue;
  @override
  String get name => 'floatValue';
}

class XmlUnionShapeDoubleValue extends XmlUnionShape {
  const XmlUnionShapeDoubleValue(this.doubleValue) : super._();

  @override
  final double doubleValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.doubleValue;
  @override
  String get name => 'doubleValue';
}

class XmlUnionShapeUnionValue extends XmlUnionShape {
  const XmlUnionShapeUnionValue(this.unionValue) : super._();

  @override
  final XmlUnionShape unionValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.unionValue;
  @override
  String get name => 'unionValue';
}

class XmlUnionShapeStructValue extends XmlUnionShape {
  const XmlUnionShapeStructValue(this.structValue) : super._();

  @override
  final _i3.XmlNestedUnionStruct structValue;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.structValue;
  @override
  String get name => 'structValue';
}

class XmlUnionShapeSdkUnknown extends XmlUnionShape {
  const XmlUnionShapeSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  XmlUnionShapeType get type => XmlUnionShapeType.sdkUnknown;
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
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    (object as XmlUnionShape);
    return [
      object.name,
      object.when<Object?>(
        stringValue: (String stringValue) => serializers.serialize(
          stringValue,
          specifiedType: const FullType(String),
        ),
        booleanValue: (bool booleanValue) => serializers.serialize(
          booleanValue,
          specifiedType: const FullType(bool),
        ),
        byteValue: (int byteValue) => serializers.serialize(
          byteValue,
          specifiedType: const FullType(int),
        ),
        shortValue: (int shortValue) => serializers.serialize(
          shortValue,
          specifiedType: const FullType(int),
        ),
        integerValue: (int integerValue) => serializers.serialize(
          integerValue,
          specifiedType: const FullType(int),
        ),
        longValue: (_i2.Int64 longValue) => serializers.serialize(
          longValue,
          specifiedType: const FullType(_i2.Int64),
        ),
        floatValue: (double floatValue) => serializers.serialize(
          floatValue,
          specifiedType: const FullType(double),
        ),
        doubleValue: (double doubleValue) => serializers.serialize(
          doubleValue,
          specifiedType: const FullType(double),
        ),
        unionValue: (XmlUnionShape unionValue) => serializers.serialize(
          unionValue,
          specifiedType: const FullType(XmlUnionShape),
        ),
        structValue: (_i3.XmlNestedUnionStruct structValue) =>
            serializers.serialize(
          structValue,
          specifiedType: const FullType(_i3.XmlNestedUnionStruct),
        ),
        sdkUnknown: (
          String _,
          Object sdkUnknown,
        ) =>
            sdkUnknown,
      )!,
    ];
  }
}
