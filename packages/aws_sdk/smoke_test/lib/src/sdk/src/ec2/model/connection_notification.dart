// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.connection_notification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification_type.dart';

part 'connection_notification.g.dart';

/// Describes a connection notification for a VPC endpoint or VPC endpoint service.
abstract class ConnectionNotification
    with _i1.AWSEquatable<ConnectionNotification>
    implements Built<ConnectionNotification, ConnectionNotificationBuilder> {
  /// Describes a connection notification for a VPC endpoint or VPC endpoint service.
  factory ConnectionNotification({
    String? connectionNotificationId,
    String? serviceId,
    String? vpcEndpointId,
    ConnectionNotificationType? connectionNotificationType,
    String? connectionNotificationArn,
    List<String>? connectionEvents,
    ConnectionNotificationState? connectionNotificationState,
  }) {
    return _$ConnectionNotification._(
      connectionNotificationId: connectionNotificationId,
      serviceId: serviceId,
      vpcEndpointId: vpcEndpointId,
      connectionNotificationType: connectionNotificationType,
      connectionNotificationArn: connectionNotificationArn,
      connectionEvents:
          connectionEvents == null ? null : _i2.BuiltList(connectionEvents),
      connectionNotificationState: connectionNotificationState,
    );
  }

  /// Describes a connection notification for a VPC endpoint or VPC endpoint service.
  factory ConnectionNotification.build(
          [void Function(ConnectionNotificationBuilder) updates]) =
      _$ConnectionNotification;

  const ConnectionNotification._();

  static const List<_i3.SmithySerializer<ConnectionNotification>> serializers =
      [ConnectionNotificationEc2QuerySerializer()];

  /// The ID of the notification.
  String? get connectionNotificationId;

  /// The ID of the endpoint service.
  String? get serviceId;

  /// The ID of the VPC endpoint.
  String? get vpcEndpointId;

  /// The type of notification.
  ConnectionNotificationType? get connectionNotificationType;

  /// The ARN of the SNS topic for the notification.
  String? get connectionNotificationArn;

  /// The events for the notification. Valid values are `Accept`, `Connect`, `Delete`, and `Reject`.
  _i2.BuiltList<String>? get connectionEvents;

  /// The state of the notification.
  ConnectionNotificationState? get connectionNotificationState;
  @override
  List<Object?> get props => [
        connectionNotificationId,
        serviceId,
        vpcEndpointId,
        connectionNotificationType,
        connectionNotificationArn,
        connectionEvents,
        connectionNotificationState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConnectionNotification')
      ..add(
        'connectionNotificationId',
        connectionNotificationId,
      )
      ..add(
        'serviceId',
        serviceId,
      )
      ..add(
        'vpcEndpointId',
        vpcEndpointId,
      )
      ..add(
        'connectionNotificationType',
        connectionNotificationType,
      )
      ..add(
        'connectionNotificationArn',
        connectionNotificationArn,
      )
      ..add(
        'connectionEvents',
        connectionEvents,
      )
      ..add(
        'connectionNotificationState',
        connectionNotificationState,
      );
    return helper.toString();
  }
}

class ConnectionNotificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ConnectionNotification> {
  const ConnectionNotificationEc2QuerySerializer()
      : super('ConnectionNotification');

  @override
  Iterable<Type> get types => const [
        ConnectionNotification,
        _$ConnectionNotification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ConnectionNotification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConnectionNotificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'connectionNotificationId':
          result.connectionNotificationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'serviceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcEndpointId':
          result.vpcEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'connectionNotificationType':
          result.connectionNotificationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ConnectionNotificationType),
          ) as ConnectionNotificationType);
        case 'connectionNotificationArn':
          result.connectionNotificationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'connectionEvents':
          result.connectionEvents.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'connectionNotificationState':
          result.connectionNotificationState = (serializers.deserialize(
            value,
            specifiedType: const FullType(ConnectionNotificationState),
          ) as ConnectionNotificationState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConnectionNotification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ConnectionNotificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ConnectionNotification(
      :connectionNotificationId,
      :serviceId,
      :vpcEndpointId,
      :connectionNotificationType,
      :connectionNotificationArn,
      :connectionEvents,
      :connectionNotificationState
    ) = object;
    if (connectionNotificationId != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionNotificationId'))
        ..add(serializers.serialize(
          connectionNotificationId,
          specifiedType: const FullType(String),
        ));
    }
    if (serviceId != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcEndpointId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcEndpointId'))
        ..add(serializers.serialize(
          vpcEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (connectionNotificationType != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionNotificationType'))
        ..add(serializers.serialize(
          connectionNotificationType,
          specifiedType: const FullType.nullable(ConnectionNotificationType),
        ));
    }
    if (connectionNotificationArn != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionNotificationArn'))
        ..add(serializers.serialize(
          connectionNotificationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (connectionEvents != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionEvents'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          connectionEvents,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (connectionNotificationState != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionNotificationState'))
        ..add(serializers.serialize(
          connectionNotificationState,
          specifiedType: const FullType.nullable(ConnectionNotificationState),
        ));
    }
    return result$;
  }
}
