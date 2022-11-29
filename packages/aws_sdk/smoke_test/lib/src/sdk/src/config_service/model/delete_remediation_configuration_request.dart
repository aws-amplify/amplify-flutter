// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.delete_remediation_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_remediation_configuration_request.g.dart';

abstract class DeleteRemediationConfigurationRequest
    with
        _i1.HttpInput<DeleteRemediationConfigurationRequest>,
        _i2.AWSEquatable<DeleteRemediationConfigurationRequest>
    implements
        Built<DeleteRemediationConfigurationRequest,
            DeleteRemediationConfigurationRequestBuilder> {
  factory DeleteRemediationConfigurationRequest({
    required String configRuleName,
    String? resourceType,
  }) {
    return _$DeleteRemediationConfigurationRequest._(
      configRuleName: configRuleName,
      resourceType: resourceType,
    );
  }

  factory DeleteRemediationConfigurationRequest.build(
      [void Function(DeleteRemediationConfigurationRequestBuilder)
          updates]) = _$DeleteRemediationConfigurationRequest;

  const DeleteRemediationConfigurationRequest._();

  factory DeleteRemediationConfigurationRequest.fromRequest(
    DeleteRemediationConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteRemediationConfigurationRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRemediationConfigurationRequestBuilder b) {}

  /// The name of the Config rule for which you want to delete remediation configuration.
  String get configRuleName;

  /// The type of a resource.
  String? get resourceType;
  @override
  DeleteRemediationConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        resourceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteRemediationConfigurationRequest');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class DeleteRemediationConfigurationRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DeleteRemediationConfigurationRequest> {
  const DeleteRemediationConfigurationRequestAwsJson11Serializer()
      : super('DeleteRemediationConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRemediationConfigurationRequest,
        _$DeleteRemediationConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteRemediationConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRemediationConfigurationRequestBuilder();
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
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as DeleteRemediationConfigurationRequest);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.resourceType != null) {
      result
        ..add('ResourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
