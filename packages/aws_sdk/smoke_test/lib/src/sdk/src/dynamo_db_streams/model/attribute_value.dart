// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.attribute_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The discrete values of [AttributeValue].
enum AttributeValueType<T extends AttributeValue> {
  /// The type for [AttributeValueB].
  b<AttributeValueB>(r'B'),

  /// The type for [AttributeValueBool].
  bool$<AttributeValueBool>(r'BOOL'),

  /// The type for [AttributeValueBs].
  bs<AttributeValueBs>(r'BS'),

  /// The type for [AttributeValueL].
  l<AttributeValueL>(r'L'),

  /// The type for [AttributeValueM].
  m<AttributeValueM>(r'M'),

  /// The type for [AttributeValueN].
  n<AttributeValueN>(r'N'),

  /// The type for [AttributeValueNs].
  ns<AttributeValueNs>(r'NS'),

  /// The type for [AttributeValueNull].
  null$<AttributeValueNull>(r'NULL'),

  /// The type for [AttributeValueS].
  s<AttributeValueS>(r'S'),

  /// The type for [AttributeValueSs].
  ss<AttributeValueSs>(r'SS'),

  /// The type for an unknown value.
  sdkUnknown<AttributeValueSdkUnknown>('sdkUnknown');

  /// The discrete values of [AttributeValue].
  const AttributeValueType(this.value);

  /// The Smithy value.
  final String value;
}

/// Represents the data for an attribute.
///
/// Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.
///
/// For more information, see [Data Types](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes) in the _Amazon DynamoDB Developer Guide_.
abstract class AttributeValue extends _i1.SmithyUnion<AttributeValue> {
  const AttributeValue._();

  const factory AttributeValue.b(_i2.Uint8List b) = AttributeValueB;

  const factory AttributeValue.bool$(bool bool$) = AttributeValueBool;

  factory AttributeValue.bs(List<_i2.Uint8List> bs) = AttributeValueBs;

  factory AttributeValue.l(List<AttributeValue> l) = AttributeValueL;

  factory AttributeValue.m(Map<String, AttributeValue> m) = AttributeValueM;

  const factory AttributeValue.n(String n) = AttributeValueN;

  factory AttributeValue.ns(List<String> ns) = AttributeValueNs;

  const factory AttributeValue.null$(bool null$) = AttributeValueNull;

  const factory AttributeValue.s(String s) = AttributeValueS;

  factory AttributeValue.ss(List<String> ss) = AttributeValueSs;

  const factory AttributeValue.sdkUnknown(
    String name,
    Object value,
  ) = AttributeValueSdkUnknown;

  static const List<_i1.SmithySerializer<AttributeValue>> serializers = [
    AttributeValueAwsJson10Serializer()
  ];

  /// An attribute of type Binary. For example:
  ///
  /// `"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"`
  _i2.Uint8List? get b => null;

  /// An attribute of type Boolean. For example:
  ///
  /// `"BOOL": true`
  bool? get bool$ => null;

  /// An attribute of type Binary Set. For example:
  ///
  /// `"BS": \["U3Vubnk=", "UmFpbnk=", "U25vd3k="\]`
  _i3.BuiltList<_i2.Uint8List>? get bs => null;

  /// An attribute of type List. For example:
  ///
  /// `"L": \[ {"S": "Cookies"} , {"S": "Coffee"}, {"N": "3.14159"}\]`
  _i3.BuiltList<AttributeValue>? get l => null;

  /// An attribute of type Map. For example:
  ///
  /// `"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}`
  _i3.BuiltMap<String, AttributeValue>? get m => null;

  /// An attribute of type Number. For example:
  ///
  /// `"N": "123.45"`
  ///
  /// Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.
  String? get n => null;

  /// An attribute of type Number Set. For example:
  ///
  /// `"NS": \["42.2", "-19", "7.5", "3.14"\]`
  ///
  /// Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.
  _i3.BuiltList<String>? get ns => null;

  /// An attribute of type Null. For example:
  ///
  /// `"NULL": true`
  bool? get null$ => null;

  /// An attribute of type String. For example:
  ///
  /// `"S": "Hello"`
  String? get s => null;

  /// An attribute of type String Set. For example:
  ///
  /// `"SS": \["Giraffe", "Hippo" ,"Zebra"\]`
  _i3.BuiltList<String>? get ss => null;
  AttributeValueType get type;
  @override
  Object get value =>
      (b ?? bool$ ?? bs ?? l ?? m ?? n ?? ns ?? null$ ?? s ?? ss)!;
  @override
  T? when<T>({
    T Function(_i2.Uint8List)? b,
    T Function(bool)? bool$,
    T Function(_i3.BuiltList<_i2.Uint8List>)? bs,
    T Function(_i3.BuiltList<AttributeValue>)? l,
    T Function(_i3.BuiltMap<String, AttributeValue>)? m,
    T Function(String)? n,
    T Function(_i3.BuiltList<String>)? ns,
    T Function(bool)? null$,
    T Function(String)? s,
    T Function(_i3.BuiltList<String>)? ss,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is AttributeValueB) {
      return b?.call((this as AttributeValueB).b);
    }
    if (this is AttributeValueBool) {
      return bool$?.call((this as AttributeValueBool).bool$);
    }
    if (this is AttributeValueBs) {
      return bs?.call((this as AttributeValueBs).bs);
    }
    if (this is AttributeValueL) {
      return l?.call((this as AttributeValueL).l);
    }
    if (this is AttributeValueM) {
      return m?.call((this as AttributeValueM).m);
    }
    if (this is AttributeValueN) {
      return n?.call((this as AttributeValueN).n);
    }
    if (this is AttributeValueNs) {
      return ns?.call((this as AttributeValueNs).ns);
    }
    if (this is AttributeValueNull) {
      return null$?.call((this as AttributeValueNull).null$);
    }
    if (this is AttributeValueS) {
      return s?.call((this as AttributeValueS).s);
    }
    if (this is AttributeValueSs) {
      return ss?.call((this as AttributeValueSs).ss);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AttributeValue');
    if (b != null) {
      helper.add(
        r'b',
        b,
      );
    }
    if (bool$ != null) {
      helper.add(
        r'bool$',
        bool$,
      );
    }
    if (bs != null) {
      helper.add(
        r'bs',
        bs,
      );
    }
    if (l != null) {
      helper.add(
        r'l',
        l,
      );
    }
    if (m != null) {
      helper.add(
        r'm',
        m,
      );
    }
    if (n != null) {
      helper.add(
        r'n',
        n,
      );
    }
    if (ns != null) {
      helper.add(
        r'ns',
        ns,
      );
    }
    if (null$ != null) {
      helper.add(
        r'null$',
        null$,
      );
    }
    if (s != null) {
      helper.add(
        r's',
        s,
      );
    }
    if (ss != null) {
      helper.add(
        r'ss',
        ss,
      );
    }
    return helper.toString();
  }
}

class AttributeValueB extends AttributeValue {
  const AttributeValueB(this.b) : super._();

  @override
  final _i2.Uint8List b;

  @override
  AttributeValueType get type => AttributeValueType.b;
  @override
  String get name => 'B';
}

class AttributeValueBool extends AttributeValue {
  const AttributeValueBool(this.bool$) : super._();

  @override
  final bool bool$;

  @override
  AttributeValueType get type => AttributeValueType.bool$;
  @override
  String get name => 'BOOL';
}

class AttributeValueBs extends AttributeValue {
  AttributeValueBs(List<_i2.Uint8List> bs) : this._(_i3.BuiltList(bs));

  const AttributeValueBs._(this.bs) : super._();

  @override
  final _i3.BuiltList<_i2.Uint8List> bs;

  @override
  AttributeValueType get type => AttributeValueType.bs;
  @override
  String get name => 'BS';
}

class AttributeValueL extends AttributeValue {
  AttributeValueL(List<AttributeValue> l) : this._(_i3.BuiltList(l));

  const AttributeValueL._(this.l) : super._();

  @override
  final _i3.BuiltList<AttributeValue> l;

  @override
  AttributeValueType get type => AttributeValueType.l;
  @override
  String get name => 'L';
}

class AttributeValueM extends AttributeValue {
  AttributeValueM(Map<String, AttributeValue> m) : this._(_i3.BuiltMap(m));

  const AttributeValueM._(this.m) : super._();

  @override
  final _i3.BuiltMap<String, AttributeValue> m;

  @override
  AttributeValueType get type => AttributeValueType.m;
  @override
  String get name => 'M';
}

class AttributeValueN extends AttributeValue {
  const AttributeValueN(this.n) : super._();

  @override
  final String n;

  @override
  AttributeValueType get type => AttributeValueType.n;
  @override
  String get name => 'N';
}

class AttributeValueNs extends AttributeValue {
  AttributeValueNs(List<String> ns) : this._(_i3.BuiltList(ns));

  const AttributeValueNs._(this.ns) : super._();

  @override
  final _i3.BuiltList<String> ns;

  @override
  AttributeValueType get type => AttributeValueType.ns;
  @override
  String get name => 'NS';
}

class AttributeValueNull extends AttributeValue {
  const AttributeValueNull(this.null$) : super._();

  @override
  final bool null$;

  @override
  AttributeValueType get type => AttributeValueType.null$;
  @override
  String get name => 'NULL';
}

class AttributeValueS extends AttributeValue {
  const AttributeValueS(this.s) : super._();

  @override
  final String s;

  @override
  AttributeValueType get type => AttributeValueType.s;
  @override
  String get name => 'S';
}

class AttributeValueSs extends AttributeValue {
  AttributeValueSs(List<String> ss) : this._(_i3.BuiltList(ss));

  const AttributeValueSs._(this.ss) : super._();

  @override
  final _i3.BuiltList<String> ss;

  @override
  AttributeValueType get type => AttributeValueType.ss;
  @override
  String get name => 'SS';
}

class AttributeValueSdkUnknown extends AttributeValue {
  const AttributeValueSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  AttributeValueType get type => AttributeValueType.sdkUnknown;
}

class AttributeValueAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<AttributeValue> {
  const AttributeValueAwsJson10Serializer() : super('AttributeValue');

  @override
  Iterable<Type> get types => const [
        AttributeValue,
        AttributeValueB,
        AttributeValueBool,
        AttributeValueBs,
        AttributeValueL,
        AttributeValueM,
        AttributeValueN,
        AttributeValueNs,
        AttributeValueNull,
        AttributeValueS,
        AttributeValueSs,
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
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'B':
        return AttributeValueB((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Uint8List),
        ) as _i2.Uint8List));
      case 'BOOL':
        return AttributeValueBool((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
      case 'BS':
        return AttributeValueBs._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Uint8List)],
          ),
        ) as _i3.BuiltList<_i2.Uint8List>));
      case 'L':
        return AttributeValueL._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AttributeValue)],
          ),
        ) as _i3.BuiltList<AttributeValue>));
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
      case 'N':
        return AttributeValueN((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'NS':
        return AttributeValueNs._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ) as _i3.BuiltList<String>));
      case 'NULL':
        return AttributeValueNull((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
      case 'S':
        return AttributeValueS((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'SS':
        return AttributeValueSs._((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ) as _i3.BuiltList<String>));
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
      object.when<Object?>(
        b: (_i2.Uint8List b) => serializers.serialize(
          b,
          specifiedType: const FullType(_i2.Uint8List),
        ),
        bool$: (bool bool$) => serializers.serialize(
          bool$,
          specifiedType: const FullType(bool),
        ),
        bs: (_i3.BuiltList<_i2.Uint8List> bs) => serializers.serialize(
          bs,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Uint8List)],
          ),
        ),
        l: (_i3.BuiltList<AttributeValue> l) => serializers.serialize(
          l,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AttributeValue)],
          ),
        ),
        m: (_i3.BuiltMap<String, AttributeValue> m) => serializers.serialize(
          m,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ),
        n: (String n) => serializers.serialize(
          n,
          specifiedType: const FullType(String),
        ),
        ns: (_i3.BuiltList<String> ns) => serializers.serialize(
          ns,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ),
        null$: (bool null$) => serializers.serialize(
          null$,
          specifiedType: const FullType(bool),
        ),
        s: (String s) => serializers.serialize(
          s,
          specifiedType: const FullType(String),
        ),
        ss: (_i3.BuiltList<String> ss) => serializers.serialize(
          ss,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
