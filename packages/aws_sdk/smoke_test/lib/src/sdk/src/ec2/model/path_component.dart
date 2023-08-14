// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.path_component; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/additional_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_acl_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_packet_header.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_route_table_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_security_group_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/explanation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/firewall_stateful_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/firewall_stateless_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_route.dart';

part 'path_component.g.dart';

/// Describes a path component.
abstract class PathComponent
    with _i1.AWSEquatable<PathComponent>
    implements Built<PathComponent, PathComponentBuilder> {
  /// Describes a path component.
  factory PathComponent({
    int? sequenceNumber,
    AnalysisAclRule? aclRule,
    AnalysisComponent? attachedTo,
    AnalysisComponent? component,
    AnalysisComponent? destinationVpc,
    AnalysisPacketHeader? outboundHeader,
    AnalysisPacketHeader? inboundHeader,
    AnalysisRouteTableRoute? routeTableRoute,
    AnalysisSecurityGroupRule? securityGroupRule,
    AnalysisComponent? sourceVpc,
    AnalysisComponent? subnet,
    AnalysisComponent? vpc,
    List<AdditionalDetail>? additionalDetails,
    AnalysisComponent? transitGateway,
    TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute,
    List<Explanation>? explanations,
    AnalysisComponent? elasticLoadBalancerListener,
    FirewallStatelessRule? firewallStatelessRule,
    FirewallStatefulRule? firewallStatefulRule,
    String? serviceName,
  }) {
    sequenceNumber ??= 0;
    return _$PathComponent._(
      sequenceNumber: sequenceNumber,
      aclRule: aclRule,
      attachedTo: attachedTo,
      component: component,
      destinationVpc: destinationVpc,
      outboundHeader: outboundHeader,
      inboundHeader: inboundHeader,
      routeTableRoute: routeTableRoute,
      securityGroupRule: securityGroupRule,
      sourceVpc: sourceVpc,
      subnet: subnet,
      vpc: vpc,
      additionalDetails:
          additionalDetails == null ? null : _i2.BuiltList(additionalDetails),
      transitGateway: transitGateway,
      transitGatewayRouteTableRoute: transitGatewayRouteTableRoute,
      explanations: explanations == null ? null : _i2.BuiltList(explanations),
      elasticLoadBalancerListener: elasticLoadBalancerListener,
      firewallStatelessRule: firewallStatelessRule,
      firewallStatefulRule: firewallStatefulRule,
      serviceName: serviceName,
    );
  }

  /// Describes a path component.
  factory PathComponent.build([void Function(PathComponentBuilder) updates]) =
      _$PathComponent;

  const PathComponent._();

  static const List<_i3.SmithySerializer<PathComponent>> serializers = [
    PathComponentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PathComponentBuilder b) {
    b.sequenceNumber = 0;
  }

  /// The sequence number.
  int get sequenceNumber;

  /// The network ACL rule.
  AnalysisAclRule? get aclRule;

  /// The resource to which the path component is attached.
  AnalysisComponent? get attachedTo;

  /// The component.
  AnalysisComponent? get component;

  /// The destination VPC.
  AnalysisComponent? get destinationVpc;

  /// The outbound header.
  AnalysisPacketHeader? get outboundHeader;

  /// The inbound header.
  AnalysisPacketHeader? get inboundHeader;

  /// The route table route.
  AnalysisRouteTableRoute? get routeTableRoute;

  /// The security group rule.
  AnalysisSecurityGroupRule? get securityGroupRule;

  /// The source VPC.
  AnalysisComponent? get sourceVpc;

  /// The subnet.
  AnalysisComponent? get subnet;

  /// The component VPC.
  AnalysisComponent? get vpc;

  /// The additional details.
  _i2.BuiltList<AdditionalDetail>? get additionalDetails;

  /// The transit gateway.
  AnalysisComponent? get transitGateway;

  /// The route in a transit gateway route table.
  TransitGatewayRouteTableRoute? get transitGatewayRouteTableRoute;

  /// The explanation codes.
  _i2.BuiltList<Explanation>? get explanations;

  /// The load balancer listener.
  AnalysisComponent? get elasticLoadBalancerListener;

  /// The Network Firewall stateless rule.
  FirewallStatelessRule? get firewallStatelessRule;

  /// The Network Firewall stateful rule.
  FirewallStatefulRule? get firewallStatefulRule;

  /// The name of the VPC endpoint service.
  String? get serviceName;
  @override
  List<Object?> get props => [
        sequenceNumber,
        aclRule,
        attachedTo,
        component,
        destinationVpc,
        outboundHeader,
        inboundHeader,
        routeTableRoute,
        securityGroupRule,
        sourceVpc,
        subnet,
        vpc,
        additionalDetails,
        transitGateway,
        transitGatewayRouteTableRoute,
        explanations,
        elasticLoadBalancerListener,
        firewallStatelessRule,
        firewallStatefulRule,
        serviceName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PathComponent')
      ..add(
        'sequenceNumber',
        sequenceNumber,
      )
      ..add(
        'aclRule',
        aclRule,
      )
      ..add(
        'attachedTo',
        attachedTo,
      )
      ..add(
        'component',
        component,
      )
      ..add(
        'destinationVpc',
        destinationVpc,
      )
      ..add(
        'outboundHeader',
        outboundHeader,
      )
      ..add(
        'inboundHeader',
        inboundHeader,
      )
      ..add(
        'routeTableRoute',
        routeTableRoute,
      )
      ..add(
        'securityGroupRule',
        securityGroupRule,
      )
      ..add(
        'sourceVpc',
        sourceVpc,
      )
      ..add(
        'subnet',
        subnet,
      )
      ..add(
        'vpc',
        vpc,
      )
      ..add(
        'additionalDetails',
        additionalDetails,
      )
      ..add(
        'transitGateway',
        transitGateway,
      )
      ..add(
        'transitGatewayRouteTableRoute',
        transitGatewayRouteTableRoute,
      )
      ..add(
        'explanations',
        explanations,
      )
      ..add(
        'elasticLoadBalancerListener',
        elasticLoadBalancerListener,
      )
      ..add(
        'firewallStatelessRule',
        firewallStatelessRule,
      )
      ..add(
        'firewallStatefulRule',
        firewallStatefulRule,
      )
      ..add(
        'serviceName',
        serviceName,
      );
    return helper.toString();
  }
}

class PathComponentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PathComponent> {
  const PathComponentEc2QuerySerializer() : super('PathComponent');

  @override
  Iterable<Type> get types => const [
        PathComponent,
        _$PathComponent,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PathComponent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PathComponentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'sequenceNumber':
          result.sequenceNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'aclRule':
          result.aclRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisAclRule),
          ) as AnalysisAclRule));
        case 'attachedTo':
          result.attachedTo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'component':
          result.component.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'destinationVpc':
          result.destinationVpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'outboundHeader':
          result.outboundHeader.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisPacketHeader),
          ) as AnalysisPacketHeader));
        case 'inboundHeader':
          result.inboundHeader.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisPacketHeader),
          ) as AnalysisPacketHeader));
        case 'routeTableRoute':
          result.routeTableRoute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisRouteTableRoute),
          ) as AnalysisRouteTableRoute));
        case 'securityGroupRule':
          result.securityGroupRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisSecurityGroupRule),
          ) as AnalysisSecurityGroupRule));
        case 'sourceVpc':
          result.sourceVpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'subnet':
          result.subnet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'vpc':
          result.vpc.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'additionalDetailSet':
          result.additionalDetails.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AdditionalDetail)],
            ),
          ) as _i2.BuiltList<AdditionalDetail>));
        case 'transitGateway':
          result.transitGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'transitGatewayRouteTableRoute':
          result.transitGatewayRouteTableRoute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayRouteTableRoute),
          ) as TransitGatewayRouteTableRoute));
        case 'explanationSet':
          result.explanations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Explanation)],
            ),
          ) as _i2.BuiltList<Explanation>));
        case 'elasticLoadBalancerListener':
          result.elasticLoadBalancerListener.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'firewallStatelessRule':
          result.firewallStatelessRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FirewallStatelessRule),
          ) as FirewallStatelessRule));
        case 'firewallStatefulRule':
          result.firewallStatefulRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FirewallStatefulRule),
          ) as FirewallStatefulRule));
        case 'serviceName':
          result.serviceName = (serializers.deserialize(
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
    PathComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PathComponentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PathComponent(
      :sequenceNumber,
      :aclRule,
      :attachedTo,
      :component,
      :destinationVpc,
      :outboundHeader,
      :inboundHeader,
      :routeTableRoute,
      :securityGroupRule,
      :sourceVpc,
      :subnet,
      :vpc,
      :additionalDetails,
      :transitGateway,
      :transitGatewayRouteTableRoute,
      :explanations,
      :elasticLoadBalancerListener,
      :firewallStatelessRule,
      :firewallStatefulRule,
      :serviceName
    ) = object;
    result$
      ..add(const _i3.XmlElementName('SequenceNumber'))
      ..add(serializers.serialize(
        sequenceNumber,
        specifiedType: const FullType(int),
      ));
    if (aclRule != null) {
      result$
        ..add(const _i3.XmlElementName('AclRule'))
        ..add(serializers.serialize(
          aclRule,
          specifiedType: const FullType(AnalysisAclRule),
        ));
    }
    if (attachedTo != null) {
      result$
        ..add(const _i3.XmlElementName('AttachedTo'))
        ..add(serializers.serialize(
          attachedTo,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (component != null) {
      result$
        ..add(const _i3.XmlElementName('Component'))
        ..add(serializers.serialize(
          component,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (destinationVpc != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationVpc'))
        ..add(serializers.serialize(
          destinationVpc,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (outboundHeader != null) {
      result$
        ..add(const _i3.XmlElementName('OutboundHeader'))
        ..add(serializers.serialize(
          outboundHeader,
          specifiedType: const FullType(AnalysisPacketHeader),
        ));
    }
    if (inboundHeader != null) {
      result$
        ..add(const _i3.XmlElementName('InboundHeader'))
        ..add(serializers.serialize(
          inboundHeader,
          specifiedType: const FullType(AnalysisPacketHeader),
        ));
    }
    if (routeTableRoute != null) {
      result$
        ..add(const _i3.XmlElementName('RouteTableRoute'))
        ..add(serializers.serialize(
          routeTableRoute,
          specifiedType: const FullType(AnalysisRouteTableRoute),
        ));
    }
    if (securityGroupRule != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupRule'))
        ..add(serializers.serialize(
          securityGroupRule,
          specifiedType: const FullType(AnalysisSecurityGroupRule),
        ));
    }
    if (sourceVpc != null) {
      result$
        ..add(const _i3.XmlElementName('SourceVpc'))
        ..add(serializers.serialize(
          sourceVpc,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (subnet != null) {
      result$
        ..add(const _i3.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          subnet,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (vpc != null) {
      result$
        ..add(const _i3.XmlElementName('Vpc'))
        ..add(serializers.serialize(
          vpc,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (additionalDetails != null) {
      result$
        ..add(const _i3.XmlElementName('AdditionalDetailSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          additionalDetails,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AdditionalDetail)],
          ),
        ));
    }
    if (transitGateway != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          transitGateway,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (transitGatewayRouteTableRoute != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayRouteTableRoute'))
        ..add(serializers.serialize(
          transitGatewayRouteTableRoute,
          specifiedType: const FullType(TransitGatewayRouteTableRoute),
        ));
    }
    if (explanations != null) {
      result$
        ..add(const _i3.XmlElementName('ExplanationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          explanations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Explanation)],
          ),
        ));
    }
    if (elasticLoadBalancerListener != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticLoadBalancerListener'))
        ..add(serializers.serialize(
          elasticLoadBalancerListener,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (firewallStatelessRule != null) {
      result$
        ..add(const _i3.XmlElementName('FirewallStatelessRule'))
        ..add(serializers.serialize(
          firewallStatelessRule,
          specifiedType: const FullType(FirewallStatelessRule),
        ));
    }
    if (firewallStatefulRule != null) {
      result$
        ..add(const _i3.XmlElementName('FirewallStatefulRule'))
        ..add(serializers.serialize(
          firewallStatefulRule,
          specifiedType: const FullType(FirewallStatefulRule),
        ));
    }
    if (serviceName != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceName'))
        ..add(serializers.serialize(
          serviceName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
