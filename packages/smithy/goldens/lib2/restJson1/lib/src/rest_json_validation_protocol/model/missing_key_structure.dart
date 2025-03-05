// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_validation_protocol.model.missing_key_structure; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'missing_key_structure.g.dart';

abstract class MissingKeyStructure
    with _i1.AWSEquatable<MissingKeyStructure>
    implements Built<MissingKeyStructure, MissingKeyStructureBuilder> {
  factory MissingKeyStructure({required String hi}) {
    return _$MissingKeyStructure._(hi: hi);
  }

  factory MissingKeyStructure.build(
          [void Function(MissingKeyStructureBuilder) updates]) =
      _$MissingKeyStructure;

  const MissingKeyStructure._();

  static const List<_i2.SmithySerializer<MissingKeyStructure>> serializers = [
    MissingKeyStructureRestJson1Serializer()
  ];

  String get hi;
  @override
  List<Object?> get props => [hi];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MissingKeyStructure')
      ..add(
        'hi',
        hi,
      );
    return helper.toString();
  }
}

class MissingKeyStructureRestJson1Serializer
    extends _i2.StructuredSmithySerializer<MissingKeyStructure> {
  const MissingKeyStructureRestJson1Serializer() : super('MissingKeyStructure');

  @override
  Iterable<Type> get types => const [
        MissingKeyStructure,
        _$MissingKeyStructure,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  MissingKeyStructure deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MissingKeyStructureBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hi':
          result.hi = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MissingKeyStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MissingKeyStructure(:hi) = object;
    result$.addAll([
      'hi',
      serializers.serialize(
        hi,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
