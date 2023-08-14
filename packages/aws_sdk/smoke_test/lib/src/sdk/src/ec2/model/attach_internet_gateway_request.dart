// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.attach_internet_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'attach_internet_gateway_request.g.dart';

abstract class AttachInternetGatewayRequest
    with
        _i1.HttpInput<AttachInternetGatewayRequest>,
        _i2.AWSEquatable<AttachInternetGatewayRequest>
    implements
        Built<AttachInternetGatewayRequest,
            AttachInternetGatewayRequestBuilder> {
  factory AttachInternetGatewayRequest({
    bool? dryRun,
    String? internetGatewayId,
    String? vpcId,
  }) {
    dryRun ??= false;
    return _$AttachInternetGatewayRequest._(
      dryRun: dryRun,
      internetGatewayId: internetGatewayId,
      vpcId: vpcId,
    );
  }

  factory AttachInternetGatewayRequest.build(
          [void Function(AttachInternetGatewayRequestBuilder) updates]) =
      _$AttachInternetGatewayRequest;

  const AttachInternetGatewayRequest._();

  factory AttachInternetGatewayRequest.fromRequest(
    AttachInternetGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AttachInternetGatewayRequest>>
      serializers = [AttachInternetGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachInternetGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the internet gateway.
  String? get internetGatewayId;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  AttachInternetGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        internetGatewayId,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachInternetGatewayRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'internetGatewayId',
        internetGatewayId,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class AttachInternetGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AttachInternetGatewayRequest> {
  const AttachInternetGatewayRequestEc2QuerySerializer()
      : super('AttachInternetGatewayRequest');

  @override
  Iterable<Type> get types => const [
        AttachInternetGatewayRequest,
        _$AttachInternetGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachInternetGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachInternetGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'internetGatewayId':
          result.internetGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
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
    AttachInternetGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AttachInternetGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AttachInternetGatewayRequest(:dryRun, :internetGatewayId, :vpcId) =
        object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (internetGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('InternetGatewayId'))
        ..add(serializers.serialize(
          internetGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
