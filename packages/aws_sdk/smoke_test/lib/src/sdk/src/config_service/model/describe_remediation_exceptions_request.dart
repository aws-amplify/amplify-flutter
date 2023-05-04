// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_remediation_exceptions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_exception_resource_key.dart'
    as _i3;

part 'describe_remediation_exceptions_request.g.dart';

abstract class DescribeRemediationExceptionsRequest
    with
        _i1.HttpInput<DescribeRemediationExceptionsRequest>,
        _i2.AWSEquatable<DescribeRemediationExceptionsRequest>
    implements
        Built<DescribeRemediationExceptionsRequest,
            DescribeRemediationExceptionsRequestBuilder> {
  factory DescribeRemediationExceptionsRequest({
    required String configRuleName,
    List<_i3.RemediationExceptionResourceKey>? resourceKeys,
    int? limit,
    String? nextToken,
  }) {
    return _$DescribeRemediationExceptionsRequest._(
      configRuleName: configRuleName,
      resourceKeys: resourceKeys == null ? null : _i4.BuiltList(resourceKeys),
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeRemediationExceptionsRequest.build(
      [void Function(DescribeRemediationExceptionsRequestBuilder)
          updates]) = _$DescribeRemediationExceptionsRequest;

  const DescribeRemediationExceptionsRequest._();

  factory DescribeRemediationExceptionsRequest.fromRequest(
    DescribeRemediationExceptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeRemediationExceptionsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRemediationExceptionsRequestBuilder b) {}

  /// The name of the Config rule.
  String get configRuleName;

  /// An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys.
  _i4.BuiltList<_i3.RemediationExceptionResourceKey>? get resourceKeys;

  /// The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeRemediationExceptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        resourceKeys,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeRemediationExceptionsRequest');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'resourceKeys',
      resourceKeys,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeRemediationExceptionsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeRemediationExceptionsRequest> {
  const DescribeRemediationExceptionsRequestAwsJson11Serializer()
      : super('DescribeRemediationExceptionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeRemediationExceptionsRequest,
        _$DescribeRemediationExceptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeRemediationExceptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRemediationExceptionsRequestBuilder();
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
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DescribeRemediationExceptionsRequest);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
    ];
    final DescribeRemediationExceptionsRequest(
      :resourceKeys,
      :limit,
      :nextToken
    ) = payload;
    if (resourceKeys != null) {
      result
        ..add('ResourceKeys')
        ..add(serializers.serialize(
          resourceKeys,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.RemediationExceptionResourceKey)],
          ),
        ));
    }
    if (limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    if (nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
