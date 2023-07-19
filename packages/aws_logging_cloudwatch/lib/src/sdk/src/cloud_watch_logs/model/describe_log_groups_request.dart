// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.describe_log_groups_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_log_groups_request.g.dart';

abstract class DescribeLogGroupsRequest
    with
        _i1.HttpInput<DescribeLogGroupsRequest>,
        _i2.AWSEquatable<DescribeLogGroupsRequest>
    implements
        Built<DescribeLogGroupsRequest, DescribeLogGroupsRequestBuilder> {
  factory DescribeLogGroupsRequest({
    List<String>? accountIdentifiers,
    String? logGroupNamePrefix,
    String? logGroupNamePattern,
    String? nextToken,
    int? limit,
    bool? includeLinkedAccounts,
  }) {
    return _$DescribeLogGroupsRequest._(
      accountIdentifiers:
          accountIdentifiers == null ? null : _i3.BuiltList(accountIdentifiers),
      logGroupNamePrefix: logGroupNamePrefix,
      logGroupNamePattern: logGroupNamePattern,
      nextToken: nextToken,
      limit: limit,
      includeLinkedAccounts: includeLinkedAccounts,
    );
  }

  factory DescribeLogGroupsRequest.build(
          [void Function(DescribeLogGroupsRequestBuilder) updates]) =
      _$DescribeLogGroupsRequest;

  const DescribeLogGroupsRequest._();

  factory DescribeLogGroupsRequest.fromRequest(
    DescribeLogGroupsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeLogGroupsRequest>>
      serializers = [DescribeLogGroupsRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLogGroupsRequestBuilder b) {}

  /// When `includeLinkedAccounts` is set to `True`, use this parameter to specify the list of accounts to search. You can specify as many as 20 account IDs in the array.
  _i3.BuiltList<String>? get accountIdentifiers;

  /// The prefix to match.
  ///
  /// `logGroupNamePrefix` and `logGroupNamePattern` are mutually exclusive. Only one of these parameters can be passed.
  String? get logGroupNamePrefix;

  /// If you specify a string for this parameter, the operation returns only log groups that have names that match the string based on a case-sensitive substring search. For example, if you specify `Foo`, log groups named `FooBar`, `aws/Foo`, and `GroupFoo` would match, but `foo`, `F/o/o` and `Froo` would not match.
  ///
  /// `logGroupNamePattern` and `logGroupNamePrefix` are mutually exclusive. Only one of these parameters can be passed.
  String? get logGroupNamePattern;

  /// The token for the next set of items to return. (You received this token from a previous call.)
  String? get nextToken;

  /// The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
  int? get limit;

  /// If you are using a monitoring account, set this to `True` to have the operation return log groups in the accounts listed in `accountIdentifiers`.
  ///
  /// If this parameter is set to `true` and `accountIdentifiers` contains a null value, the operation returns all log groups in the monitoring account and all log groups in all source accounts that are linked to the monitoring account.
  ///
  /// If you specify `includeLinkedAccounts` in your request, then `metricFilterCount`, `retentionInDays`, and `storedBytes` are not included in the response.
  bool? get includeLinkedAccounts;
  @override
  DescribeLogGroupsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accountIdentifiers,
        logGroupNamePrefix,
        logGroupNamePattern,
        nextToken,
        limit,
        includeLinkedAccounts,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLogGroupsRequest')
      ..add(
        'accountIdentifiers',
        accountIdentifiers,
      )
      ..add(
        'logGroupNamePrefix',
        logGroupNamePrefix,
      )
      ..add(
        'logGroupNamePattern',
        logGroupNamePattern,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'includeLinkedAccounts',
        includeLinkedAccounts,
      );
    return helper.toString();
  }
}

class DescribeLogGroupsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DescribeLogGroupsRequest> {
  const DescribeLogGroupsRequestAwsJson11Serializer()
      : super('DescribeLogGroupsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeLogGroupsRequest,
        _$DescribeLogGroupsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeLogGroupsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLogGroupsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accountIdentifiers':
          result.accountIdentifiers.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'logGroupNamePrefix':
          result.logGroupNamePrefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'logGroupNamePattern':
          result.logGroupNamePattern = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'includeLinkedAccounts':
          result.includeLinkedAccounts = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeLogGroupsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeLogGroupsRequest(
      :accountIdentifiers,
      :logGroupNamePrefix,
      :logGroupNamePattern,
      :nextToken,
      :limit,
      :includeLinkedAccounts
    ) = object;
    if (accountIdentifiers != null) {
      result$
        ..add('accountIdentifiers')
        ..add(serializers.serialize(
          accountIdentifiers,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (logGroupNamePrefix != null) {
      result$
        ..add('logGroupNamePrefix')
        ..add(serializers.serialize(
          logGroupNamePrefix,
          specifiedType: const FullType(String),
        ));
    }
    if (logGroupNamePattern != null) {
      result$
        ..add('logGroupNamePattern')
        ..add(serializers.serialize(
          logGroupNamePattern,
          specifiedType: const FullType(String),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('nextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (limit != null) {
      result$
        ..add('limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    if (includeLinkedAccounts != null) {
      result$
        ..add('includeLinkedAccounts')
        ..add(serializers.serialize(
          includeLinkedAccounts,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
