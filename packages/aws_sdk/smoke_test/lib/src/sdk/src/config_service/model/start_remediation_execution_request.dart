// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.start_remediation_execution_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_key.dart'
    as _i3;

part 'start_remediation_execution_request.g.dart';

abstract class StartRemediationExecutionRequest
    with
        _i1.HttpInput<StartRemediationExecutionRequest>,
        _i2.AWSEquatable<StartRemediationExecutionRequest>
    implements
        Built<StartRemediationExecutionRequest,
            StartRemediationExecutionRequestBuilder> {
  factory StartRemediationExecutionRequest({
    required String configRuleName,
    required List<_i3.ResourceKey> resourceKeys,
  }) {
    return _$StartRemediationExecutionRequest._(
      configRuleName: configRuleName,
      resourceKeys: _i4.BuiltList(resourceKeys),
    );
  }

  factory StartRemediationExecutionRequest.build(
          [void Function(StartRemediationExecutionRequestBuilder) updates]) =
      _$StartRemediationExecutionRequest;

  const StartRemediationExecutionRequest._();

  factory StartRemediationExecutionRequest.fromRequest(
    StartRemediationExecutionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    StartRemediationExecutionRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartRemediationExecutionRequestBuilder b) {}

  /// The list of names of Config rules that you want to run remediation execution for.
  String get configRuleName;

  /// A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID.
  _i4.BuiltList<_i3.ResourceKey> get resourceKeys;
  @override
  StartRemediationExecutionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        resourceKeys,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartRemediationExecutionRequest');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'resourceKeys',
      resourceKeys,
    );
    return helper.toString();
  }
}

class StartRemediationExecutionRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<StartRemediationExecutionRequest> {
  const StartRemediationExecutionRequestAwsJson11Serializer()
      : super('StartRemediationExecutionRequest');

  @override
  Iterable<Type> get types => const [
        StartRemediationExecutionRequest,
        _$StartRemediationExecutionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StartRemediationExecutionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartRemediationExecutionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceKeys':
          result.resourceKeys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ResourceKey)],
            ),
          ) as _i4.BuiltList<_i3.ResourceKey>));
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
    final payload = (object as StartRemediationExecutionRequest);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
      'ResourceKeys',
      serializers.serialize(
        payload.resourceKeys,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.ResourceKey)],
        ),
      ),
    ];
    return result;
  }
}
