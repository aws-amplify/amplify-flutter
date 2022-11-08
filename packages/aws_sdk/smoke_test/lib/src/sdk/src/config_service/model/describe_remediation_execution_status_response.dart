// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_remediation_execution_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_status.dart'
    as _i2;

part 'describe_remediation_execution_status_response.g.dart';

abstract class DescribeRemediationExecutionStatusResponse
    with
        _i1.AWSEquatable<DescribeRemediationExecutionStatusResponse>
    implements
        Built<DescribeRemediationExecutionStatusResponse,
            DescribeRemediationExecutionStatusResponseBuilder> {
  factory DescribeRemediationExecutionStatusResponse({
    String? nextToken,
    List<_i2.RemediationExecutionStatus>? remediationExecutionStatuses,
  }) {
    return _$DescribeRemediationExecutionStatusResponse._(
      nextToken: nextToken,
      remediationExecutionStatuses: remediationExecutionStatuses == null
          ? null
          : _i3.BuiltList(remediationExecutionStatuses),
    );
  }

  factory DescribeRemediationExecutionStatusResponse.build(
      [void Function(DescribeRemediationExecutionStatusResponseBuilder)
          updates]) = _$DescribeRemediationExecutionStatusResponse;

  const DescribeRemediationExecutionStatusResponse._();

  /// Constructs a [DescribeRemediationExecutionStatusResponse] from a [payload] and [response].
  factory DescribeRemediationExecutionStatusResponse.fromResponse(
    DescribeRemediationExecutionStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeRemediationExecutionStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRemediationExecutionStatusResponseBuilder b) {}

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// Returns a list of remediation execution statuses objects.
  _i3.BuiltList<_i2.RemediationExecutionStatus>?
      get remediationExecutionStatuses;
  @override
  List<Object?> get props => [
        nextToken,
        remediationExecutionStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeRemediationExecutionStatusResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'remediationExecutionStatuses',
      remediationExecutionStatuses,
    );
    return helper.toString();
  }
}

class DescribeRemediationExecutionStatusResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeRemediationExecutionStatusResponse> {
  const DescribeRemediationExecutionStatusResponseAwsJson11Serializer()
      : super('DescribeRemediationExecutionStatusResponse');

  @override
  Iterable<Type> get types => const [
        DescribeRemediationExecutionStatusResponse,
        _$DescribeRemediationExecutionStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeRemediationExecutionStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRemediationExecutionStatusResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RemediationExecutionStatuses':
          if (value != null) {
            result.remediationExecutionStatuses
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.RemediationExecutionStatus)],
              ),
            ) as _i3.BuiltList<_i2.RemediationExecutionStatus>));
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
    final payload = (object as DescribeRemediationExecutionStatusResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.remediationExecutionStatuses != null) {
      result
        ..add('RemediationExecutionStatuses')
        ..add(serializers.serialize(
          payload.remediationExecutionStatuses!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.RemediationExecutionStatus)],
          ),
        ));
    }
    return result;
  }
}
