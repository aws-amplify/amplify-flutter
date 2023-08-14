// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_egress_only_internet_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_egress_only_internet_gateway_request.g.dart';

abstract class CreateEgressOnlyInternetGatewayRequest
    with
        _i1.HttpInput<CreateEgressOnlyInternetGatewayRequest>,
        _i2.AWSEquatable<CreateEgressOnlyInternetGatewayRequest>
    implements
        Built<CreateEgressOnlyInternetGatewayRequest,
            CreateEgressOnlyInternetGatewayRequestBuilder> {
  factory CreateEgressOnlyInternetGatewayRequest({
    String? clientToken,
    bool? dryRun,
    String? vpcId,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateEgressOnlyInternetGatewayRequest._(
      clientToken: clientToken,
      dryRun: dryRun,
      vpcId: vpcId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateEgressOnlyInternetGatewayRequest.build(
      [void Function(CreateEgressOnlyInternetGatewayRequestBuilder)
          updates]) = _$CreateEgressOnlyInternetGatewayRequest;

  const CreateEgressOnlyInternetGatewayRequest._();

  factory CreateEgressOnlyInternetGatewayRequest.fromRequest(
    CreateEgressOnlyInternetGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateEgressOnlyInternetGatewayRequest>>
      serializers = [
    CreateEgressOnlyInternetGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateEgressOnlyInternetGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the VPC for which to create the egress-only internet gateway.
  String? get vpcId;

  /// The tags to assign to the egress-only internet gateway.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateEgressOnlyInternetGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        dryRun,
        vpcId,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateEgressOnlyInternetGatewayRequest')
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'vpcId',
            vpcId,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          );
    return helper.toString();
  }
}

class CreateEgressOnlyInternetGatewayRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateEgressOnlyInternetGatewayRequest> {
  const CreateEgressOnlyInternetGatewayRequestEc2QuerySerializer()
      : super('CreateEgressOnlyInternetGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateEgressOnlyInternetGatewayRequest,
        _$CreateEgressOnlyInternetGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateEgressOnlyInternetGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateEgressOnlyInternetGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateEgressOnlyInternetGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateEgressOnlyInternetGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateEgressOnlyInternetGatewayRequest(
      :clientToken,
      :dryRun,
      :vpcId,
      :tagSpecifications
    ) = object;
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
