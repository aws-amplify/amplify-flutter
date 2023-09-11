// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_endpoint_connection_notification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_vpc_endpoint_connection_notification_request.g.dart';

abstract class ModifyVpcEndpointConnectionNotificationRequest
    with
        _i1.HttpInput<ModifyVpcEndpointConnectionNotificationRequest>,
        _i2.AWSEquatable<ModifyVpcEndpointConnectionNotificationRequest>
    implements
        Built<ModifyVpcEndpointConnectionNotificationRequest,
            ModifyVpcEndpointConnectionNotificationRequestBuilder> {
  factory ModifyVpcEndpointConnectionNotificationRequest({
    bool? dryRun,
    String? connectionNotificationId,
    String? connectionNotificationArn,
    List<String>? connectionEvents,
  }) {
    dryRun ??= false;
    return _$ModifyVpcEndpointConnectionNotificationRequest._(
      dryRun: dryRun,
      connectionNotificationId: connectionNotificationId,
      connectionNotificationArn: connectionNotificationArn,
      connectionEvents:
          connectionEvents == null ? null : _i3.BuiltList(connectionEvents),
    );
  }

  factory ModifyVpcEndpointConnectionNotificationRequest.build(
      [void Function(ModifyVpcEndpointConnectionNotificationRequestBuilder)
          updates]) = _$ModifyVpcEndpointConnectionNotificationRequest;

  const ModifyVpcEndpointConnectionNotificationRequest._();

  factory ModifyVpcEndpointConnectionNotificationRequest.fromRequest(
    ModifyVpcEndpointConnectionNotificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyVpcEndpointConnectionNotificationRequest>>
      serializers = [
    ModifyVpcEndpointConnectionNotificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointConnectionNotificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the notification.
  String? get connectionNotificationId;

  /// The ARN for the SNS topic for the notification.
  String? get connectionNotificationArn;

  /// The events for the endpoint. Valid values are `Accept`, `Connect`, `Delete`, and `Reject`.
  _i3.BuiltList<String>? get connectionEvents;
  @override
  ModifyVpcEndpointConnectionNotificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        connectionNotificationId,
        connectionNotificationArn,
        connectionEvents,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVpcEndpointConnectionNotificationRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'connectionNotificationId',
        connectionNotificationId,
      )
      ..add(
        'connectionNotificationArn',
        connectionNotificationArn,
      )
      ..add(
        'connectionEvents',
        connectionEvents,
      );
    return helper.toString();
  }
}

class ModifyVpcEndpointConnectionNotificationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ModifyVpcEndpointConnectionNotificationRequest> {
  const ModifyVpcEndpointConnectionNotificationRequestEc2QuerySerializer()
      : super('ModifyVpcEndpointConnectionNotificationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointConnectionNotificationRequest,
        _$ModifyVpcEndpointConnectionNotificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointConnectionNotificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointConnectionNotificationRequestBuilder();
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
        case 'ConnectionNotificationArn':
          result.connectionNotificationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConnectionEvents':
          result.connectionEvents.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcEndpointConnectionNotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcEndpointConnectionNotificationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointConnectionNotificationRequest(
      :dryRun,
      :connectionNotificationId,
      :connectionNotificationArn,
      :connectionEvents
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
    if (connectionNotificationArn != null) {
      result$
        ..add(const _i1.XmlElementName('ConnectionNotificationArn'))
        ..add(serializers.serialize(
          connectionNotificationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (connectionEvents != null) {
      result$
        ..add(const _i1.XmlElementName('ConnectionEvents'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          connectionEvents,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
