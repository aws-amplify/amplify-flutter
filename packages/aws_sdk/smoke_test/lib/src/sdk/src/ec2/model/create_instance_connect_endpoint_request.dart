// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_instance_connect_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_instance_connect_endpoint_request.g.dart';

abstract class CreateInstanceConnectEndpointRequest
    with
        _i1.HttpInput<CreateInstanceConnectEndpointRequest>,
        _i2.AWSEquatable<CreateInstanceConnectEndpointRequest>
    implements
        Built<CreateInstanceConnectEndpointRequest,
            CreateInstanceConnectEndpointRequestBuilder> {
  factory CreateInstanceConnectEndpointRequest({
    bool? dryRun,
    String? subnetId,
    List<String>? securityGroupIds,
    bool? preserveClientIp,
    String? clientToken,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    preserveClientIp ??= false;
    return _$CreateInstanceConnectEndpointRequest._(
      dryRun: dryRun,
      subnetId: subnetId,
      securityGroupIds:
          securityGroupIds == null ? null : _i3.BuiltList(securityGroupIds),
      preserveClientIp: preserveClientIp,
      clientToken: clientToken,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateInstanceConnectEndpointRequest.build(
      [void Function(CreateInstanceConnectEndpointRequestBuilder)
          updates]) = _$CreateInstanceConnectEndpointRequest;

  const CreateInstanceConnectEndpointRequest._();

  factory CreateInstanceConnectEndpointRequest.fromRequest(
    CreateInstanceConnectEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateInstanceConnectEndpointRequest>>
      serializers = [CreateInstanceConnectEndpointRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInstanceConnectEndpointRequestBuilder b) {
    b
      ..dryRun = false
      ..preserveClientIp = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  String? get subnetId;

  /// One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for your VPC will be associated with the endpoint.
  _i3.BuiltList<String>? get securityGroupIds;

  /// Indicates whether your client's IP address is preserved as the source. The value is `true` or `false`.
  ///
  /// *   If `true`, your client's IP address is used when you connect to a resource.
  ///
  /// *   If `false`, the elastic network interface IP address is used when you connect to a resource.
  ///
  ///
  /// Default: `true`
  bool get preserveClientIp;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;

  /// The tags to apply to the EC2 Instance Connect Endpoint during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateInstanceConnectEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        subnetId,
        securityGroupIds,
        preserveClientIp,
        clientToken,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateInstanceConnectEndpointRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'subnetId',
            subnetId,
          )
          ..add(
            'securityGroupIds',
            securityGroupIds,
          )
          ..add(
            'preserveClientIp',
            preserveClientIp,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          );
    return helper.toString();
  }
}

class CreateInstanceConnectEndpointRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateInstanceConnectEndpointRequest> {
  const CreateInstanceConnectEndpointRequestEc2QuerySerializer()
      : super('CreateInstanceConnectEndpointRequest');

  @override
  Iterable<Type> get types => const [
        CreateInstanceConnectEndpointRequest,
        _$CreateInstanceConnectEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceConnectEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceConnectEndpointRequestBuilder();
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
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SecurityGroupId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'PreserveClientIp':
          result.preserveClientIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    CreateInstanceConnectEndpointRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateInstanceConnectEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateInstanceConnectEndpointRequest(
      :dryRun,
      :subnetId,
      :securityGroupIds,
      :preserveClientIp,
      :clientToken,
      :tagSpecifications
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (subnetId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PreserveClientIp'))
      ..add(serializers.serialize(
        preserveClientIp,
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
