// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.start_remediation_execution_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_key.dart'
    as _i2;

part 'start_remediation_execution_response.g.dart';

abstract class StartRemediationExecutionResponse
    with
        _i1.AWSEquatable<StartRemediationExecutionResponse>
    implements
        Built<StartRemediationExecutionResponse,
            StartRemediationExecutionResponseBuilder> {
  factory StartRemediationExecutionResponse({
    List<_i2.ResourceKey>? failedItems,
    String? failureMessage,
  }) {
    return _$StartRemediationExecutionResponse._(
      failedItems: failedItems == null ? null : _i3.BuiltList(failedItems),
      failureMessage: failureMessage,
    );
  }

  factory StartRemediationExecutionResponse.build(
          [void Function(StartRemediationExecutionResponseBuilder) updates]) =
      _$StartRemediationExecutionResponse;

  const StartRemediationExecutionResponse._();

  /// Constructs a [StartRemediationExecutionResponse] from a [payload] and [response].
  factory StartRemediationExecutionResponse.fromResponse(
    StartRemediationExecutionResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    StartRemediationExecutionResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartRemediationExecutionResponseBuilder b) {}

  /// For resources that have failed to start execution, the API returns a resource key object.
  _i3.BuiltList<_i2.ResourceKey>? get failedItems;

  /// Returns a failure message. For example, the resource is already compliant.
  String? get failureMessage;
  @override
  List<Object?> get props => [
        failedItems,
        failureMessage,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartRemediationExecutionResponse');
    helper.add(
      'failedItems',
      failedItems,
    );
    helper.add(
      'failureMessage',
      failureMessage,
    );
    return helper.toString();
  }
}

class StartRemediationExecutionResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<StartRemediationExecutionResponse> {
  const StartRemediationExecutionResponseAwsJson11Serializer()
      : super('StartRemediationExecutionResponse');

  @override
  Iterable<Type> get types => const [
        StartRemediationExecutionResponse,
        _$StartRemediationExecutionResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StartRemediationExecutionResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartRemediationExecutionResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'FailedItems':
          if (value != null) {
            result.failedItems.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ResourceKey)],
              ),
            ) as _i3.BuiltList<_i2.ResourceKey>));
          }
          break;
        case 'FailureMessage':
          if (value != null) {
            result.failureMessage = (serializers.deserialize(
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
    final payload = (object as StartRemediationExecutionResponse);
    final result = <Object?>[];
    if (payload.failedItems != null) {
      result
        ..add('FailedItems')
        ..add(serializers.serialize(
          payload.failedItems!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ResourceKey)],
          ),
        ));
    }
    if (payload.failureMessage != null) {
      result
        ..add('FailureMessage')
        ..add(serializers.serialize(
          payload.failureMessage!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
