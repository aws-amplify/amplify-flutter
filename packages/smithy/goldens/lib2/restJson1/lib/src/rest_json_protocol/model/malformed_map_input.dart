// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.malformed_map_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_map_input.g.dart';

abstract class MalformedMapInput
    with _i1.HttpInput<MalformedMapInput>, _i2.AWSEquatable<MalformedMapInput>
    implements Built<MalformedMapInput, MalformedMapInputBuilder> {
  factory MalformedMapInput({Map<String, String>? bodyMap}) {
    return _$MalformedMapInput._(
        bodyMap: bodyMap == null ? null : _i3.BuiltMap(bodyMap));
  }

  factory MalformedMapInput.build(
      [void Function(MalformedMapInputBuilder) updates]) = _$MalformedMapInput;

  const MalformedMapInput._();

  factory MalformedMapInput.fromRequest(
    MalformedMapInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedMapInput>> serializers = [
    MalformedMapInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedMapInputBuilder b) {}
  _i3.BuiltMap<String, String>? get bodyMap;
  @override
  MalformedMapInput getPayload() => this;
  @override
  List<Object?> get props => [bodyMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedMapInput')
      ..add(
        'bodyMap',
        bodyMap,
      );
    return helper.toString();
  }
}

class MalformedMapInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedMapInput> {
  const MalformedMapInputRestJson1Serializer() : super('MalformedMapInput');

  @override
  Iterable<Type> get types => const [
        MalformedMapInput,
        _$MalformedMapInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedMapInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedMapInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bodyMap':
          result.bodyMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedMapInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedMapInput(:bodyMap) = object;
    if (bodyMap != null) {
      result$
        ..add('bodyMap')
        ..add(serializers.serialize(
          bodyMap,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
