// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.enum_payload_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/string_enum.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'enum_payload_input.g.dart';

abstract class EnumPayloadInput
    with _i1.HttpInput<_i2.StringEnum>, _i3.AWSEquatable<EnumPayloadInput>
    implements
        Built<EnumPayloadInput, EnumPayloadInputBuilder>,
        _i1.HasPayload<_i2.StringEnum> {
  factory EnumPayloadInput({_i2.StringEnum? payload}) {
    return _$EnumPayloadInput._(payload: payload);
  }

  factory EnumPayloadInput.build(
      [void Function(EnumPayloadInputBuilder) updates]) = _$EnumPayloadInput;

  const EnumPayloadInput._();

  factory EnumPayloadInput.fromRequest(
    _i2.StringEnum? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      EnumPayloadInput.build((b) {
        b.payload = payload;
      });

  /// Constructs a [EnumPayloadInput] from a [payload] and [response].
  factory EnumPayloadInput.fromResponse(
    _i2.StringEnum? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      EnumPayloadInput.build((b) {
        b.payload = payload;
      });

  static const List<_i1.SmithySerializer<_i2.StringEnum?>> serializers = [
    EnumPayloadInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnumPayloadInputBuilder b) {}
  _i2.StringEnum? get payload;
  @override
  _i2.StringEnum? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnumPayloadInput')
      ..add(
        'payload',
        payload,
      );
    return helper.toString();
  }
}

class EnumPayloadInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.StringEnum> {
  const EnumPayloadInputRestJson1Serializer() : super('EnumPayloadInput');

  @override
  Iterable<Type> get types => const [
        EnumPayloadInput,
        _$EnumPayloadInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.StringEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i2.StringEnum),
    ) as _i2.StringEnum);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i2.StringEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(_i2.StringEnum),
    )!;
  }
}
