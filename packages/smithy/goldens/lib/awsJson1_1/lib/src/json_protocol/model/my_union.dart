// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_1_v1.json_protocol.model.my_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_json1_1_v1/src/json_protocol/model/foo_enum.dart' as _i3;
import 'package:aws_json1_1_v1/src/json_protocol/model/greeting_struct.dart'
    as _i4;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class MyUnion extends _i1.SmithyUnion<MyUnion> {
  const MyUnion._();

  const factory MyUnion.stringValue(String stringValue) = MyUnionStringValue;

  const factory MyUnion.booleanValue(bool booleanValue) = MyUnionBooleanValue;

  const factory MyUnion.numberValue(int numberValue) = MyUnionNumberValue;

  const factory MyUnion.blobValue(_i2.Uint8List blobValue) = MyUnionBlobValue;

  const factory MyUnion.timestampValue(DateTime timestampValue) =
      MyUnionTimestampValue;

  const factory MyUnion.enumValue(_i3.FooEnum enumValue) = MyUnionEnumValue;

  factory MyUnion.listValue(List<String> listValue) = MyUnionListValue;

  factory MyUnion.mapValue(Map<String, String> mapValue) = MyUnionMapValue;

  const factory MyUnion.structureValue(_i4.GreetingStruct structureValue) =
      MyUnionStructureValue;

  const factory MyUnion.sdkUnknown(
    String name,
    Object value,
  ) = MyUnionSdkUnknown;

  static const List<_i1.SmithySerializer<MyUnion>> serializers = [
    MyUnionAwsJson11Serializer()
  ];

  String? get stringValue => null;
  bool? get booleanValue => null;
  int? get numberValue => null;
  _i2.Uint8List? get blobValue => null;
  DateTime? get timestampValue => null;
  _i3.FooEnum? get enumValue => null;
  _i5.BuiltList<String>? get listValue => null;
  _i5.BuiltMap<String, String>? get mapValue => null;
  _i4.GreetingStruct? get structureValue => null;
  @override
  Object get value => (stringValue ??
      booleanValue ??
      numberValue ??
      blobValue ??
      timestampValue ??
      enumValue ??
      listValue ??
      mapValue ??
      structureValue)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'MyUnion');
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
    if (numberValue != null) {
      helper.add(
        r'numberValue',
        numberValue,
      );
    }
    if (blobValue != null) {
      helper.add(
        r'blobValue',
        blobValue,
      );
    }
    if (timestampValue != null) {
      helper.add(
        r'timestampValue',
        timestampValue,
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
    if (structureValue != null) {
      helper.add(
        r'structureValue',
        structureValue,
      );
    }
    return helper.toString();
  }
}

final class MyUnionStringValue extends MyUnion {
  const MyUnionStringValue(this.stringValue) : super._();

  @override
  final String stringValue;

  @override
  String get name => 'stringValue';
}

final class MyUnionBooleanValue extends MyUnion {
  const MyUnionBooleanValue(this.booleanValue) : super._();

  @override
  final bool booleanValue;

  @override
  String get name => 'booleanValue';
}

final class MyUnionNumberValue extends MyUnion {
  const MyUnionNumberValue(this.numberValue) : super._();

  @override
  final int numberValue;

  @override
  String get name => 'numberValue';
}

final class MyUnionBlobValue extends MyUnion {
  const MyUnionBlobValue(this.blobValue) : super._();

  @override
  final _i2.Uint8List blobValue;

  @override
  String get name => 'blobValue';
}

final class MyUnionTimestampValue extends MyUnion {
  const MyUnionTimestampValue(this.timestampValue) : super._();

  @override
  final DateTime timestampValue;

  @override
  String get name => 'timestampValue';
}

final class MyUnionEnumValue extends MyUnion {
  const MyUnionEnumValue(this.enumValue) : super._();

  @override
  final _i3.FooEnum enumValue;

  @override
  String get name => 'enumValue';
}

final class MyUnionListValue extends MyUnion {
  MyUnionListValue(List<String> listValue) : this._(_i5.BuiltList(listValue));

  const MyUnionListValue._(this.listValue) : super._();

  @override
  final _i5.BuiltList<String> listValue;

  @override
  String get name => 'listValue';
}

final class MyUnionMapValue extends MyUnion {
  MyUnionMapValue(Map<String, String> mapValue)
      : this._(_i5.BuiltMap(mapValue));

  const MyUnionMapValue._(this.mapValue) : super._();

  @override
  final _i5.BuiltMap<String, String> mapValue;

  @override
  String get name => 'mapValue';
}

final class MyUnionStructureValue extends MyUnion {
  const MyUnionStructureValue(this.structureValue) : super._();

  @override
  final _i4.GreetingStruct structureValue;

  @override
  String get name => 'structureValue';
}

final class MyUnionSdkUnknown extends MyUnion {
  const MyUnionSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class MyUnionAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<MyUnion> {
  const MyUnionAwsJson11Serializer() : super('MyUnion');

  @override
  Iterable<Type> get types => const [
        MyUnion,
        MyUnionStringValue,
        MyUnionBooleanValue,
        MyUnionNumberValue,
        MyUnionBlobValue,
        MyUnionTimestampValue,
        MyUnionEnumValue,
        MyUnionListValue,
        MyUnionMapValue,
        MyUnionStructureValue,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MyUnion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'stringValue':
        return MyUnionStringValue((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'booleanValue':
        return MyUnionBooleanValue((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
      case 'numberValue':
        return MyUnionNumberValue((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
      case 'blobValue':
        return MyUnionBlobValue((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Uint8List),
        ) as _i2.Uint8List));
      case 'timestampValue':
        return MyUnionTimestampValue((serializers.deserialize(
          value,
          specifiedType: const FullType(DateTime),
        ) as DateTime));
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
      case 'structureValue':
        return MyUnionStructureValue((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.GreetingStruct),
        ) as _i4.GreetingStruct));
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
      switch (object) {
        MyUnionStringValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        MyUnionBooleanValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(bool),
        ),
        MyUnionNumberValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(int),
        ),
        MyUnionBlobValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(_i2.Uint8List),
        ),
        MyUnionTimestampValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(DateTime),
        ),
        MyUnionEnumValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(_i3.FooEnum),
        ),
        MyUnionListValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ),
        MyUnionMapValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ),
        MyUnionStructureValue(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(_i4.GreetingStruct),
        ),
        MyUnionSdkUnknown(:final value) => value,
      },
    ];
  }
}
