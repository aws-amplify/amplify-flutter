// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.renamed_greeting; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'renamed_greeting.g.dart';

abstract class RenamedGreeting
    with _i1.AWSEquatable<RenamedGreeting>
    implements Built<RenamedGreeting, RenamedGreetingBuilder> {
  factory RenamedGreeting({String? salutation}) {
    return _$RenamedGreeting._(salutation: salutation);
  }

  factory RenamedGreeting.build(
      [void Function(RenamedGreetingBuilder) updates]) = _$RenamedGreeting;

  const RenamedGreeting._();

  static const List<_i2.SmithySerializer<RenamedGreeting>> serializers = [
    RenamedGreetingRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RenamedGreetingBuilder b) {}
  String? get salutation;
  @override
  List<Object?> get props => [salutation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RenamedGreeting')
      ..add(
        'salutation',
        salutation,
      );
    return helper.toString();
  }
}

class RenamedGreetingRestJson1Serializer
    extends _i2.StructuredSmithySerializer<RenamedGreeting> {
  const RenamedGreetingRestJson1Serializer() : super('RenamedGreeting');

  @override
  Iterable<Type> get types => const [
        RenamedGreeting,
        _$RenamedGreeting,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RenamedGreeting deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RenamedGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'salutation':
          result.salutation = (serializers.deserialize(
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
    RenamedGreeting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RenamedGreeting(:salutation) = object;
    if (salutation != null) {
      result$
        ..add('salutation')
        ..add(serializers.serialize(
          salutation,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
