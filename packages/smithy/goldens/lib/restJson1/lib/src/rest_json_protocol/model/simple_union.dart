// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.simple_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

abstract class SimpleUnion extends _i1.SmithyUnion<SimpleUnion> {
  const SimpleUnion._();

  const factory SimpleUnion.int$(int int$) = SimpleUnionInt;

  const factory SimpleUnion.string(String string) = SimpleUnionString;

  const factory SimpleUnion.sdkUnknown(String name, Object value) =
      SimpleUnionSdkUnknown;

  static const List<_i1.SmithySerializer<SimpleUnion>> serializers = [
    SimpleUnionRestJson1Serializer()
  ];

  int? get int$ => null;
  String? get string => null;
  @override
  Object get value => (int$ ?? string)!;
  @override
  T? when<T>(
      {T Function(int)? int$,
      T Function(String)? string,
      T Function(String, Object)? sdkUnknown}) {
    if (this is SimpleUnionInt) {
      return int$?.call((this as SimpleUnionInt).int$);
    }
    if (this is SimpleUnionString) {
      return string?.call((this as SimpleUnionString).string);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'SimpleUnion');
    if (int$ != null) {
      helper.add(r'int$', int$);
    }
    if (string != null) {
      helper.add(r'string', string);
    }
    return helper.toString();
  }
}

class SimpleUnionInt extends SimpleUnion {
  const SimpleUnionInt(this.int$) : super._();

  @override
  final int int$;

  @override
  String get name => 'int';
}

class SimpleUnionString extends SimpleUnion {
  const SimpleUnionString(this.string) : super._();

  @override
  final String string;

  @override
  String get name => 'string';
}

class SimpleUnionSdkUnknown extends SimpleUnion {
  const SimpleUnionSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class SimpleUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<SimpleUnion> {
  const SimpleUnionRestJson1Serializer() : super('SimpleUnion');

  @override
  Iterable<Type> get types => const [SimpleUnion];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  SimpleUnion deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'int':
        return SimpleUnion.int$((serializers.deserialize(value,
            specifiedType: const FullType(int)) as int));
      case 'string':
        return SimpleUnion.string((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
    }
    return SimpleUnion.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as SimpleUnion);
    return [
      object.name,
      object.when<Object?>(
          int$: (int int$) =>
              serializers.serialize(int$, specifiedType: const FullType(int)),
          string: (String string) => serializers.serialize(string,
              specifiedType: const FullType(String)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}
