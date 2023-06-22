// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i1.SmithySerializer<DescribeStackResourceDriftsInput>>
      serializers = [DescribeStackResourceDriftsInputAwsQuerySerializer()];

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
        newBuiltValueToStringHelper('DescribeStackResourceDriftsInput')
          ..add(
            'stackName',
            stackName,
          )
          ..add(
            'stackResourceDriftStatusFilters',
            stackResourceDriftStatusFilters,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackResourceDriftStatusFilters':
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
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStackResourceDriftsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeStackResourceDriftsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackResourceDriftsInput(
      :stackName,
      :stackResourceDriftStatusFilters,
      :nextToken,
      :maxResults
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    if (stackResourceDriftStatusFilters != null) {
      result$
        ..add(const _i1.XmlElementName('StackResourceDriftStatusFilters'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stackResourceDriftStatusFilters,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.StackResourceDriftStatus)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (maxResults != null) {
      result$
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          maxResults,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
