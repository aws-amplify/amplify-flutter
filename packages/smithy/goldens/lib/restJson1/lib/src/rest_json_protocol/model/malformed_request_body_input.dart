// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.malformed_request_body_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_request_body_input.g.dart';

abstract class MalformedRequestBodyInput
    with
        _i1.HttpInput<MalformedRequestBodyInput>,
        _i2.AWSEquatable<MalformedRequestBodyInput>
    implements
        Built<MalformedRequestBodyInput, MalformedRequestBodyInputBuilder> {
  factory MalformedRequestBodyInput({
    int? int_,
    double? float,
  }) {
    return _$MalformedRequestBodyInput._(
      int_: int_,
      float: float,
    );
  }

  factory MalformedRequestBodyInput.build(
          [void Function(MalformedRequestBodyInputBuilder) updates]) =
      _$MalformedRequestBodyInput;

  const MalformedRequestBodyInput._();

  factory MalformedRequestBodyInput.fromRequest(
    MalformedRequestBodyInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedRequestBodyInput>>
      serializers = [MalformedRequestBodyInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequestBodyInputBuilder b) {}
  int? get int_;
  double? get float;
  @override
  MalformedRequestBodyInput getPayload() => this;
  @override
  List<Object?> get props => [
        int_,
        float,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRequestBodyInput')
      ..add(
        'int_',
        int_,
      )
      ..add(
        'float',
        float,
      );
    return helper.toString();
  }
}

class MalformedRequestBodyInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRequestBodyInput> {
  const MalformedRequestBodyInputRestJson1Serializer()
      : super('MalformedRequestBodyInput');

  @override
  Iterable<Type> get types => const [
        MalformedRequestBodyInput,
        _$MalformedRequestBodyInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedRequestBodyInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedRequestBodyInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'float':
          result.float = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'int':
          result.int_ = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedRequestBodyInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedRequestBodyInput(:float, :int_) = object;
    if (float != null) {
      result$
        ..add('float')
        ..add(serializers.serialize(
          float,
          specifiedType: const FullType(double),
        ));
    }
    if (int_ != null) {
      result$
        ..add('int')
        ..add(serializers.serialize(
          int_,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
