// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_verified_access_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_endpoint_eni_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_endpoint_load_balancer_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_attachment_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_type.dart';

part 'create_verified_access_endpoint_request.g.dart';

abstract class CreateVerifiedAccessEndpointRequest
    with
        _i1.HttpInput<CreateVerifiedAccessEndpointRequest>,
        _i2.AWSEquatable<CreateVerifiedAccessEndpointRequest>
    implements
        Built<CreateVerifiedAccessEndpointRequest,
            CreateVerifiedAccessEndpointRequestBuilder> {
  factory CreateVerifiedAccessEndpointRequest({
    String? verifiedAccessGroupId,
    VerifiedAccessEndpointType? endpointType,
    VerifiedAccessEndpointAttachmentType? attachmentType,
    String? domainCertificateArn,
    String? applicationDomain,
    String? endpointDomainPrefix,
    List<String>? securityGroupIds,
    CreateVerifiedAccessEndpointLoadBalancerOptions? loadBalancerOptions,
    CreateVerifiedAccessEndpointEniOptions? networkInterfaceOptions,
    String? description,
    String? policyDocument,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateVerifiedAccessEndpointRequest._(
      verifiedAccessGroupId: verifiedAccessGroupId,
      endpointType: endpointType,
      attachmentType: attachmentType,
      domainCertificateArn: domainCertificateArn,
      applicationDomain: applicationDomain,
      endpointDomainPrefix: endpointDomainPrefix,
      securityGroupIds:
          securityGroupIds == null ? null : _i3.BuiltList(securityGroupIds),
      loadBalancerOptions: loadBalancerOptions,
      networkInterfaceOptions: networkInterfaceOptions,
      description: description,
      policyDocument: policyDocument,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory CreateVerifiedAccessEndpointRequest.build(
          [void Function(CreateVerifiedAccessEndpointRequestBuilder) updates]) =
      _$CreateVerifiedAccessEndpointRequest;

  const CreateVerifiedAccessEndpointRequest._();

  factory CreateVerifiedAccessEndpointRequest.fromRequest(
    CreateVerifiedAccessEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVerifiedAccessEndpointRequest>>
      serializers = [CreateVerifiedAccessEndpointRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVerifiedAccessEndpointRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the Verified Access group to associate the endpoint with.
  String? get verifiedAccessGroupId;

  /// The type of Verified Access endpoint to create.
  VerifiedAccessEndpointType? get endpointType;

  /// The type of attachment.
  VerifiedAccessEndpointAttachmentType? get attachmentType;

  /// The ARN of the public TLS/SSL certificate in Amazon Web Services Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application.
  String? get domainCertificateArn;

  /// The DNS name for users to reach your application.
  String? get applicationDomain;

  /// A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  String? get endpointDomainPrefix;

  /// The IDs of the security groups to associate with the Verified Access endpoint.
  _i3.BuiltList<String>? get securityGroupIds;

  /// The load balancer details. This parameter is required if the endpoint type is `load-balancer`.
  CreateVerifiedAccessEndpointLoadBalancerOptions? get loadBalancerOptions;

  /// The network interface details. This parameter is required if the endpoint type is `network-interface`.
  CreateVerifiedAccessEndpointEniOptions? get networkInterfaceOptions;

  /// A description for the Verified Access endpoint.
  String? get description;

  /// The Verified Access policy document.
  String? get policyDocument;

  /// The tags to assign to the Verified Access endpoint.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateVerifiedAccessEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessGroupId,
        endpointType,
        attachmentType,
        domainCertificateArn,
        applicationDomain,
        endpointDomainPrefix,
        securityGroupIds,
        loadBalancerOptions,
        networkInterfaceOptions,
        description,
        policyDocument,
        tagSpecifications,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVerifiedAccessEndpointRequest')
          ..add(
            'verifiedAccessGroupId',
            verifiedAccessGroupId,
          )
          ..add(
            'endpointType',
            endpointType,
          )
          ..add(
            'attachmentType',
            attachmentType,
          )
          ..add(
            'domainCertificateArn',
            domainCertificateArn,
          )
          ..add(
            'applicationDomain',
            applicationDomain,
          )
          ..add(
            'endpointDomainPrefix',
            endpointDomainPrefix,
          )
          ..add(
            'securityGroupIds',
            securityGroupIds,
          )
          ..add(
            'loadBalancerOptions',
            loadBalancerOptions,
          )
          ..add(
            'networkInterfaceOptions',
            networkInterfaceOptions,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'policyDocument',
            policyDocument,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateVerifiedAccessEndpointRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateVerifiedAccessEndpointRequest> {
  const CreateVerifiedAccessEndpointRequestEc2QuerySerializer()
      : super('CreateVerifiedAccessEndpointRequest');

  @override
  Iterable<Type> get types => const [
        CreateVerifiedAccessEndpointRequest,
        _$CreateVerifiedAccessEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVerifiedAccessEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVerifiedAccessEndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessGroupId':
          result.verifiedAccessGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EndpointType':
          result.endpointType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointType),
          ) as VerifiedAccessEndpointType);
        case 'AttachmentType':
          result.attachmentType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointAttachmentType),
          ) as VerifiedAccessEndpointAttachmentType);
        case 'DomainCertificateArn':
          result.domainCertificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ApplicationDomain':
          result.applicationDomain = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EndpointDomainPrefix':
          result.endpointDomainPrefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
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
        case 'LoadBalancerOptions':
          result.loadBalancerOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateVerifiedAccessEndpointLoadBalancerOptions),
          ) as CreateVerifiedAccessEndpointLoadBalancerOptions));
        case 'NetworkInterfaceOptions':
          result.networkInterfaceOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateVerifiedAccessEndpointEniOptions),
          ) as CreateVerifiedAccessEndpointEniOptions));
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVerifiedAccessEndpointRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVerifiedAccessEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVerifiedAccessEndpointRequest(
      :verifiedAccessGroupId,
      :endpointType,
      :attachmentType,
      :domainCertificateArn,
      :applicationDomain,
      :endpointDomainPrefix,
      :securityGroupIds,
      :loadBalancerOptions,
      :networkInterfaceOptions,
      :description,
      :policyDocument,
      :tagSpecifications,
      :clientToken,
      :dryRun
    ) = object;
    if (verifiedAccessGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessGroupId'))
        ..add(serializers.serialize(
          verifiedAccessGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (endpointType != null) {
      result$
        ..add(const _i1.XmlElementName('EndpointType'))
        ..add(serializers.serialize(
          endpointType,
          specifiedType: const FullType.nullable(VerifiedAccessEndpointType),
        ));
    }
    if (attachmentType != null) {
      result$
        ..add(const _i1.XmlElementName('AttachmentType'))
        ..add(serializers.serialize(
          attachmentType,
          specifiedType:
              const FullType.nullable(VerifiedAccessEndpointAttachmentType),
        ));
    }
    if (domainCertificateArn != null) {
      result$
        ..add(const _i1.XmlElementName('DomainCertificateArn'))
        ..add(serializers.serialize(
          domainCertificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (applicationDomain != null) {
      result$
        ..add(const _i1.XmlElementName('ApplicationDomain'))
        ..add(serializers.serialize(
          applicationDomain,
          specifiedType: const FullType(String),
        ));
    }
    if (endpointDomainPrefix != null) {
      result$
        ..add(const _i1.XmlElementName('EndpointDomainPrefix'))
        ..add(serializers.serialize(
          endpointDomainPrefix,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
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
    if (loadBalancerOptions != null) {
      result$
        ..add(const _i1.XmlElementName('LoadBalancerOptions'))
        ..add(serializers.serialize(
          loadBalancerOptions,
          specifiedType:
              const FullType(CreateVerifiedAccessEndpointLoadBalancerOptions),
        ));
    }
    if (networkInterfaceOptions != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceOptions'))
        ..add(serializers.serialize(
          networkInterfaceOptions,
          specifiedType: const FullType(CreateVerifiedAccessEndpointEniOptions),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (policyDocument != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          policyDocument,
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
    return result$;
  }
}
