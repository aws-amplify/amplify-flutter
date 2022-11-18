// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.recursive_union_two; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_enum_string.dart'
    as _i2;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

abstract class RecursiveUnionTwo extends _i1.SmithyUnion<RecursiveUnionTwo> {
  const RecursiveUnionTwo._();

  const factory RecursiveUnionTwo.string(_i2.RecursiveEnumString string) =
      RecursiveUnionTwoString;

  const factory RecursiveUnionTwo.union(_i3.RecursiveUnionOne union) =
      RecursiveUnionTwoUnion;

  const factory RecursiveUnionTwo.sdkUnknown(
    String name,
    Object value,
  ) = RecursiveUnionTwoSdkUnknown;

  static const List<_i1.SmithySerializer<RecursiveUnionTwo>> serializers = [
    RecursiveUnionTwoRestJson1Serializer()
  ];

  _i2.RecursiveEnumString? get string => null;
  _i3.RecursiveUnionOne? get union => null;
  @override
  Object get value => (string ?? union)!;
  @override
  T? when<T>({
    T Function(_i2.RecursiveEnumString)? string,
    T Function(_i3.RecursiveUnionOne)? union,
    T Function(
      String,
      Object,
    )?
        sdkUnknown,
  }) {
    if (this is RecursiveUnionTwoString) {
      return string?.call((this as RecursiveUnionTwoString).string);
    }
    if (this is RecursiveUnionTwoUnion) {
      return union?.call((this as RecursiveUnionTwoUnion).union);
    }
    return sdkUnknown?.call(
      name,
      value,
    );
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'RecursiveUnionTwo');
    if (string != null) {
      helper.add(
        r'string',
        string,
      );
    }
    if (union != null) {
      helper.add(
        r'union',
        union,
      );
    }
    return helper.toString();
  }
}

class RecursiveUnionTwoString extends RecursiveUnionTwo {
  const RecursiveUnionTwoString(this.string) : super._();

  @override
  final _i2.RecursiveEnumString string;

  @override
  String get name => 'string';
}

class RecursiveUnionTwoUnion extends RecursiveUnionTwo {
  const RecursiveUnionTwoUnion(this.union) : super._();

  @override
  final _i3.RecursiveUnionOne union;

  @override
  String get name => 'union';
}

class RecursiveUnionTwoSdkUnknown extends RecursiveUnionTwo {
  const RecursiveUnionTwoSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class RecursiveUnionTwoRestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveUnionTwo> {
  const RecursiveUnionTwoRestJson1Serializer() : super('RecursiveUnionTwo');

  @override
  Iterable<Type> get types => const [
        RecursiveUnionTwo,
        RecursiveUnionTwoString,
        RecursiveUnionTwoUnion,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RecursiveUnionTwo deserialize(
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
        return RecursiveUnionTwo.string((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.RecursiveEnumString),
        ) as _i2.RecursiveEnumString));
      case 'union':
        return RecursiveUnionTwo.union((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.RecursiveUnionOne),
        ) as _i3.RecursiveUnionOne));
    }
    return RecursiveUnionTwo.sdkUnknown(
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
    (object as RecursiveUnionTwo);
    return [
      object.name,
      object.when<Object?>(
        string: (_i2.RecursiveEnumString string) => serializers.serialize(
          string,
          specifiedType: const FullType(_i2.RecursiveEnumString),
        ),
        union: (_i3.RecursiveUnionOne union) => serializers.serialize(
          union,
          specifiedType: const FullType(_i3.RecursiveUnionOne),
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
