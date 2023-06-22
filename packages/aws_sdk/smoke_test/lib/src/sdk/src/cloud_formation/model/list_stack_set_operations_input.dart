// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.list_stack_set_operations_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i3;

part 'list_stack_set_operations_input.g.dart';

abstract class ListStackSetOperationsInput
    with
        _i1.HttpInput<ListStackSetOperationsInput>,
        _i2.AWSEquatable<ListStackSetOperationsInput>
    implements
        Built<ListStackSetOperationsInput, ListStackSetOperationsInputBuilder> {
  factory ListStackSetOperationsInput({
    required String stackSetName,
    String? nextToken,
    int? maxResults,
    _i3.CallAs? callAs,
  }) {
    return _$ListStackSetOperationsInput._(
      stackSetName: stackSetName,
      nextToken: nextToken,
      maxResults: maxResults,
      callAs: callAs,
    );
  }

  factory ListStackSetOperationsInput.build(
          [void Function(ListStackSetOperationsInputBuilder) updates]) =
      _$ListStackSetOperationsInput;

  const ListStackSetOperationsInput._();

  factory ListStackSetOperationsInput.fromRequest(
    ListStackSetOperationsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListStackSetOperationsInput>>
      serializers = [ListStackSetOperationsInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStackSetOperationsInputBuilder b) {}

  /// The name or unique ID of the stack set that you want to get operation summaries for.
  String get stackSetName;

  /// If the previous paginated request didn't return all of the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSetOperations` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i3.CallAs? get callAs;
  @override
  ListStackSetOperationsInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        nextToken,
        maxResults,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStackSetOperationsInput')
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
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class ListStackSetOperationsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListStackSetOperationsInput> {
  const ListStackSetOperationsInputAwsQuerySerializer()
      : super('ListStackSetOperationsInput');

  @override
  Iterable<Type> get types => const [
        ListStackSetOperationsInput,
        _$ListStackSetOperationsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackSetOperationsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackSetOperationsInputBuilder();
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
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CallAs),
          ) as _i3.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListStackSetOperationsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListStackSetOperationsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackSetOperationsInput(
      :stackSetName,
      :nextToken,
      :maxResults,
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
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i3.CallAs),
        ));
    }
    return result$;
  }
}
