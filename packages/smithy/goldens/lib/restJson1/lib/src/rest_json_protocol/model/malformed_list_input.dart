// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.malformed_list_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_list_input.g.dart';

abstract class MalformedListInput
    with _i1.HttpInput<MalformedListInput>, _i2.AWSEquatable<MalformedListInput>
    implements Built<MalformedListInput, MalformedListInputBuilder> {
  factory MalformedListInput({List<String>? bodyList}) {
    return _$MalformedListInput._(
        bodyList: bodyList == null ? null : _i3.BuiltList(bodyList));
  }

  factory MalformedListInput.build(
          [void Function(MalformedListInputBuilder) updates]) =
      _$MalformedListInput;

  const MalformedListInput._();

  factory MalformedListInput.fromRequest(
    MalformedListInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedListInput>> serializers = [
    MalformedListInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedListInputBuilder b) {}
  _i3.BuiltList<String>? get bodyList;
  @override
  MalformedListInput getPayload() => this;
  @override
  List<Object?> get props => [bodyList];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedListInput')
      ..add(
        'bodyList',
        bodyList,
      );
    return helper.toString();
  }
}

class MalformedListInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedListInput> {
  const MalformedListInputRestJson1Serializer() : super('MalformedListInput');

  @override
  Iterable<Type> get types => const [
        MalformedListInput,
        _$MalformedListInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedListInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedListInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bodyList':
          result.bodyList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedListInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedListInput(:bodyList) = object;
    if (bodyList != null) {
      result$
        ..add('bodyList')
        ..add(serializers.serialize(
          bodyList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
