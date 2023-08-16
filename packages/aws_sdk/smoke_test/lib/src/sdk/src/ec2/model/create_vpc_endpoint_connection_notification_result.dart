// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_endpoint_connection_notification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification.dart';

part 'create_vpc_endpoint_connection_notification_result.g.dart';

abstract class CreateVpcEndpointConnectionNotificationResult
    with
        _i1.AWSEquatable<CreateVpcEndpointConnectionNotificationResult>
    implements
        Built<CreateVpcEndpointConnectionNotificationResult,
            CreateVpcEndpointConnectionNotificationResultBuilder> {
  factory CreateVpcEndpointConnectionNotificationResult({
    ConnectionNotification? connectionNotification,
    String? clientToken,
  }) {
    return _$CreateVpcEndpointConnectionNotificationResult._(
      connectionNotification: connectionNotification,
      clientToken: clientToken,
    );
  }

  factory CreateVpcEndpointConnectionNotificationResult.build(
      [void Function(CreateVpcEndpointConnectionNotificationResultBuilder)
          updates]) = _$CreateVpcEndpointConnectionNotificationResult;

  const CreateVpcEndpointConnectionNotificationResult._();

  /// Constructs a [CreateVpcEndpointConnectionNotificationResult] from a [payload] and [response].
  factory CreateVpcEndpointConnectionNotificationResult.fromResponse(
    CreateVpcEndpointConnectionNotificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<CreateVpcEndpointConnectionNotificationResult>>
      serializers = [
    CreateVpcEndpointConnectionNotificationResultEc2QuerySerializer()
  ];

  /// Information about the notification.
  ConnectionNotification? get connectionNotification;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;
  @override
  List<Object?> get props => [
        connectionNotification,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVpcEndpointConnectionNotificationResult')
      ..add(
        'connectionNotification',
        connectionNotification,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CreateVpcEndpointConnectionNotificationResultEc2QuerySerializer
    extends _i2
    .StructuredSmithySerializer<CreateVpcEndpointConnectionNotificationResult> {
  const CreateVpcEndpointConnectionNotificationResultEc2QuerySerializer()
      : super('CreateVpcEndpointConnectionNotificationResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointConnectionNotificationResult,
        _$CreateVpcEndpointConnectionNotificationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointConnectionNotificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointConnectionNotificationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'connectionNotification':
          result.connectionNotification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ConnectionNotification),
          ) as ConnectionNotification));
        case 'clientToken':
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
    CreateVpcEndpointConnectionNotificationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVpcEndpointConnectionNotificationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcEndpointConnectionNotificationResult(
      :connectionNotification,
      :clientToken
    ) = object;
    if (connectionNotification != null) {
      result$
        ..add(const _i2.XmlElementName('ConnectionNotification'))
        ..add(serializers.serialize(
          connectionNotification,
          specifiedType: const FullType(ConnectionNotification),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i2.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
