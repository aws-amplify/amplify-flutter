// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_endpoint_connection_notifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification.dart';

part 'describe_vpc_endpoint_connection_notifications_result.g.dart';

abstract class DescribeVpcEndpointConnectionNotificationsResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointConnectionNotificationsResult>
    implements
        Built<DescribeVpcEndpointConnectionNotificationsResult,
            DescribeVpcEndpointConnectionNotificationsResultBuilder> {
  factory DescribeVpcEndpointConnectionNotificationsResult({
    List<ConnectionNotification>? connectionNotificationSet,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointConnectionNotificationsResult._(
      connectionNotificationSet: connectionNotificationSet == null
          ? null
          : _i2.BuiltList(connectionNotificationSet),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointConnectionNotificationsResult.build(
      [void Function(DescribeVpcEndpointConnectionNotificationsResultBuilder)
          updates]) = _$DescribeVpcEndpointConnectionNotificationsResult;

  const DescribeVpcEndpointConnectionNotificationsResult._();

  /// Constructs a [DescribeVpcEndpointConnectionNotificationsResult] from a [payload] and [response].
  factory DescribeVpcEndpointConnectionNotificationsResult.fromResponse(
    DescribeVpcEndpointConnectionNotificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3
          .SmithySerializer<DescribeVpcEndpointConnectionNotificationsResult>>
      serializers = [
    DescribeVpcEndpointConnectionNotificationsResultEc2QuerySerializer()
  ];

  /// The notifications.
  _i2.BuiltList<ConnectionNotification>? get connectionNotificationSet;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        connectionNotificationSet,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointConnectionNotificationsResult')
      ..add(
        'connectionNotificationSet',
        connectionNotificationSet,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVpcEndpointConnectionNotificationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeVpcEndpointConnectionNotificationsResult> {
  const DescribeVpcEndpointConnectionNotificationsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointConnectionNotificationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointConnectionNotificationsResult,
        _$DescribeVpcEndpointConnectionNotificationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointConnectionNotificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointConnectionNotificationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'connectionNotificationSet':
          result.connectionNotificationSet
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ConnectionNotification)],
            ),
          ) as _i2.BuiltList<ConnectionNotification>));
        case 'nextToken':
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
    DescribeVpcEndpointConnectionNotificationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcEndpointConnectionNotificationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcEndpointConnectionNotificationsResult(
      :connectionNotificationSet,
      :nextToken
    ) = object;
    if (connectionNotificationSet != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionNotificationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          connectionNotificationSet,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ConnectionNotification)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
