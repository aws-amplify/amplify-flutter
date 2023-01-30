// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    DateTime? expirationTime,
    String? message,
    required List<_i3.RemediationExceptionResourceKey> resourceKeys,
  }) {
    return _$PutRemediationExceptionsRequest._(
      configRuleName: configRuleName,
      expirationTime: expirationTime,
      message: message,
      resourceKeys: _i4.BuiltList(resourceKeys),
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

  static const List<_i1.SmithySerializer> serializers = [
    PutRemediationExceptionsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRemediationExceptionsRequestBuilder b) {}

  /// The name of the Config rule for which you want to create remediation exception.
  String get configRuleName;

  /// The exception is automatically deleted after the expiration date.
  DateTime? get expirationTime;

  /// The message contains an explanation of the exception.
  String? get message;

  /// An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys.
  _i4.BuiltList<_i3.RemediationExceptionResourceKey> get resourceKeys;
  @override
  PutRemediationExceptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        expirationTime,
        message,
        resourceKeys,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRemediationExceptionsRequest');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'expirationTime',
      expirationTime,
    );
    helper.add(
      'message',
      message,
    );
    helper.add(
      'resourceKeys',
      resourceKeys,
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
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ExpirationTime':
          if (value != null) {
            result.expirationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceKeys':
          result.resourceKeys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.RemediationExceptionResourceKey)],
            ),
          ) as _i4.BuiltList<_i3.RemediationExceptionResourceKey>));
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
    final payload = (object as PutRemediationExceptionsRequest);
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
          [FullType(_i3.RemediationExceptionResourceKey)],
        ),
      ),
    ];
    if (payload.expirationTime != null) {
      result
        ..add('ExpirationTime')
        ..add(serializers.serialize(
          payload.expirationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
