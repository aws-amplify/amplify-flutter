// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.host_label_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'host_label_input.g.dart';

abstract class HostLabelInput
    with _i1.HttpInput<HostLabelInput>, _i2.AWSEquatable<HostLabelInput>
    implements Built<HostLabelInput, HostLabelInputBuilder> {
  factory HostLabelInput({required String label}) {
    return _$HostLabelInput._(label: label);
  }

  factory HostLabelInput.build([void Function(HostLabelInputBuilder) updates]) =
      _$HostLabelInput;

  const HostLabelInput._();

  factory HostLabelInput.fromRequest(
    HostLabelInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<HostLabelInput>> serializers = [
    HostLabelInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostLabelInputBuilder b) {}
  String get label;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'label':
        return label;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  HostLabelInput getPayload() => this;
  @override
  List<Object?> get props => [label];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostLabelInput')
      ..add(
        'label',
        label,
      );
    return helper.toString();
  }
}

class HostLabelInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HostLabelInput> {
  const HostLabelInputRestJson1Serializer() : super('HostLabelInput');

  @override
  Iterable<Type> get types => const [
        HostLabelInput,
        _$HostLabelInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  HostLabelInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostLabelInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'label':
          result.label = (serializers.deserialize(
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
    HostLabelInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final HostLabelInput(:label) = object;
    result$.addAll([
      'label',
      serializers.serialize(
        label,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
