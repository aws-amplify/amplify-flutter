// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_endpoint_connection_notifications_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_vpc_endpoint_connection_notifications_request.g.dart';

abstract class DescribeVpcEndpointConnectionNotificationsRequest
    with
        _i1.HttpInput<DescribeVpcEndpointConnectionNotificationsRequest>,
        _i2.AWSEquatable<DescribeVpcEndpointConnectionNotificationsRequest>
    implements
        Built<DescribeVpcEndpointConnectionNotificationsRequest,
            DescribeVpcEndpointConnectionNotificationsRequestBuilder> {
  factory DescribeVpcEndpointConnectionNotificationsRequest({
    bool? dryRun,
    String? connectionNotificationId,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcEndpointConnectionNotificationsRequest._(
      dryRun: dryRun,
      connectionNotificationId: connectionNotificationId,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointConnectionNotificationsRequest.build(
      [void Function(DescribeVpcEndpointConnectionNotificationsRequestBuilder)
          updates]) = _$DescribeVpcEndpointConnectionNotificationsRequest;

  const DescribeVpcEndpointConnectionNotificationsRequest._();

  factory DescribeVpcEndpointConnectionNotificationsRequest.fromRequest(
    DescribeVpcEndpointConnectionNotificationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1
          .SmithySerializer<DescribeVpcEndpointConnectionNotificationsRequest>>
      serializers = [
    DescribeVpcEndpointConnectionNotificationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeVpcEndpointConnectionNotificationsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the notification.
  String? get connectionNotificationId;

  /// The filters.
  ///
  /// *   `connection-notification-arn` \- The ARN of the SNS topic for the notification.
  ///
  /// *   `connection-notification-id` \- The ID of the notification.
  ///
  /// *   `connection-notification-state` \- The state of the notification (`Enabled` | `Disabled`).
  ///
  /// *   `connection-notification-type` \- The type of notification (`Topic`).
  ///
  /// *   `service-id` \- The ID of the endpoint service.
  ///
  /// *   `vpc-endpoint-id` \- The ID of the VPC endpoint.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned `NextToken` value.
  int get maxResults;

  /// The token to request the next page of results.
  String? get nextToken;
  @override
  DescribeVpcEndpointConnectionNotificationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        connectionNotificationId,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointConnectionNotificationsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'connectionNotificationId',
        connectionNotificationId,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVpcEndpointConnectionNotificationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeVpcEndpointConnectionNotificationsRequest> {
  const DescribeVpcEndpointConnectionNotificationsRequestEc2QuerySerializer()
      : super('DescribeVpcEndpointConnectionNotificationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointConnectionNotificationsRequest,
        _$DescribeVpcEndpointConnectionNotificationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointConnectionNotificationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointConnectionNotificationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ConnectionNotificationId':
          result.connectionNotificationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
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
    DescribeVpcEndpointConnectionNotificationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcEndpointConnectionNotificationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcEndpointConnectionNotificationsRequest(
      :dryRun,
      :connectionNotificationId,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (connectionNotificationId != null) {
      result$
        ..add(const _i1.XmlElementName('ConnectionNotificationId'))
        ..add(serializers.serialize(
          connectionNotificationId,
          specifiedType: const FullType(String),
        ));
    }
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
