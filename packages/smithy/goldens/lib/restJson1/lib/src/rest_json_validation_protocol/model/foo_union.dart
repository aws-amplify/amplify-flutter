// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_validation_protocol.model.foo_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The discrete values of [FooUnion].
enum FooUnionType<T extends FooUnion> {
  /// The type for [FooUnionInteger].
  integer<FooUnionInteger>(r'integer'),

  /// The type for [FooUnionString].
  string<FooUnionString>(r'string'),

  /// The type for an unknown value.
  sdkUnknown<FooUnionSdkUnknown>('sdkUnknown');

  /// The discrete values of [FooUnion].
  const FooUnionType(this.value);

  /// The Smithy value.
  final String value;
}

abstract class FooUnion extends _i1.SmithyUnion<FooUnion> {
  const FooUnion._();

  const factory FooUnion.integer(int integer) = FooUnionInteger;

  const factory FooUnion.string(String string) = FooUnionString;

  const factory FooUnion.sdkUnknown(
    String name,
    Object value,
  ) = FooUnionSdkUnknown;

  static const List<_i1.SmithySerializer<FooUnion>> serializers = [
    FooUnionRestJson1Serializer()
  ];

  int? get integer => null;
  String? get string => null;
  FooUnionType get type;
  @override
  Object get value => (integer ?? string)!;
  @override
  T? when<T>({
    T Function(int)? integer,
    T Function(String)? string,
    T Function(
      String,
      Object,
    )? sdkUnknown,
  }) {
    if (this is FooUnionInteger) {
      return integer?.call((this as FooUnionInteger).integer);
    }
    if (this is FooUnionString) {
      return string?.call((this as FooUnionString).string);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'FooUnion');
    if (integer != null) {
      helper.add(
        r'integer',
        integer,
      );
    }
    if (string != null) {
      helper.add(
        r'string',
        string,
      );
    }
    return helper.toString();
  }
}

class FooUnionInteger extends FooUnion {
  const FooUnionInteger(this.integer) : super._();

  @override
  final int integer;

  @override
  FooUnionType get type => FooUnionType.integer;
  @override
  String get name => 'integer';
}

class FooUnionString extends FooUnion {
  const FooUnionString(this.string) : super._();

  @override
  final String string;

  @override
  FooUnionType get type => FooUnionType.string;
  @override
  String get name => 'string';
}

class FooUnionSdkUnknown extends FooUnion {
  const FooUnionSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;

  @override
  FooUnionType get type => FooUnionType.sdkUnknown;
}

class FooUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<FooUnion> {
  const FooUnionRestJson1Serializer() : super('FooUnion');

  @override
  Iterable<Type> get types => const [
        FooUnion,
        FooUnionInteger,
        FooUnionString,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  FooUnion deserialize(
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
      case 'integer':
        return FooUnionInteger((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
      case 'string':
        return FooUnionString((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
    }
    return FooUnion.sdkUnknown(
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
    (object as FooUnion);
    return [
      object.name,
      object.when<Object?>(
        integer: (int integer) => serializers.serialize(
          integer,
          specifiedType: const FullType(int),
        ),
        string: (String string) => serializers.serialize(
          string,
          specifiedType: const FullType(String),
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
