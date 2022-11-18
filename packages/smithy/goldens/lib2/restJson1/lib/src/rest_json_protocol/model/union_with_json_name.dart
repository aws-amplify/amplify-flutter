// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.union_with_json_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

abstract class UnionWithJsonName extends _i1.SmithyUnion<UnionWithJsonName> {
  const UnionWithJsonName._();

  const factory UnionWithJsonName.bar(String bar) = UnionWithJsonNameBar;

  const factory UnionWithJsonName.baz(String baz) = UnionWithJsonNameBaz;

  const factory UnionWithJsonName.foo(String foo) = UnionWithJsonNameFoo;

  const factory UnionWithJsonName.sdkUnknown(
    String name,
    Object value,
  ) = UnionWithJsonNameSdkUnknown;

  static const List<_i1.SmithySerializer<UnionWithJsonName>> serializers = [
    UnionWithJsonNameRestJson1Serializer()
  ];

  String? get bar => null;
  String? get baz => null;
  String? get foo => null;
  @override
  Object get value => (bar ?? baz ?? foo)!;
  @override
  T? when<T>({
    T Function(String)? bar,
    T Function(String)? baz,
    T Function(String)? foo,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is UnionWithJsonNameBar) {
      return bar?.call((this as UnionWithJsonNameBar).bar);
    }
    if (this is UnionWithJsonNameBaz) {
      return baz?.call((this as UnionWithJsonNameBaz).baz);
    }
    if (this is UnionWithJsonNameFoo) {
      return foo?.call((this as UnionWithJsonNameFoo).foo);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'UnionWithJsonName');
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
    if (foo != null) {
      helper.add(
        r'foo',
        foo,
      );
    }
    return helper.toString();
  }
}

class UnionWithJsonNameBar extends UnionWithJsonName {
  const UnionWithJsonNameBar(this.bar) : super._();

  @override
  final String bar;

  @override
  String get name => 'bar';
}

class UnionWithJsonNameBaz extends UnionWithJsonName {
  const UnionWithJsonNameBaz(this.baz) : super._();

  @override
  final String baz;

  @override
  String get name => 'baz';
}

class UnionWithJsonNameFoo extends UnionWithJsonName {
  const UnionWithJsonNameFoo(this.foo) : super._();

  @override
  final String foo;

  @override
  String get name => 'foo';
}

class UnionWithJsonNameSdkUnknown extends UnionWithJsonName {
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
        UnionWithJsonNameBar,
        UnionWithJsonNameBaz,
        UnionWithJsonNameFoo,
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
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'bar':
        return UnionWithJsonName.bar((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case '_baz':
        return UnionWithJsonName.baz((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'FOO':
        return UnionWithJsonName.foo((serializers.deserialize(
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    const renames = {
      'foo': 'FOO',
      'baz': '_baz',
    };
    (object as UnionWithJsonName);
    return [
      renames[object.name] ?? object.name,
      object.when<Object?>(
        bar: (String bar) => serializers.serialize(
          bar,
          specifiedType: const FullType(String),
        ),
        baz: (String baz) => serializers.serialize(
          baz,
          specifiedType: const FullType(String),
        ),
        foo: (String foo) => serializers.serialize(
          foo,
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
