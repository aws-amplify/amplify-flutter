// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.pattern_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

abstract class PatternUnion extends _i1.SmithyUnion<PatternUnion> {
  const PatternUnion._();

  const factory PatternUnion.first(String first) = PatternUnionFirst;

  const factory PatternUnion.second(String second) = PatternUnionSecond;

  const factory PatternUnion.sdkUnknown(String name, Object value) =
      PatternUnionSdkUnknown;

  static const List<_i1.SmithySerializer<PatternUnion>> serializers = [
    PatternUnionRestJson1Serializer()
  ];

  String? get first => null;
  String? get second => null;
  @override
  Object get value => (first ?? second)!;
  @override
  T? when<T>(
      {T Function(String)? first,
      T Function(String)? second,
      T Function(String, Object)? sdkUnknown}) {
    if (this is PatternUnionFirst) {
      return first?.call((this as PatternUnionFirst).first);
    }
    if (this is PatternUnionSecond) {
      return second?.call((this as PatternUnionSecond).second);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'PatternUnion');
    if (first != null) {
      helper.add(r'first', first);
    }
    if (second != null) {
      helper.add(r'second', second);
    }
    return helper.toString();
  }
}

class PatternUnionFirst extends PatternUnion {
  const PatternUnionFirst(this.first) : super._();

  @override
  final String first;

  @override
  String get name => 'first';
}

class PatternUnionSecond extends PatternUnion {
  const PatternUnionSecond(this.second) : super._();

  @override
  final String second;

  @override
  String get name => 'second';
}

class PatternUnionSdkUnknown extends PatternUnion {
  const PatternUnionSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class PatternUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PatternUnion> {
  const PatternUnionRestJson1Serializer() : super('PatternUnion');

  @override
  Iterable<Type> get types => const [PatternUnion];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PatternUnion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'first':
        return PatternUnion.first((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
      case 'second':
        return PatternUnion.second((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
    }
    return PatternUnion.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as PatternUnion);
    return [
      object.name,
      object.when<Object?>(
          first: (String first) => serializers.serialize(first,
              specifiedType: const FullType(String)),
          second: (String second) => serializers.serialize(second,
              specifiedType: const FullType(String)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}
