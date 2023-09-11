// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.list_stack_instance_resource_drifts_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart';

part 'list_stack_instance_resource_drifts_input.g.dart';

abstract class ListStackInstanceResourceDriftsInput
    with
        _i1.HttpInput<ListStackInstanceResourceDriftsInput>,
        _i2.AWSEquatable<ListStackInstanceResourceDriftsInput>
    implements
        Built<ListStackInstanceResourceDriftsInput,
            ListStackInstanceResourceDriftsInputBuilder> {
  factory ListStackInstanceResourceDriftsInput({
    required String stackSetName,
    String? nextToken,
    int? maxResults,
    List<StackResourceDriftStatus>? stackInstanceResourceDriftStatuses,
    required String stackInstanceAccount,
    required String stackInstanceRegion,
    required String operationId,
    CallAs? callAs,
  }) {
    return _$ListStackInstanceResourceDriftsInput._(
      stackSetName: stackSetName,
      nextToken: nextToken,
      maxResults: maxResults,
      stackInstanceResourceDriftStatuses:
          stackInstanceResourceDriftStatuses == null
              ? null
              : _i3.BuiltList(stackInstanceResourceDriftStatuses),
      stackInstanceAccount: stackInstanceAccount,
      stackInstanceRegion: stackInstanceRegion,
      operationId: operationId,
      callAs: callAs,
    );
  }

  factory ListStackInstanceResourceDriftsInput.build(
      [void Function(ListStackInstanceResourceDriftsInputBuilder)
          updates]) = _$ListStackInstanceResourceDriftsInput;

  const ListStackInstanceResourceDriftsInput._();

  factory ListStackInstanceResourceDriftsInput.fromRequest(
    ListStackInstanceResourceDriftsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListStackInstanceResourceDriftsInput>>
      serializers = [ListStackInstanceResourceDriftsInputAwsQuerySerializer()];

  /// The name or unique ID of the stack set that you want to list drifted resources for.
  String get stackSetName;

  /// If the previous paginated request didn't return all of the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;

  /// The resource drift status of the stack instance.
  ///
  /// *   `DELETED`: The resource differs from its expected template configuration in that the resource has been deleted.
  ///
  /// *   `MODIFIED`: One or more resource properties differ from their expected template values.
  ///
  /// *   `IN_SYNC`: The resource's actual configuration matches its expected template configuration.
  ///
  /// *   `NOT_CHECKED`: CloudFormation doesn't currently return this value.
  _i3.BuiltList<StackResourceDriftStatus>?
      get stackInstanceResourceDriftStatuses;

  /// The name of the Amazon Web Services account that you want to list resource drifts for.
  String get stackInstanceAccount;

  /// The name of the Region where you want to list resource drifts.
  String get stackInstanceRegion;

  /// The unique ID of the drift operation.
  String get operationId;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  CallAs? get callAs;
  @override
  ListStackInstanceResourceDriftsInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        nextToken,
        maxResults,
        stackInstanceResourceDriftStatuses,
        stackInstanceAccount,
        stackInstanceRegion,
        operationId,
        callAs,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListStackInstanceResourceDriftsInput')
          ..add(
            'stackSetName',
            stackSetName,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'stackInstanceResourceDriftStatuses',
            stackInstanceResourceDriftStatuses,
          )
          ..add(
            'stackInstanceAccount',
            stackInstanceAccount,
          )
          ..add(
            'stackInstanceRegion',
            stackInstanceRegion,
          )
          ..add(
            'operationId',
            operationId,
          )
          ..add(
            'callAs',
            callAs,
          );
    return helper.toString();
  }
}

class ListStackInstanceResourceDriftsInputAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<ListStackInstanceResourceDriftsInput> {
  const ListStackInstanceResourceDriftsInputAwsQuerySerializer()
      : super('ListStackInstanceResourceDriftsInput');

  @override
  Iterable<Type> get types => const [
        ListStackInstanceResourceDriftsInput,
        _$ListStackInstanceResourceDriftsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackInstanceResourceDriftsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackInstanceResourceDriftsInputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'StackInstanceResourceDriftStatuses':
          result.stackInstanceResourceDriftStatuses.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(StackResourceDriftStatus)],
            ),
          ) as _i3.BuiltList<StackResourceDriftStatus>));
        case 'StackInstanceAccount':
          result.stackInstanceAccount = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackInstanceRegion':
          result.stackInstanceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OperationId':
          result.operationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(CallAs),
          ) as CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListStackInstanceResourceDriftsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListStackInstanceResourceDriftsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackInstanceResourceDriftsInput(
      :stackSetName,
      :nextToken,
      :maxResults,
      :stackInstanceResourceDriftStatuses,
      :stackInstanceAccount,
      :stackInstanceRegion,
      :operationId,
      :callAs
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        stackSetName,
        specifiedType: const FullType(String),
      ));
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
          specifiedType: const FullType(int),
        ));
    }
    if (stackInstanceResourceDriftStatuses != null) {
      result$
        ..add(const _i1.XmlElementName('StackInstanceResourceDriftStatuses'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stackInstanceResourceDriftStatuses,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(StackResourceDriftStatus)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('StackInstanceAccount'))
      ..add(serializers.serialize(
        stackInstanceAccount,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('StackInstanceRegion'))
      ..add(serializers.serialize(
        stackInstanceRegion,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('OperationId'))
      ..add(serializers.serialize(
        operationId,
        specifiedType: const FullType(String),
      ));
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType(CallAs),
        ));
    }
    return result$;
  }
}
