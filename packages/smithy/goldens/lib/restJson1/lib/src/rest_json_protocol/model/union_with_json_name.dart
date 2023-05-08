// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.union_with_json_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class UnionWithJsonName extends _i1.SmithyUnion<UnionWithJsonName> {
  const UnionWithJsonName._();

  const factory UnionWithJsonName.foo(String foo) = UnionWithJsonNameFoo;

  const factory UnionWithJsonName.bar(String bar) = UnionWithJsonNameBar;

  const factory UnionWithJsonName.baz(String baz) = UnionWithJsonNameBaz;

  const factory UnionWithJsonName.sdkUnknown(
    String name,
    Object value,
  ) = UnionWithJsonNameSdkUnknown;

  static const List<_i1.SmithySerializer<UnionWithJsonName>> serializers = [
    UnionWithJsonNameRestJson1Serializer()
  ];

  String? get foo => null;
  String? get bar => null;
  String? get baz => null;
  @override
  Object get value => (foo ?? bar ?? baz)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'UnionWithJsonName');
    if (foo != null) {
      helper.add(
        r'foo',
        foo,
      );
    }
    if (bar != null) {
      helper.add(
        r'bar',
        bar,
      );
    }
    if (baz != null) {
      helper.add(
        r'baz',
        baz,
      );
    }
    return helper.toString();
  }
}

final class UnionWithJsonNameFoo extends UnionWithJsonName {
  const UnionWithJsonNameFoo(this.foo) : super._();

  @override
  final String foo;

  @override
  String get name => 'foo';
}

final class UnionWithJsonNameBar extends UnionWithJsonName {
  const UnionWithJsonNameBar(this.bar) : super._();

  @override
  final String bar;

  @override
  String get name => 'bar';
}

final class UnionWithJsonNameBaz extends UnionWithJsonName {
  const UnionWithJsonNameBaz(this.baz) : super._();

  @override
  final String baz;

  @override
  String get name => 'baz';
}

final class UnionWithJsonNameSdkUnknown extends UnionWithJsonName {
  const UnionWithJsonNameSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class UnionWithJsonNameRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UnionWithJsonName> {
  const UnionWithJsonNameRestJson1Serializer() : super('UnionWithJsonName');

  @override
  Iterable<Type> get types => const [
        UnionWithJsonName,
        UnionWithJsonNameFoo,
        UnionWithJsonNameBar,
        UnionWithJsonNameBaz,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UnionWithJsonName deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'FOO':
        return UnionWithJsonNameFoo((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'bar':
        return UnionWithJsonNameBar((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case '_baz':
        return UnionWithJsonNameBaz((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
    }
    return UnionWithJsonName.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UnionWithJsonName object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    const renames = {
      'foo': 'FOO',
      'baz': '_baz',
    };
    return [
      renames[object.name] ?? object.name,
      switch (object) {
        UnionWithJsonNameFoo(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        UnionWithJsonNameBar(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        UnionWithJsonNameBaz(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        UnionWithJsonNameSdkUnknown(:final value) => value,
      },
    ];
  }
}
