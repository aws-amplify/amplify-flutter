// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.additional_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_group_rule_options_pair.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_group_type_pair.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_option.dart';

part 'additional_detail.g.dart';

/// Describes an additional detail for a path analysis. For more information, see [Reachability Analyzer additional detail codes](https://docs.aws.amazon.com/vpc/latest/reachability/additional-detail-codes.html).
abstract class AdditionalDetail
    with _i1.AWSEquatable<AdditionalDetail>
    implements Built<AdditionalDetail, AdditionalDetailBuilder> {
  /// Describes an additional detail for a path analysis. For more information, see [Reachability Analyzer additional detail codes](https://docs.aws.amazon.com/vpc/latest/reachability/additional-detail-codes.html).
  factory AdditionalDetail({
    String? additionalDetailType,
    AnalysisComponent? component,
    AnalysisComponent? vpcEndpointService,
    List<RuleOption>? ruleOptions,
    List<RuleGroupTypePair>? ruleGroupTypePairs,
    List<RuleGroupRuleOptionsPair>? ruleGroupRuleOptionsPairs,
    String? serviceName,
    List<AnalysisComponent>? loadBalancers,
  }) {
    return _$AdditionalDetail._(
      additionalDetailType: additionalDetailType,
      component: component,
      vpcEndpointService: vpcEndpointService,
      ruleOptions: ruleOptions == null ? null : _i2.BuiltList(ruleOptions),
      ruleGroupTypePairs:
          ruleGroupTypePairs == null ? null : _i2.BuiltList(ruleGroupTypePairs),
      ruleGroupRuleOptionsPairs: ruleGroupRuleOptionsPairs == null
          ? null
          : _i2.BuiltList(ruleGroupRuleOptionsPairs),
      serviceName: serviceName,
      loadBalancers:
          loadBalancers == null ? null : _i2.BuiltList(loadBalancers),
    );
  }

  /// Describes an additional detail for a path analysis. For more information, see [Reachability Analyzer additional detail codes](https://docs.aws.amazon.com/vpc/latest/reachability/additional-detail-codes.html).
  factory AdditionalDetail.build(
      [void Function(AdditionalDetailBuilder) updates]) = _$AdditionalDetail;

  const AdditionalDetail._();

  static const List<_i3.SmithySerializer<AdditionalDetail>> serializers = [
    AdditionalDetailEc2QuerySerializer()
  ];

  /// The additional detail code.
  String? get additionalDetailType;

  /// The path component.
  AnalysisComponent? get component;

  /// The VPC endpoint service.
  AnalysisComponent? get vpcEndpointService;

  /// The rule options.
  _i2.BuiltList<RuleOption>? get ruleOptions;

  /// The rule group type.
  _i2.BuiltList<RuleGroupTypePair>? get ruleGroupTypePairs;

  /// The rule options.
  _i2.BuiltList<RuleGroupRuleOptionsPair>? get ruleGroupRuleOptionsPairs;

  /// The name of the VPC endpoint service.
  String? get serviceName;

  /// The load balancers.
  _i2.BuiltList<AnalysisComponent>? get loadBalancers;
  @override
  List<Object?> get props => [
        additionalDetailType,
        component,
        vpcEndpointService,
        ruleOptions,
        ruleGroupTypePairs,
        ruleGroupRuleOptionsPairs,
        serviceName,
        loadBalancers,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AdditionalDetail')
      ..add(
        'additionalDetailType',
        additionalDetailType,
      )
      ..add(
        'component',
        component,
      )
      ..add(
        'vpcEndpointService',
        vpcEndpointService,
      )
      ..add(
        'ruleOptions',
        ruleOptions,
      )
      ..add(
        'ruleGroupTypePairs',
        ruleGroupTypePairs,
      )
      ..add(
        'ruleGroupRuleOptionsPairs',
        ruleGroupRuleOptionsPairs,
      )
      ..add(
        'serviceName',
        serviceName,
      )
      ..add(
        'loadBalancers',
        loadBalancers,
      );
    return helper.toString();
  }
}

class AdditionalDetailEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AdditionalDetail> {
  const AdditionalDetailEc2QuerySerializer() : super('AdditionalDetail');

  @override
  Iterable<Type> get types => const [
        AdditionalDetail,
        _$AdditionalDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AdditionalDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdditionalDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'additionalDetailType':
          result.additionalDetailType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'component':
          result.component.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'vpcEndpointService':
          result.vpcEndpointService.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisComponent),
          ) as AnalysisComponent));
        case 'ruleOptionSet':
          result.ruleOptions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RuleOption)],
            ),
          ) as _i2.BuiltList<RuleOption>));
        case 'ruleGroupTypePairSet':
          result.ruleGroupTypePairs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RuleGroupTypePair)],
            ),
          ) as _i2.BuiltList<RuleGroupTypePair>));
        case 'ruleGroupRuleOptionsPairSet':
          result.ruleGroupRuleOptionsPairs
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RuleGroupRuleOptionsPair)],
            ),
          ) as _i2.BuiltList<RuleGroupRuleOptionsPair>));
        case 'serviceName':
          result.serviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'loadBalancerSet':
          result.loadBalancers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AnalysisComponent)],
            ),
          ) as _i2.BuiltList<AnalysisComponent>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AdditionalDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AdditionalDetailResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AdditionalDetail(
      :additionalDetailType,
      :component,
      :vpcEndpointService,
      :ruleOptions,
      :ruleGroupTypePairs,
      :ruleGroupRuleOptionsPairs,
      :serviceName,
      :loadBalancers
    ) = object;
    if (additionalDetailType != null) {
      result$
        ..add(const _i3.XmlElementName('AdditionalDetailType'))
        ..add(serializers.serialize(
          additionalDetailType,
          specifiedType: const FullType(String),
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
    if (vpcEndpointService != null) {
      result$
        ..add(const _i3.XmlElementName('VpcEndpointService'))
        ..add(serializers.serialize(
          vpcEndpointService,
          specifiedType: const FullType(AnalysisComponent),
        ));
    }
    if (ruleOptions != null) {
      result$
        ..add(const _i3.XmlElementName('RuleOptionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ruleOptions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RuleOption)],
          ),
        ));
    }
    if (ruleGroupTypePairs != null) {
      result$
        ..add(const _i3.XmlElementName('RuleGroupTypePairSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ruleGroupTypePairs,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RuleGroupTypePair)],
          ),
        ));
    }
    if (ruleGroupRuleOptionsPairs != null) {
      result$
        ..add(const _i3.XmlElementName('RuleGroupRuleOptionsPairSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ruleGroupRuleOptionsPairs,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RuleGroupRuleOptionsPair)],
          ),
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
    if (loadBalancers != null) {
      result$
        ..add(const _i3.XmlElementName('LoadBalancerSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          loadBalancers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AnalysisComponent)],
          ),
        ));
    }
    return result$;
  }
}
