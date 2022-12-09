// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.attribute_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// Represents the data for an attribute.
///
/// Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.
///
/// For more information, see [Data Types](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes) in the _Amazon DynamoDB Developer Guide_.
abstract class AttributeValue extends _i1.SmithyUnion<AttributeValue> {
  const AttributeValue._();

  const factory AttributeValue.b(_i2.Uint8List b) = AttributeValueB;

  const factory AttributeValue.bool$(bool bool$) = AttributeValueBool;

  const factory AttributeValue.bs(_i3.BuiltList<_i2.Uint8List> bs) =
      AttributeValueBs;

  const factory AttributeValue.l(_i3.BuiltList<AttributeValue> l) =
      AttributeValueL;

  const factory AttributeValue.m(_i3.BuiltMap<String, AttributeValue> m) =
      AttributeValueM;

  const factory AttributeValue.n(String n) = AttributeValueN;

  const factory AttributeValue.ns(_i3.BuiltList<String> ns) = AttributeValueNs;

  const factory AttributeValue.null$(bool null$) = AttributeValueNull;

  const factory AttributeValue.s(String s) = AttributeValueS;

  const factory AttributeValue.ss(_i3.BuiltList<String> ss) = AttributeValueSs;

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
  String get name => 'B';
}

class AttributeValueBool extends AttributeValue {
  const AttributeValueBool(this.bool$) : super._();

  @override
  final bool bool$;

  @override
  String get name => 'BOOL';
}

class AttributeValueBs extends AttributeValue {
  const AttributeValueBs(this.bs) : super._();

  @override
  final _i3.BuiltList<_i2.Uint8List> bs;

  @override
  String get name => 'BS';
}

class AttributeValueL extends AttributeValue {
  const AttributeValueL(this.l) : super._();

  @override
  final _i3.BuiltList<AttributeValue> l;

  @override
  String get name => 'L';
}

class AttributeValueM extends AttributeValue {
  const AttributeValueM(this.m) : super._();

  @override
  final _i3.BuiltMap<String, AttributeValue> m;

  @override
  String get name => 'M';
}

class AttributeValueN extends AttributeValue {
  const AttributeValueN(this.n) : super._();

  @override
  final String n;

  @override
  String get name => 'N';
}

class AttributeValueNs extends AttributeValue {
  const AttributeValueNs(this.ns) : super._();

  @override
  final _i3.BuiltList<String> ns;

  @override
  String get name => 'NS';
}

class AttributeValueNull extends AttributeValue {
  const AttributeValueNull(this.null$) : super._();

  @override
  final bool null$;

  @override
  String get name => 'NULL';
}

class AttributeValueS extends AttributeValue {
  const AttributeValueS(this.s) : super._();

  @override
  final String s;

  @override
  String get name => 'S';
}

class AttributeValueSs extends AttributeValue {
  const AttributeValueSs(this.ss) : super._();

  @override
  final _i3.BuiltList<String> ss;

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
        return AttributeValue.b((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.Uint8List),
        ) as _i2.Uint8List));
      case 'BOOL':
        return AttributeValue.bool$((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
      case 'BS':
        return AttributeValue.bs((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Uint8List)],
          ),
        ) as _i3.BuiltList<_i2.Uint8List>));
      case 'L':
        return AttributeValue.l((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AttributeValue)],
          ),
        ) as _i3.BuiltList<AttributeValue>));
      case 'M':
        return AttributeValue.m((serializers.deserialize(
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
        return AttributeValue.n((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'NS':
        return AttributeValue.ns((serializers.deserialize(
          value,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ) as _i3.BuiltList<String>));
      case 'NULL':
        return AttributeValue.null$((serializers.deserialize(
          value,
          specifiedType: const FullType(bool),
        ) as bool));
      case 'S':
        return AttributeValue.s((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'SS':
        return AttributeValue.ss((serializers.deserialize(
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
