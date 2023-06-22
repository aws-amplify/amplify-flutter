// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.list_stack_sets_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_status.dart'
    as _i3;

part 'list_stack_sets_input.g.dart';

abstract class ListStackSetsInput
    with _i1.HttpInput<ListStackSetsInput>, _i2.AWSEquatable<ListStackSetsInput>
    implements Built<ListStackSetsInput, ListStackSetsInputBuilder> {
  factory ListStackSetsInput({
    String? nextToken,
    int? maxResults,
    _i3.StackSetStatus? status,
    _i4.CallAs? callAs,
  }) {
    return _$ListStackSetsInput._(
      nextToken: nextToken,
      maxResults: maxResults,
      status: status,
      callAs: callAs,
    );
  }

  factory ListStackSetsInput.build(
          [void Function(ListStackSetsInputBuilder) updates]) =
      _$ListStackSetsInput;

  const ListStackSetsInput._();

  factory ListStackSetsInput.fromRequest(
    ListStackSetsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListStackSetsInput>> serializers = [
    ListStackSetsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStackSetsInputBuilder b) {}

  /// If the previous paginated request didn't return all the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSets` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;

  /// The status of the stack sets that you want to get summary information about.
  _i3.StackSetStatus? get status;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i4.CallAs? get callAs;
  @override
  ListStackSetsInput getPayload() => this;
  @override
  List<Object?> get props => [
        nextToken,
        maxResults,
        status,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStackSetsInput')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class ListStackSetsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListStackSetsInput> {
  const ListStackSetsInputAwsQuerySerializer() : super('ListStackSetsInput');

  @override
  Iterable<Type> get types => const [
        ListStackSetsInput,
        _$ListStackSetsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackSetsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackSetsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StackSetStatus),
          ) as _i3.StackSetStatus);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.CallAs),
          ) as _i4.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListStackSetsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListStackSetsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackSetsInput(:nextToken, :maxResults, :status, :callAs) =
        object;
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
    if (status != null) {
      result$
        ..add(const _i1.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i3.StackSetStatus),
        ));
    }
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i4.CallAs),
        ));
    }
    return result$;
  }
}
