// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_carrier_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_carrier_gateway_request.g.dart';

abstract class CreateCarrierGatewayRequest
    with
        _i1.HttpInput<CreateCarrierGatewayRequest>,
        _i2.AWSEquatable<CreateCarrierGatewayRequest>
    implements
        Built<CreateCarrierGatewayRequest, CreateCarrierGatewayRequestBuilder> {
  factory CreateCarrierGatewayRequest({
    String? vpcId,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$CreateCarrierGatewayRequest._(
      vpcId: vpcId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
      clientToken: clientToken,
    );
  }

  factory CreateCarrierGatewayRequest.build(
          [void Function(CreateCarrierGatewayRequestBuilder) updates]) =
      _$CreateCarrierGatewayRequest;

  const CreateCarrierGatewayRequest._();

  factory CreateCarrierGatewayRequest.fromRequest(
    CreateCarrierGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateCarrierGatewayRequest>>
      serializers = [CreateCarrierGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCarrierGatewayRequestBuilder b) {
    b
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The ID of the VPC to associate with the carrier gateway.
  String? get vpcId;

  /// The tags to associate with the carrier gateway.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CreateCarrierGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpcId,
        tagSpecifications,
        dryRun,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCarrierGatewayRequest')
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CreateCarrierGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateCarrierGatewayRequest> {
  const CreateCarrierGatewayRequestEc2QuerySerializer()
      : super('CreateCarrierGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateCarrierGatewayRequest,
        _$CreateCarrierGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCarrierGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCarrierGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    CreateCarrierGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateCarrierGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateCarrierGatewayRequest(
      :vpcId,
      :tagSpecifications,
      :dryRun,
      :clientToken
    ) = object;
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
