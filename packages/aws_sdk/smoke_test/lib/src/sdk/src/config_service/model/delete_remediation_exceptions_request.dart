// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.delete_remediation_exceptions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception_resource_key.dart'
    as _i3;

part 'delete_remediation_exceptions_request.g.dart';

abstract class DeleteRemediationExceptionsRequest
    with
        _i1.HttpInput<DeleteRemediationExceptionsRequest>,
        _i2.AWSEquatable<DeleteRemediationExceptionsRequest>
    implements
        Built<DeleteRemediationExceptionsRequest,
            DeleteRemediationExceptionsRequestBuilder> {
  factory DeleteRemediationExceptionsRequest({
    required String configRuleName,
    required List<_i3.RemediationExceptionResourceKey> resourceKeys,
  }) {
    return _$DeleteRemediationExceptionsRequest._(
      configRuleName: configRuleName,
      resourceKeys: _i4.BuiltList(resourceKeys),
    );
  }

  factory DeleteRemediationExceptionsRequest.build(
          [void Function(DeleteRemediationExceptionsRequestBuilder) updates]) =
      _$DeleteRemediationExceptionsRequest;

  const DeleteRemediationExceptionsRequest._();

  factory DeleteRemediationExceptionsRequest.fromRequest(
    DeleteRemediationExceptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteRemediationExceptionsRequest>>
      serializers = [DeleteRemediationExceptionsRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRemediationExceptionsRequestBuilder b) {}

  /// The name of the Config rule for which you want to delete remediation exception configuration.
  String get configRuleName;

  /// An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys.
  _i4.BuiltList<_i3.RemediationExceptionResourceKey> get resourceKeys;
  @override
  DeleteRemediationExceptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        resourceKeys,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteRemediationExceptionsRequest')
          ..add(
            'configRuleName',
            configRuleName,
          )
          ..add(
            'resourceKeys',
            resourceKeys,
          );
    return helper.toString();
  }
}

class DeleteRemediationExceptionsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteRemediationExceptionsRequest> {
  const DeleteRemediationExceptionsRequestAwsJson11Serializer()
      : super('DeleteRemediationExceptionsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRemediationExceptionsRequest,
        _$DeleteRemediationExceptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteRemediationExceptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRemediationExceptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceKeys':
          result.resourceKeys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.RemediationExceptionResourceKey)],
            ),
          ) as _i4.BuiltList<_i3.RemediationExceptionResourceKey>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteRemediationExceptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteRemediationExceptionsRequest(:configRuleName, :resourceKeys) =
        object;
    result$.addAll([
      'ConfigRuleName',
      serializers.serialize(
        configRuleName,
        specifiedType: const FullType(String),
      ),
      'ResourceKeys',
      serializers.serialize(
        resourceKeys,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.RemediationExceptionResourceKey)],
        ),
      ),
    ]);
    return result$;
  }
}
