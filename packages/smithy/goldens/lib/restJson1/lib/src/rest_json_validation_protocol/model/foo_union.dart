// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_validation_protocol.model.foo_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The discrete values of [FooUnion].
enum FooUnionType<T extends FooUnion> {
  /// The type for [FooUnionString].
  string<FooUnionString>(r'string'),

  /// The type for [FooUnionInteger].
  integer<FooUnionInteger>(r'integer'),

  /// The type for an unknown value.
  sdkUnknown<FooUnionSdkUnknown>('sdkUnknown');

  /// The discrete values of [FooUnion].
  const FooUnionType(this.value);

  /// The Smithy value.
  final String value;
}

abstract class FooUnion extends _i1.SmithyUnion<FooUnion> {
  const FooUnion._();

  const factory FooUnion.string(String string) = FooUnionString;

  const factory FooUnion.integer(int integer) = FooUnionInteger;

  const factory FooUnion.sdkUnknown(
    String name,
    Object value,
  ) = FooUnionSdkUnknown;

  static const List<_i1.SmithySerializer<FooUnion>> serializers = [
    FooUnionRestJson1Serializer()
  ];

  String? get string => null;
  int? get integer => null;
  FooUnionType get type;
  @override
  Object get value => (string ?? integer)!;
  @override
  T? when<T>({
    T Function(String)? string,
    T Function(int)? integer,
    T Function(
      String,
      Object,
    )? sdkUnknown,
  }) {
    if (this is FooUnionString) {
      return string?.call((this as FooUnionString).string);
    }
    if (this is FooUnionInteger) {
      return integer?.call((this as FooUnionInteger).integer);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'FooUnion');
    if (string != null) {
      helper.add(
        r'string',
        string,
      );
    }
    if (integer != null) {
      helper.add(
        r'integer',
        integer,
      );
    }
    return helper.toString();
  }
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

class FooUnionInteger extends FooUnion {
  const FooUnionInteger(this.integer) : super._();

  @override
  final int integer;

  @override
  FooUnionType get type => FooUnionType.integer;
  @override
  String get name => 'integer';
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
        FooUnionString,
        FooUnionInteger,
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
      case 'string':
        return FooUnionString((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'integer':
        return FooUnionInteger((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
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
        string: (String string) => serializers.serialize(
          string,
          specifiedType: const FullType(String),
        ),
        integer: (int integer) => serializers.serialize(
          integer,
          specifiedType: const FullType(int),
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
