// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.describe_stack_resource_drifts_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart'
    as _i3;

part 'describe_stack_resource_drifts_input.g.dart';

abstract class DescribeStackResourceDriftsInput
    with
        _i1.HttpInput<DescribeStackResourceDriftsInput>,
        _i2.AWSEquatable<DescribeStackResourceDriftsInput>
    implements
        Built<DescribeStackResourceDriftsInput,
            DescribeStackResourceDriftsInputBuilder> {
  factory DescribeStackResourceDriftsInput({
    required String stackName,
    List<_i3.StackResourceDriftStatus>? stackResourceDriftStatusFilters,
    String? nextToken,
    int? maxResults,
  }) {
    return _$DescribeStackResourceDriftsInput._(
      stackName: stackName,
      stackResourceDriftStatusFilters: stackResourceDriftStatusFilters == null
          ? null
          : _i4.BuiltList(stackResourceDriftStatusFilters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeStackResourceDriftsInput.build(
          [void Function(DescribeStackResourceDriftsInputBuilder) updates]) =
      _$DescribeStackResourceDriftsInput;

  const DescribeStackResourceDriftsInput._();

  factory DescribeStackResourceDriftsInput.fromRequest(
    DescribeStackResourceDriftsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeStackResourceDriftsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackResourceDriftsInputBuilder b) {}

  /// The name of the stack for which you want drift information.
  String get stackName;

  /// The resource drift status values to use as filters for the resource drift results returned.
  ///
  /// *   `DELETED`: The resource differs from its expected template configuration in that the resource has been deleted.
  ///
  /// *   `MODIFIED`: One or more resource properties differ from their expected template values.
  ///
  /// *   `IN_SYNC`: The resource's actual configuration matches its expected template configuration.
  ///
  /// *   `NOT_CHECKED`: CloudFormation doesn't currently return this value.
  _i4.BuiltList<_i3.StackResourceDriftStatus>?
      get stackResourceDriftStatusFilters;

  /// A string that identifies the next page of stack resource drift results.
  String? get nextToken;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;
  @override
  DescribeStackResourceDriftsInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        stackResourceDriftStatusFilters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStackResourceDriftsInput');
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'stackResourceDriftStatusFilters',
      stackResourceDriftStatusFilters,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    return helper.toString();
  }
}

class DescribeStackResourceDriftsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeStackResourceDriftsInput> {
  const DescribeStackResourceDriftsInputAwsQuerySerializer()
      : super('DescribeStackResourceDriftsInput');

  @override
  Iterable<Type> get types => const [
        DescribeStackResourceDriftsInput,
        _$DescribeStackResourceDriftsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackResourceDriftsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackResourceDriftsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'StackResourceDriftStatusFilters':
          if (value != null) {
            result.stackResourceDriftStatusFilters.replace(
                (const _i1.XmlBuiltListSerializer(
                        indexer: _i1.XmlIndexer.awsQueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.StackResourceDriftStatus)],
              ),
            ) as _i4.BuiltList<_i3.StackResourceDriftStatus>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as DescribeStackResourceDriftsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeStackResourceDriftsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        payload.stackName,
        specifiedType: const FullType(String),
      ));
    if (payload.stackResourceDriftStatusFilters != null) {
      result
        ..add(const _i1.XmlElementName('StackResourceDriftStatusFilters'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.stackResourceDriftStatusFilters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.StackResourceDriftStatus)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxResults != null) {
      result
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
