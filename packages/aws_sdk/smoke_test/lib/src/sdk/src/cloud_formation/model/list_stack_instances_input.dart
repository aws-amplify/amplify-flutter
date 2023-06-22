// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.list_stack_instances_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_filter.dart'
    as _i3;

part 'list_stack_instances_input.g.dart';

abstract class ListStackInstancesInput
    with
        _i1.HttpInput<ListStackInstancesInput>,
        _i2.AWSEquatable<ListStackInstancesInput>
    implements Built<ListStackInstancesInput, ListStackInstancesInputBuilder> {
  factory ListStackInstancesInput({
    required String stackSetName,
    String? nextToken,
    int? maxResults,
    List<_i3.StackInstanceFilter>? filters,
    String? stackInstanceAccount,
    String? stackInstanceRegion,
    _i4.CallAs? callAs,
  }) {
    return _$ListStackInstancesInput._(
      stackSetName: stackSetName,
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters == null ? null : _i5.BuiltList(filters),
      stackInstanceAccount: stackInstanceAccount,
      stackInstanceRegion: stackInstanceRegion,
      callAs: callAs,
    );
  }

  factory ListStackInstancesInput.build(
          [void Function(ListStackInstancesInputBuilder) updates]) =
      _$ListStackInstancesInput;

  const ListStackInstancesInput._();

  factory ListStackInstancesInput.fromRequest(
    ListStackInstancesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListStackInstancesInput>> serializers =
      [ListStackInstancesInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStackInstancesInputBuilder b) {}

  /// The name or unique ID of the stack set that you want to list stack instances for.
  String get stackSetName;

  /// If the previous request didn't return all the remaining results, the response's `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackInstances` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;

  /// The filter to apply to stack instances
  _i5.BuiltList<_i3.StackInstanceFilter>? get filters;

  /// The name of the Amazon Web Services account that you want to list stack instances for.
  String? get stackInstanceAccount;

  /// The name of the Region where you want to list stack instances.
  String? get stackInstanceRegion;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
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
  ListStackInstancesInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        nextToken,
        maxResults,
        filters,
        stackInstanceAccount,
        stackInstanceRegion,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStackInstancesInput')
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
        'filters',
        filters,
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
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class ListStackInstancesInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListStackInstancesInput> {
  const ListStackInstancesInputAwsQuerySerializer()
      : super('ListStackInstancesInput');

  @override
  Iterable<Type> get types => const [
        ListStackInstancesInput,
        _$ListStackInstancesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackInstancesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackInstancesInputBuilder();
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
        case 'Filters':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.StackInstanceFilter)],
            ),
          ) as _i5.BuiltList<_i3.StackInstanceFilter>));
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
    ListStackInstancesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListStackInstancesInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackInstancesInput(
      :stackSetName,
      :nextToken,
      :maxResults,
      :filters,
      :stackInstanceAccount,
      :stackInstanceRegion,
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
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filters'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.StackInstanceFilter)],
          ),
        ));
    }
    if (stackInstanceAccount != null) {
      result$
        ..add(const _i1.XmlElementName('StackInstanceAccount'))
        ..add(serializers.serialize(
          stackInstanceAccount,
          specifiedType: const FullType(String),
        ));
    }
    if (stackInstanceRegion != null) {
      result$
        ..add(const _i1.XmlElementName('StackInstanceRegion'))
        ..add(serializers.serialize(
          stackInstanceRegion,
          specifiedType: const FullType(String),
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
