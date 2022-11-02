// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_0_v1.json_rpc_10.model.endpoint_with_host_label_operation_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'endpoint_with_host_label_operation_input.g.dart';

abstract class EndpointWithHostLabelOperationInput
    with
        _i1.HttpInput<EndpointWithHostLabelOperationInput>,
        _i2.AWSEquatable<EndpointWithHostLabelOperationInput>
    implements
        Built<EndpointWithHostLabelOperationInput,
            EndpointWithHostLabelOperationInputBuilder> {
  factory EndpointWithHostLabelOperationInput({required String label}) {
    return _$EndpointWithHostLabelOperationInput._(label: label);
  }

  factory EndpointWithHostLabelOperationInput.build(
          [void Function(EndpointWithHostLabelOperationInputBuilder) updates]) =
      _$EndpointWithHostLabelOperationInput;

  const EndpointWithHostLabelOperationInput._();

  factory EndpointWithHostLabelOperationInput.fromRequest(
    EndpointWithHostLabelOperationInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    EndpointWithHostLabelOperationInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointWithHostLabelOperationInputBuilder b) {}
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
  EndpointWithHostLabelOperationInput getPayload() => this;
  @override
  List<Object?> get props => [label];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EndpointWithHostLabelOperationInput');
    helper.add(
      'label',
      label,
    );
    return helper.toString();
  }
}

class EndpointWithHostLabelOperationInputAwsJson10Serializer extends _i1
    .StructuredSmithySerializer<EndpointWithHostLabelOperationInput> {
  const EndpointWithHostLabelOperationInputAwsJson10Serializer()
      : super('EndpointWithHostLabelOperationInput');

  @override
  Iterable<Type> get types => const [
        EndpointWithHostLabelOperationInput,
        _$EndpointWithHostLabelOperationInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  EndpointWithHostLabelOperationInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointWithHostLabelOperationInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'label':
          result.label = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as EndpointWithHostLabelOperationInput);
    final result = <Object?>[
      'label',
      serializers.serialize(
        payload.label,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
