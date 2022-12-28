// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_0_v1.json_rpc_10.model.my_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_json1_0_v1/src/json_rpc_10/model/foo_enum.dart' as _i3;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_struct.dart'
    as _i4;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The discrete values of [MyUnion].
enum MyUnionType<T extends MyUnion> {
  /// The type for [MyUnionBlobValue].
  blobValue<MyUnionBlobValue>(r'blobValue'),

  /// The type for [MyUnionBooleanValue].
  booleanValue<MyUnionBooleanValue>(r'booleanValue'),

  /// The type for [MyUnionEnumValue].
  enumValue<MyUnionEnumValue>(r'enumValue'),

  /// The type for [MyUnionListValue].
  listValue<MyUnionListValue>(r'listValue'),

  /// The type for [MyUnionMapValue].
  mapValue<MyUnionMapValue>(r'mapValue'),

  /// The type for [MyUnionNumberValue].
  numberValue<MyUnionNumberValue>(r'numberValue'),

  /// The type for [MyUnionStringValue].
  stringValue<MyUnionStringValue>(r'stringValue'),

  /// The type for [MyUnionStructureValue].
  structureValue<MyUnionStructureValue>(r'structureValue'),

  /// The type for [MyUnionTimestampValue].
  timestampValue<MyUnionTimestampValue>(r'timestampValue'),

  /// The type for an unknown value.
  sdkUnknown<MyUnionSdkUnknown>('sdkUnknown');

  /// The discrete values of [MyUnion].
  const MyUnionType(this.value);

  /// The Smithy value.
  final String value;
}

/// A union with a representative set of types for members.
abstract class MyUnion extends _i1.SmithyUnion<MyUnion> {
  const MyUnion._();

  const factory MyUnion.blobValue(_i2.Uint8List blobValue) = MyUnionBlobValue;

  const factory MyUnion.booleanValue(bool booleanValue) = MyUnionBooleanValue;

  const factory MyUnion.enumValue(_i3.FooEnum enumValue) = MyUnionEnumValue;

  factory MyUnion.listValue(List<String> listValue) = MyUnionListValue;

  factory MyUnion.mapValue(Map<String, String> mapValue) = MyUnionMapValue;

  const factory MyUnion.numberValue(int numberValue) = MyUnionNumberValue;

  const factory MyUnion.stringValue(String stringValue) = MyUnionStringValue;

  const factory MyUnion.structureValue(_i4.GreetingStruct structureValue) =
      MyUnionStructureValue;

  const factory MyUnion.timestampValue(DateTime timestampValue) =
      MyUnionTimestampValue;

  const factory MyUnion.sdkUnknown(
    String name,
    Object value,
  ) = MyUnionSdkUnknown;

  static const List<_i1.SmithySerializer<MyUnion>> serializers = [
    MyUnionAwsJson10Serializer()
  ];

  _i2.Uint8List? get blobValue => null;
  bool? get booleanValue => null;
  _i3.FooEnum? get enumValue => null;
  _i5.BuiltList<String>? get listValue => null;
  _i5.BuiltMap<String, String>? get mapValue => null;
  int? get numberValue => null;
  String? get stringValue => null;
  _i4.GreetingStruct? get structureValue => null;
  DateTime? get timestampValue => null;
  MyUnionType get type;
  @override
  Object get value => (blobValue ??
      booleanValue ??
      enumValue ??
      listValue ??
      mapValue ??
      numberValue ??
      stringValue ??
      structureValue ??
      timestampValue)!;
  @override
  T? when<T>({
    T Function(_i2.Uint8List)? blobValue,
    T Function(bool)? booleanValue,
    T Function(_i3.FooEnum)? enumValue,
    T Function(_i5.BuiltList<String>)? listValue,
    T Function(_i5.BuiltMap<String, String>)? mapValue,
    T Function(int)? numberValue,
    T Function(String)? stringValue,
    T Function(_i4.GreetingStruct)? structureValue,
    T Function(DateTime)? timestampValue,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is MyUnionBlobValue) {
      return blobValue?.call((this as MyUnionBlobValue).blobValue);
    }
    if (this is MyUnionBooleanValue) {
      return booleanValue?.call((this as MyUnionBooleanValue).booleanValue);
    }
    if (this is MyUnionEnumValue) {
      return enumValue?.call((this as MyUnionEnumValue).enumValue);
    }
    if (this is MyUnionListValue) {
      return listValue?.call((this as MyUnionListValue).listValue);
    }
    if (this is MyUnionMapValue) {
      return mapValue?.call((this as MyUnionMapValue).mapValue);
    }
    if (this is MyUnionNumberValue) {
      return numberValue?.call((this as MyUnionNumberValue).numberValue);
    }
    if (this is MyUnionStringValue) {
      return stringValue?.call((this as MyUnionStringValue).stringValue);
    }
    if (this is MyUnionStructureValue) {
      return structureValue
          ?.call((this as MyUnionStructureValue).structureValue);
    }
    if (this is MyUnionTimestampValue) {
      return timestampValue
          ?.call((this as MyUnionTimestampValue).timestampValue);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'MyUnion');
    if (blobValue != null) {
      helper.add(
        r'blobValue',
        blobValue,
      );
    }
    if (booleanValue != null) {
      helper.add(
        r'booleanValue',
        booleanValue,
      );
    }
    if (enumValue != null) {
      helper.add(
        r'enumValue',
        enumValue,
      );
    }
    if (listValue != null) {
      helper.add(
        r'listValue',
        listValue,
      );
    }
    if (mapValue != null) {
      helper.add(
        r'mapValue',
        mapValue,
      );
    }
    if (numberValue != null) {
      helper.add(
        r'numberValue',
        numberValue,
      );
    }
    if (stringValue != null) {
      helper.add(
        r'stringValue',
        stringValue,
      );
    }
    if (structureValue != null) {
      helper.add(
        r'structureValue',
        structureValue,
      );
    }
    if (timestampValue != null) {
      helper.add(
        r'timestampValue',
        timestampValue,
      );
    }
    return helper.toString();
  }
}

class MyUnionBlobValue extends MyUnion {
  const MyUnionBlobValue(this.blobValue) : super._();

  @override
  final _i2.Uint8List blobValue;

  @override
  MyUnionType get type => MyUnionType.blobValue;
  @override
  String get name => 'blobValue';
}

class MyUnionBooleanValue extends MyUnion {
  const MyUnionBooleanValue(this.booleanValue) : super._();

  @override
  final bool booleanValue;

  @override
  MyUnionType get type => MyUnionType.booleanValue;
  @override
  String get name => 'booleanValue';
}

class MyUnionEnumValue extends MyUnion {
  const MyUnionEnumValue(this.enumValue) : super._();

  @override
  final _i3.FooEnum enumValue;

  @override
  MyUnionType get type => MyUnionType.enumValue;
  @override
  String get name => 'enumValue';
}

class MyUnionListValue extends MyUnion {
  MyUnionListValue(List<String> listValue) : this._(_i5.BuiltList(listValue));

  const MyUnionListValue._(this.listValue) : super._();

  @override
  final _i5.BuiltList<String> listValue;

  @override
  MyUnionType get type => MyUnionType.listValue;
  @override
  String get name => 'listValue';
}

class MyUnionMapValue extends MyUnion {
  MyUnionMapValue(Map<String, String> mapValue)
      : this._(_i5.BuiltMap(mapValue));

  const MyUnionMapValue._(this.mapValue) : super._();

  @override
  final _i5.BuiltMap<String, String> mapValue;

  @override
  MyUnionType get type => MyUnionType.mapValue;
  @override
  String get name => 'mapValue';
}

class MyUnionNumberValue extends MyUnion {
  const MyUnionNumberValue(this.numberValue) : super._();

  @override
  final int numberValue;

  @override
  MyUnionType get type => MyUnionType.numberValue;
  @override
  String get name => 'numberValue';
}

class MyUnionStringValue extends MyUnion {
  const MyUnionStringValue(this.stringValue) : super._();

  @override
  final String stringValue;

  @override
  MyUnionType get type => MyUnionType.stringValue;
  @override
  String get name => 'stringValue';
}

class MyUnionStructureValue extends MyUnion {
  const MyUnionStructureValue(this.structureValue) : super._();

  @override
  final _i4.GreetingStruct structureValue;

  @override
  MyUnionType get type => MyUnionType.structureValue;
  @override
  String get name => 'structureValue';
}

class MyUnionTimestampValue extends MyUnion {
  const MyUnionTimestampValue(this.timestampValue) : super._();

  @override
  final DateTime timestampValue;

  @override
  MyUnionType get type => MyUnionType.timestampValue;
  @override
  String get name => 'timestampValue';
}

class MyUnionSdkUnknown extends MyUnion {
  const MyUnionSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  MyUnionType get type => MyUnionType.sdkUnknown;
}

class MyUnionAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<MyUnion> {
  const MyUnionAwsJson10Serializer() : super('MyUnion');

  @override
  Iterable<Type> get types => const [
        MyUnion,
        MyUnionBlobValue,
        MyUnionBooleanValue,
        MyUnionEnumValue,
        MyUnionListValue,
        MyUnionMapValue,
        MyUnionNumberValue,
        MyUnionStringValue,
        MyUnionStructureValue,
        MyUnionTimestampValue,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  MyUnion deserialize(
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
      case 'blobValue':
        return MyUnionBlobValue((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Uint8List),
        ) as _i2.Uint8List));
      case 'booleanValue':
        return MyUnionBooleanValue((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
      case 'enumValue':
        return MyUnionEnumValue((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.FooEnum),
        ) as _i3.FooEnum));
      case 'listValue':
        return MyUnionListValue._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ) as _i5.BuiltList<String>));
      case 'mapValue':
        return MyUnionMapValue._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ) as _i5.BuiltMap<String, String>));
      case 'numberValue':
        return MyUnionNumberValue((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
      case 'stringValue':
        return MyUnionStringValue((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'structureValue':
        return MyUnionStructureValue((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.GreetingStruct),
        ) as _i4.GreetingStruct));
      case 'timestampValue':
        return MyUnionTimestampValue((serializers.deserialize(
          value,
          specifiedType: const FullType(DateTime),
        ) as DateTime));
    }
    return MyUnion.sdkUnknown(
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
    (object as MyUnion);
    return [
      object.name,
      object.when<Object?>(
        blobValue: (_i2.Uint8List blobValue) => serializers.serialize(
          blobValue,
          specifiedType: const FullType(_i2.Uint8List),
        ),
        booleanValue: (bool booleanValue) => serializers.serialize(
          booleanValue,
          specifiedType: const FullType(bool),
        ),
        enumValue: (_i3.FooEnum enumValue) => serializers.serialize(
          enumValue,
          specifiedType: const FullType(_i3.FooEnum),
        ),
        listValue: (_i5.BuiltList<String> listValue) => serializers.serialize(
          listValue,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ),
        mapValue: (_i5.BuiltMap<String, String> mapValue) =>
            serializers.serialize(
          mapValue,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ),
        numberValue: (int numberValue) => serializers.serialize(
          numberValue,
          specifiedType: const FullType(int),
        ),
        stringValue: (String stringValue) => serializers.serialize(
          stringValue,
          specifiedType: const FullType(String),
        ),
        structureValue: (_i4.GreetingStruct structureValue) =>
            serializers.serialize(
          structureValue,
          specifiedType: const FullType(_i4.GreetingStruct),
        ),
        timestampValue: (DateTime timestampValue) => serializers.serialize(
          timestampValue,
          specifiedType: const FullType(DateTime),
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
