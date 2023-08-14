// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_endpoint_connection_notification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_vpc_endpoint_connection_notification_request.g.dart';

abstract class CreateVpcEndpointConnectionNotificationRequest
    with
        _i1.HttpInput<CreateVpcEndpointConnectionNotificationRequest>,
        _i2.AWSEquatable<CreateVpcEndpointConnectionNotificationRequest>
    implements
        Built<CreateVpcEndpointConnectionNotificationRequest,
            CreateVpcEndpointConnectionNotificationRequestBuilder> {
  factory CreateVpcEndpointConnectionNotificationRequest({
    bool? dryRun,
    String? serviceId,
    String? vpcEndpointId,
    String? connectionNotificationArn,
    List<String>? connectionEvents,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$CreateVpcEndpointConnectionNotificationRequest._(
      dryRun: dryRun,
      serviceId: serviceId,
      vpcEndpointId: vpcEndpointId,
      connectionNotificationArn: connectionNotificationArn,
      connectionEvents:
          connectionEvents == null ? null : _i3.BuiltList(connectionEvents),
      clientToken: clientToken,
    );
  }

  factory CreateVpcEndpointConnectionNotificationRequest.build(
      [void Function(CreateVpcEndpointConnectionNotificationRequestBuilder)
          updates]) = _$CreateVpcEndpointConnectionNotificationRequest;

  const CreateVpcEndpointConnectionNotificationRequest._();

  factory CreateVpcEndpointConnectionNotificationRequest.fromRequest(
    CreateVpcEndpointConnectionNotificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateVpcEndpointConnectionNotificationRequest>>
      serializers = [
    CreateVpcEndpointConnectionNotificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcEndpointConnectionNotificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the endpoint service.
  String? get serviceId;

  /// The ID of the endpoint.
  String? get vpcEndpointId;

  /// The ARN of the SNS topic for the notifications.
  String? get connectionNotificationArn;

  /// The endpoint events for which to receive notifications. Valid values are `Accept`, `Connect`, `Delete`, and `Reject`.
  _i3.BuiltList<String>? get connectionEvents;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CreateVpcEndpointConnectionNotificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceId,
        vpcEndpointId,
        connectionNotificationArn,
        connectionEvents,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVpcEndpointConnectionNotificationRequest')
      ..add(
        'dryRun',
        dryRun,
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
        'connectionNotificationArn',
        connectionNotificationArn,
      )
      ..add(
        'connectionEvents',
        connectionEvents,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CreateVpcEndpointConnectionNotificationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        CreateVpcEndpointConnectionNotificationRequest> {
  const CreateVpcEndpointConnectionNotificationRequestEc2QuerySerializer()
      : super('CreateVpcEndpointConnectionNotificationRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointConnectionNotificationRequest,
        _$CreateVpcEndpointConnectionNotificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointConnectionNotificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointConnectionNotificationRequestBuilder();
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
        case 'ServiceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpcEndpointId':
          result.vpcEndpointId = (serializers.deserialize(
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
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    CreateVpcEndpointConnectionNotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVpcEndpointConnectionNotificationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcEndpointConnectionNotificationRequest(
      :dryRun,
      :serviceId,
      :vpcEndpointId,
      :connectionNotificationArn,
      :connectionEvents,
      :clientToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (serviceId != null) {
      result$
        ..add(const _i1.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcEndpointId'))
        ..add(serializers.serialize(
          vpcEndpointId,
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
