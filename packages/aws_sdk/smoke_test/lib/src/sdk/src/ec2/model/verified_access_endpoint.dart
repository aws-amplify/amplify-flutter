// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_endpoint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_attachment_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_eni_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_load_balancer_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_type.dart';

part 'verified_access_endpoint.g.dart';

/// An Amazon Web Services Verified Access endpoint specifies the application that Amazon Web Services Verified Access provides access to. It must be attached to an Amazon Web Services Verified Access group. An Amazon Web Services Verified Access endpoint must also have an attached access policy before you attached it to a group.
abstract class VerifiedAccessEndpoint
    with _i1.AWSEquatable<VerifiedAccessEndpoint>
    implements Built<VerifiedAccessEndpoint, VerifiedAccessEndpointBuilder> {
  /// An Amazon Web Services Verified Access endpoint specifies the application that Amazon Web Services Verified Access provides access to. It must be attached to an Amazon Web Services Verified Access group. An Amazon Web Services Verified Access endpoint must also have an attached access policy before you attached it to a group.
  factory VerifiedAccessEndpoint({
    String? verifiedAccessInstanceId,
    String? verifiedAccessGroupId,
    String? verifiedAccessEndpointId,
    String? applicationDomain,
    VerifiedAccessEndpointType? endpointType,
    VerifiedAccessEndpointAttachmentType? attachmentType,
    String? domainCertificateArn,
    String? endpointDomain,
    String? deviceValidationDomain,
    List<String>? securityGroupIds,
    VerifiedAccessEndpointLoadBalancerOptions? loadBalancerOptions,
    VerifiedAccessEndpointEniOptions? networkInterfaceOptions,
    VerifiedAccessEndpointStatus? status,
    String? description,
    String? creationTime,
    String? lastUpdatedTime,
    String? deletionTime,
    List<Tag>? tags,
  }) {
    return _$VerifiedAccessEndpoint._(
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      verifiedAccessGroupId: verifiedAccessGroupId,
      verifiedAccessEndpointId: verifiedAccessEndpointId,
      applicationDomain: applicationDomain,
      endpointType: endpointType,
      attachmentType: attachmentType,
      domainCertificateArn: domainCertificateArn,
      endpointDomain: endpointDomain,
      deviceValidationDomain: deviceValidationDomain,
      securityGroupIds:
          securityGroupIds == null ? null : _i2.BuiltList(securityGroupIds),
      loadBalancerOptions: loadBalancerOptions,
      networkInterfaceOptions: networkInterfaceOptions,
      status: status,
      description: description,
      creationTime: creationTime,
      lastUpdatedTime: lastUpdatedTime,
      deletionTime: deletionTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// An Amazon Web Services Verified Access endpoint specifies the application that Amazon Web Services Verified Access provides access to. It must be attached to an Amazon Web Services Verified Access group. An Amazon Web Services Verified Access endpoint must also have an attached access policy before you attached it to a group.
  factory VerifiedAccessEndpoint.build(
          [void Function(VerifiedAccessEndpointBuilder) updates]) =
      _$VerifiedAccessEndpoint;

  const VerifiedAccessEndpoint._();

  static const List<_i3.SmithySerializer<VerifiedAccessEndpoint>> serializers =
      [VerifiedAccessEndpointEc2QuerySerializer()];

  /// The ID of the Amazon Web Services Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// The ID of the Amazon Web Services Verified Access group.
  String? get verifiedAccessGroupId;

  /// The ID of the Amazon Web Services Verified Access endpoint.
  String? get verifiedAccessEndpointId;

  /// The DNS name for users to reach your application.
  String? get applicationDomain;

  /// The type of Amazon Web Services Verified Access endpoint. Incoming application requests will be sent to an IP address, load balancer or a network interface depending on the endpoint type specified.
  VerifiedAccessEndpointType? get endpointType;

  /// The type of attachment used to provide connectivity between the Amazon Web Services Verified Access endpoint and the application.
  VerifiedAccessEndpointAttachmentType? get attachmentType;

  /// The ARN of a public TLS/SSL certificate imported into or created with ACM.
  String? get domainCertificateArn;

  /// A DNS name that is generated for the endpoint.
  String? get endpointDomain;

  /// Returned if endpoint has a device trust provider attached.
  String? get deviceValidationDomain;

  /// The IDs of the security groups for the endpoint.
  _i2.BuiltList<String>? get securityGroupIds;

  /// The load balancer details if creating the Amazon Web Services Verified Access endpoint as `load-balancer`type.
  VerifiedAccessEndpointLoadBalancerOptions? get loadBalancerOptions;

  /// The options for network-interface type endpoint.
  VerifiedAccessEndpointEniOptions? get networkInterfaceOptions;

  /// The endpoint status.
  VerifiedAccessEndpointStatus? get status;

  /// A description for the Amazon Web Services Verified Access endpoint.
  String? get description;

  /// The creation time.
  String? get creationTime;

  /// The last updated time.
  String? get lastUpdatedTime;

  /// The deletion time.
  String? get deletionTime;

  /// The tags.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        verifiedAccessInstanceId,
        verifiedAccessGroupId,
        verifiedAccessEndpointId,
        applicationDomain,
        endpointType,
        attachmentType,
        domainCertificateArn,
        endpointDomain,
        deviceValidationDomain,
        securityGroupIds,
        loadBalancerOptions,
        networkInterfaceOptions,
        status,
        description,
        creationTime,
        lastUpdatedTime,
        deletionTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifiedAccessEndpoint')
      ..add(
        'verifiedAccessInstanceId',
        verifiedAccessInstanceId,
      )
      ..add(
        'verifiedAccessGroupId',
        verifiedAccessGroupId,
      )
      ..add(
        'verifiedAccessEndpointId',
        verifiedAccessEndpointId,
      )
      ..add(
        'applicationDomain',
        applicationDomain,
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
        'endpointDomain',
        endpointDomain,
      )
      ..add(
        'deviceValidationDomain',
        deviceValidationDomain,
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
        'status',
        status,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      )
      ..add(
        'deletionTime',
        deletionTime,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class VerifiedAccessEndpointEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VerifiedAccessEndpoint> {
  const VerifiedAccessEndpointEc2QuerySerializer()
      : super('VerifiedAccessEndpoint');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessEndpoint,
        _$VerifiedAccessEndpoint,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessEndpoint deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessEndpointBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'verifiedAccessGroupId':
          result.verifiedAccessGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'verifiedAccessEndpointId':
          result.verifiedAccessEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'applicationDomain':
          result.applicationDomain = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'endpointType':
          result.endpointType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointType),
          ) as VerifiedAccessEndpointType);
        case 'attachmentType':
          result.attachmentType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointAttachmentType),
          ) as VerifiedAccessEndpointAttachmentType);
        case 'domainCertificateArn':
          result.domainCertificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'endpointDomain':
          result.endpointDomain = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deviceValidationDomain':
          result.deviceValidationDomain = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'securityGroupIdSet':
          result.securityGroupIds.replace((const _i3.XmlBuiltListSerializer(
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
        case 'loadBalancerOptions':
          result.loadBalancerOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(VerifiedAccessEndpointLoadBalancerOptions),
          ) as VerifiedAccessEndpointLoadBalancerOptions));
        case 'networkInterfaceOptions':
          result.networkInterfaceOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointEniOptions),
          ) as VerifiedAccessEndpointEniOptions));
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointStatus),
          ) as VerifiedAccessEndpointStatus));
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deletionTime':
          result.deletionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VerifiedAccessEndpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VerifiedAccessEndpointResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessEndpoint(
      :verifiedAccessInstanceId,
      :verifiedAccessGroupId,
      :verifiedAccessEndpointId,
      :applicationDomain,
      :endpointType,
      :attachmentType,
      :domainCertificateArn,
      :endpointDomain,
      :deviceValidationDomain,
      :securityGroupIds,
      :loadBalancerOptions,
      :networkInterfaceOptions,
      :status,
      :description,
      :creationTime,
      :lastUpdatedTime,
      :deletionTime,
      :tags
    ) = object;
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessGroupId != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessGroupId'))
        ..add(serializers.serialize(
          verifiedAccessGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessEndpointId != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessEndpointId'))
        ..add(serializers.serialize(
          verifiedAccessEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (applicationDomain != null) {
      result$
        ..add(const _i3.XmlElementName('ApplicationDomain'))
        ..add(serializers.serialize(
          applicationDomain,
          specifiedType: const FullType(String),
        ));
    }
    if (endpointType != null) {
      result$
        ..add(const _i3.XmlElementName('EndpointType'))
        ..add(serializers.serialize(
          endpointType,
          specifiedType: const FullType.nullable(VerifiedAccessEndpointType),
        ));
    }
    if (attachmentType != null) {
      result$
        ..add(const _i3.XmlElementName('AttachmentType'))
        ..add(serializers.serialize(
          attachmentType,
          specifiedType:
              const FullType.nullable(VerifiedAccessEndpointAttachmentType),
        ));
    }
    if (domainCertificateArn != null) {
      result$
        ..add(const _i3.XmlElementName('DomainCertificateArn'))
        ..add(serializers.serialize(
          domainCertificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (endpointDomain != null) {
      result$
        ..add(const _i3.XmlElementName('EndpointDomain'))
        ..add(serializers.serialize(
          endpointDomain,
          specifiedType: const FullType(String),
        ));
    }
    if (deviceValidationDomain != null) {
      result$
        ..add(const _i3.XmlElementName('DeviceValidationDomain'))
        ..add(serializers.serialize(
          deviceValidationDomain,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (loadBalancerOptions != null) {
      result$
        ..add(const _i3.XmlElementName('LoadBalancerOptions'))
        ..add(serializers.serialize(
          loadBalancerOptions,
          specifiedType:
              const FullType(VerifiedAccessEndpointLoadBalancerOptions),
        ));
    }
    if (networkInterfaceOptions != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceOptions'))
        ..add(serializers.serialize(
          networkInterfaceOptions,
          specifiedType: const FullType(VerifiedAccessEndpointEniOptions),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(VerifiedAccessEndpointStatus),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add(const _i3.XmlElementName('LastUpdatedTime'))
        ..add(serializers.serialize(
          lastUpdatedTime,
          specifiedType: const FullType(String),
        ));
    }
    if (deletionTime != null) {
      result$
        ..add(const _i3.XmlElementName('DeletionTime'))
        ..add(serializers.serialize(
          deletionTime,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
