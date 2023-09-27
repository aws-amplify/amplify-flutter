// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_validation_protocol.model.recursive_union_one; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_enum_string.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_two.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class RecursiveUnionOne extends _i1.SmithyUnion<RecursiveUnionOne> {
  const RecursiveUnionOne._();

  const factory RecursiveUnionOne.string(RecursiveEnumString string) =
      RecursiveUnionOneString$;

  const factory RecursiveUnionOne.union(RecursiveUnionTwo union) =
      RecursiveUnionOneUnion$;

  const factory RecursiveUnionOne.sdkUnknown(
    String name,
    Object value,
  ) = RecursiveUnionOneSdkUnknown$;

  static const List<_i1.SmithySerializer<RecursiveUnionOne>> serializers = [
    RecursiveUnionOneRestJson1Serializer()
  ];

  RecursiveEnumString? get string => null;

  RecursiveUnionTwo? get union => null;

  @override
  Object get value => (string ?? union)!;

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'RecursiveUnionOne');
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

final class RecursiveUnionOneString$ extends RecursiveUnionOne {
  const RecursiveUnionOneString$(this.string) : super._();

  @override
  final RecursiveEnumString string;

  @override
  String get name => 'string';
}

final class RecursiveUnionOneUnion$ extends RecursiveUnionOne {
  const RecursiveUnionOneUnion$(this.union) : super._();

  @override
  final RecursiveUnionTwo union;

  @override
  String get name => 'union';
}

final class RecursiveUnionOneSdkUnknown$ extends RecursiveUnionOne {
  const RecursiveUnionOneSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class RecursiveUnionOneRestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveUnionOne> {
  const RecursiveUnionOneRestJson1Serializer() : super('RecursiveUnionOne');

  @override
  Iterable<Type> get types => const [
        RecursiveUnionOne,
        RecursiveUnionOneString$,
        RecursiveUnionOneUnion$,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  RecursiveUnionOne deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'string':
        return RecursiveUnionOneString$((serializers.deserialize(
          value,
          specifiedType: const FullType(RecursiveEnumString),
        ) as RecursiveEnumString));
      case 'union':
        return RecursiveUnionOneUnion$((serializers.deserialize(
          value,
          specifiedType: const FullType(RecursiveUnionTwo),
        ) as RecursiveUnionTwo));
    }
    return RecursiveUnionOne.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveUnionOne object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        RecursiveUnionOneString$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(RecursiveEnumString),
          ),
        RecursiveUnionOneUnion$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(RecursiveUnionTwo),
          ),
        RecursiveUnionOneSdkUnknown$(:final value) => value,
      },
    ];
  }
}
