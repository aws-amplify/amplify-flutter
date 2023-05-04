// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.attribute_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AttributeValue extends _i1.SmithyUnion<AttributeValue> {
  const AttributeValue._();

  const factory AttributeValue.s(String s) = AttributeValueS;

  const factory AttributeValue.n(String n) = AttributeValueN;

  const factory AttributeValue.b(_i2.Uint8List b) = AttributeValueB;

  factory AttributeValue.ss(List<String> ss) = AttributeValueSs;

  factory AttributeValue.ns(List<String> ns) = AttributeValueNs;

  factory AttributeValue.bs(List<_i2.Uint8List> bs) = AttributeValueBs;

  factory AttributeValue.m(Map<String, AttributeValue> m) = AttributeValueM;

  factory AttributeValue.l(List<AttributeValue> l) = AttributeValueL;

  const factory AttributeValue.null$(bool null$) = AttributeValueNull;

  const factory AttributeValue.bool$(bool bool$) = AttributeValueBool;

  const factory AttributeValue.sdkUnknown(
    String name,
    Object value,
  ) = AttributeValueSdkUnknown;

  static const List<_i1.SmithySerializer<AttributeValue>> serializers = [
    AttributeValueAwsJson10Serializer()
  ];

  /// An attribute of type String. For example:
  ///
  /// `"S": "Hello"`
  String? get s => null;

  /// An attribute of type Number. For example:
  ///
  /// `"N": "123.45"`
  ///
  /// Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.
  String? get n => null;

  /// An attribute of type Binary. For example:
  ///
  /// `"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"`
  _i2.Uint8List? get b => null;

  /// An attribute of type String Set. For example:
  ///
  /// `"SS": \["Giraffe", "Hippo" ,"Zebra"\]`
  _i3.BuiltList<String>? get ss => null;

  /// An attribute of type Number Set. For example:
  ///
  /// `"NS": \["42.2", "-19", "7.5", "3.14"\]`
  ///
  /// Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.
  _i3.BuiltList<String>? get ns => null;

  /// An attribute of type Binary Set. For example:
  ///
  /// `"BS": \["U3Vubnk=", "UmFpbnk=", "U25vd3k="\]`
  _i3.BuiltList<_i2.Uint8List>? get bs => null;

  /// An attribute of type Map. For example:
  ///
  /// `"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}`
  _i3.BuiltMap<String, AttributeValue>? get m => null;

  /// An attribute of type List. For example:
  ///
  /// `"L": \[ {"S": "Cookies"} , {"S": "Coffee"}, {"N": "3.14159"}\]`
  _i3.BuiltList<AttributeValue>? get l => null;

  /// An attribute of type Null. For example:
  ///
  /// `"NULL": true`
  bool? get null$ => null;

  /// An attribute of type Boolean. For example:
  ///
  /// `"BOOL": true`
  bool? get bool$ => null;
  @override
  Object get value =>
      (s ?? n ?? b ?? ss ?? ns ?? bs ?? m ?? l ?? null$ ?? bool$)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AttributeValue');
    if (s != null) {
      helper.add(
        r's',
        s,
      );
    }
    if (n != null) {
      helper.add(
        r'n',
        n,
      );
    }
    if (b != null) {
      helper.add(
        r'b',
        b,
      );
    }
    if (ss != null) {
      helper.add(
        r'ss',
        ss,
      );
    }
    if (ns != null) {
      helper.add(
        r'ns',
        ns,
      );
    }
    if (bs != null) {
      helper.add(
        r'bs',
        bs,
      );
    }
    if (m != null) {
      helper.add(
        r'm',
        m,
      );
    }
    if (l != null) {
      helper.add(
        r'l',
        l,
      );
    }
    if (null$ != null) {
      helper.add(
        r'null$',
        null$,
      );
    }
    if (bool$ != null) {
      helper.add(
        r'bool$',
        bool$,
      );
    }
    return helper.toString();
  }
}

final class AttributeValueS extends AttributeValue {
  const AttributeValueS(this.s) : super._();

  @override
  final String s;

  @override
  String get name => 'S';
}

final class AttributeValueN extends AttributeValue {
  const AttributeValueN(this.n) : super._();

  @override
  final String n;

  @override
  String get name => 'N';
}

final class AttributeValueB extends AttributeValue {
  const AttributeValueB(this.b) : super._();

  @override
  final _i2.Uint8List b;

  @override
  String get name => 'B';
}

final class AttributeValueSs extends AttributeValue {
  AttributeValueSs(List<String> ss) : this._(_i3.BuiltList(ss));

  const AttributeValueSs._(this.ss) : super._();

  @override
  final _i3.BuiltList<String> ss;

  @override
  String get name => 'SS';
}

final class AttributeValueNs extends AttributeValue {
  AttributeValueNs(List<String> ns) : this._(_i3.BuiltList(ns));

  const AttributeValueNs._(this.ns) : super._();

  @override
  final _i3.BuiltList<String> ns;

  @override
  String get name => 'NS';
}

final class AttributeValueBs extends AttributeValue {
  AttributeValueBs(List<_i2.Uint8List> bs) : this._(_i3.BuiltList(bs));

  const AttributeValueBs._(this.bs) : super._();

  @override
  final _i3.BuiltList<_i2.Uint8List> bs;

  @override
  String get name => 'BS';
}

final class AttributeValueM extends AttributeValue {
  AttributeValueM(Map<String, AttributeValue> m) : this._(_i3.BuiltMap(m));

  const AttributeValueM._(this.m) : super._();

  @override
  final _i3.BuiltMap<String, AttributeValue> m;

  @override
  String get name => 'M';
}

final class AttributeValueL extends AttributeValue {
  AttributeValueL(List<AttributeValue> l) : this._(_i3.BuiltList(l));

  const AttributeValueL._(this.l) : super._();

  @override
  final _i3.BuiltList<AttributeValue> l;

  @override
  String get name => 'L';
}

final class AttributeValueNull extends AttributeValue {
  const AttributeValueNull(this.null$) : super._();

  @override
  final bool null$;

  @override
  String get name => 'NULL';
}

final class AttributeValueBool extends AttributeValue {
  const AttributeValueBool(this.bool$) : super._();

  @override
  final bool bool$;

  @override
  String get name => 'BOOL';
}

final class AttributeValueSdkUnknown extends AttributeValue {
  const AttributeValueSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AttributeValueAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<AttributeValue> {
  const AttributeValueAwsJson10Serializer() : super('AttributeValue');

  @override
  Iterable<Type> get types => const [
        AttributeValue,
        AttributeValueS,
        AttributeValueN,
        AttributeValueB,
        AttributeValueSs,
        AttributeValueNs,
        AttributeValueBs,
        AttributeValueM,
        AttributeValueL,
        AttributeValueNull,
        AttributeValueBool,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  AttributeValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'S':
        return AttributeValueS((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'N':
        return AttributeValueN((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'B':
        return AttributeValueB((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Uint8List),
        ) as _i2.Uint8List));
      case 'SS':
        return AttributeValueSs._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ) as _i3.BuiltList<String>));
      case 'NS':
        return AttributeValueNs._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ) as _i3.BuiltList<String>));
      case 'BS':
        return AttributeValueBs._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Uint8List)],
          ),
        ) as _i3.BuiltList<_i2.Uint8List>));
      case 'M':
        return AttributeValueM._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ) as _i3.BuiltMap<String, AttributeValue>));
      case 'L':
        return AttributeValueL._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AttributeValue)],
          ),
        ) as _i3.BuiltList<AttributeValue>));
      case 'NULL':
        return AttributeValueNull((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
      case 'BOOL':
        return AttributeValueBool((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
    }
    return AttributeValue.sdkUnknown(
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
    (object as AttributeValue);
    return [
      object.name,
      switch (object) {
        AttributeValueS(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        AttributeValueN(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        AttributeValueB(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(_i2.Uint8List),
        ),
        AttributeValueSs(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ),
        AttributeValueNs(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ),
        AttributeValueBs(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Uint8List)],
          ),
        ),
        AttributeValueM(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ),
        AttributeValueL(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AttributeValue)],
          ),
        ),
        AttributeValueNull(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(bool),
        ),
        AttributeValueBool(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(bool),
        ),
        AttributeValueSdkUnknown(:final value) => value,
      },
    ];
  }
}
