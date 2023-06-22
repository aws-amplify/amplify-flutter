// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.put_remediation_exceptions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception_resource_key.dart'
    as _i3;

part 'put_remediation_exceptions_request.g.dart';

abstract class PutRemediationExceptionsRequest
    with
        _i1.HttpInput<PutRemediationExceptionsRequest>,
        _i2.AWSEquatable<PutRemediationExceptionsRequest>
    implements
        Built<PutRemediationExceptionsRequest,
            PutRemediationExceptionsRequestBuilder> {
  factory PutRemediationExceptionsRequest({
    required String configRuleName,
    required List<_i3.RemediationExceptionResourceKey> resourceKeys,
    String? message,
    DateTime? expirationTime,
  }) {
    return _$PutRemediationExceptionsRequest._(
      configRuleName: configRuleName,
      resourceKeys: _i4.BuiltList(resourceKeys),
      message: message,
      expirationTime: expirationTime,
    );
  }

  factory PutRemediationExceptionsRequest.build(
          [void Function(PutRemediationExceptionsRequestBuilder) updates]) =
      _$PutRemediationExceptionsRequest;

  const PutRemediationExceptionsRequest._();

  factory PutRemediationExceptionsRequest.fromRequest(
    PutRemediationExceptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutRemediationExceptionsRequest>>
      serializers = [PutRemediationExceptionsRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRemediationExceptionsRequestBuilder b) {}

  /// The name of the Config rule for which you want to create remediation exception.
  String get configRuleName;

  /// An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys.
  _i4.BuiltList<_i3.RemediationExceptionResourceKey> get resourceKeys;

  /// The message contains an explanation of the exception.
  String? get message;

  /// The exception is automatically deleted after the expiration date.
  DateTime? get expirationTime;
  @override
  PutRemediationExceptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        resourceKeys,
        message,
        expirationTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRemediationExceptionsRequest')
          ..add(
            'configRuleName',
            configRuleName,
          )
          ..add(
            'resourceKeys',
            resourceKeys,
          )
          ..add(
            'message',
            message,
          )
          ..add(
            'expirationTime',
            expirationTime,
          );
    return helper.toString();
  }
}

class PutRemediationExceptionsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutRemediationExceptionsRequest> {
  const PutRemediationExceptionsRequestAwsJson11Serializer()
      : super('PutRemediationExceptionsRequest');

  @override
  Iterable<Type> get types => const [
        PutRemediationExceptionsRequest,
        _$PutRemediationExceptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutRemediationExceptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRemediationExceptionsRequestBuilder();
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
        case 'Message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpirationTime':
          result.expirationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutRemediationExceptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutRemediationExceptionsRequest(
      :configRuleName,
      :resourceKeys,
      :message,
      :expirationTime
    ) = object;
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
    if (message != null) {
      result$
        ..add('Message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (expirationTime != null) {
      result$
        ..add('ExpirationTime')
        ..add(serializers.serialize(
          expirationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
