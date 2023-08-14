// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_network_service.dart';

part 'traffic_mirror_filter.g.dart';

/// Describes the Traffic Mirror filter.
abstract class TrafficMirrorFilter
    with _i1.AWSEquatable<TrafficMirrorFilter>
    implements Built<TrafficMirrorFilter, TrafficMirrorFilterBuilder> {
  /// Describes the Traffic Mirror filter.
  factory TrafficMirrorFilter({
    String? trafficMirrorFilterId,
    List<TrafficMirrorFilterRule>? ingressFilterRules,
    List<TrafficMirrorFilterRule>? egressFilterRules,
    List<TrafficMirrorNetworkService>? networkServices,
    String? description,
    List<Tag>? tags,
  }) {
    return _$TrafficMirrorFilter._(
      trafficMirrorFilterId: trafficMirrorFilterId,
      ingressFilterRules:
          ingressFilterRules == null ? null : _i2.BuiltList(ingressFilterRules),
      egressFilterRules:
          egressFilterRules == null ? null : _i2.BuiltList(egressFilterRules),
      networkServices:
          networkServices == null ? null : _i2.BuiltList(networkServices),
      description: description,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes the Traffic Mirror filter.
  factory TrafficMirrorFilter.build(
          [void Function(TrafficMirrorFilterBuilder) updates]) =
      _$TrafficMirrorFilter;

  const TrafficMirrorFilter._();

  static const List<_i3.SmithySerializer<TrafficMirrorFilter>> serializers = [
    TrafficMirrorFilterEc2QuerySerializer()
  ];

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;

  /// Information about the ingress rules that are associated with the Traffic Mirror filter.
  _i2.BuiltList<TrafficMirrorFilterRule>? get ingressFilterRules;

  /// Information about the egress rules that are associated with the Traffic Mirror filter.
  _i2.BuiltList<TrafficMirrorFilterRule>? get egressFilterRules;

  /// The network service traffic that is associated with the Traffic Mirror filter.
  _i2.BuiltList<TrafficMirrorNetworkService>? get networkServices;

  /// The description of the Traffic Mirror filter.
  String? get description;

  /// The tags assigned to the Traffic Mirror filter.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        trafficMirrorFilterId,
        ingressFilterRules,
        egressFilterRules,
        networkServices,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorFilter')
      ..add(
        'trafficMirrorFilterId',
        trafficMirrorFilterId,
      )
      ..add(
        'ingressFilterRules',
        ingressFilterRules,
      )
      ..add(
        'egressFilterRules',
        egressFilterRules,
      )
      ..add(
        'networkServices',
        networkServices,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TrafficMirrorFilterEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TrafficMirrorFilter> {
  const TrafficMirrorFilterEc2QuerySerializer() : super('TrafficMirrorFilter');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorFilter,
        _$TrafficMirrorFilter,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ingressFilterRuleSet':
          result.ingressFilterRules.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TrafficMirrorFilterRule)],
            ),
          ) as _i2.BuiltList<TrafficMirrorFilterRule>));
        case 'egressFilterRuleSet':
          result.egressFilterRules.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TrafficMirrorFilterRule)],
            ),
          ) as _i2.BuiltList<TrafficMirrorFilterRule>));
        case 'networkServiceSet':
          result.networkServices.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TrafficMirrorNetworkService)],
            ),
          ) as _i2.BuiltList<TrafficMirrorNetworkService>));
        case 'description':
          result.description = (serializers.deserialize(
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
    TrafficMirrorFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TrafficMirrorFilterResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TrafficMirrorFilter(
      :trafficMirrorFilterId,
      :ingressFilterRules,
      :egressFilterRules,
      :networkServices,
      :description,
      :tags
    ) = object;
    if (trafficMirrorFilterId != null) {
      result$
        ..add(const _i3.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          trafficMirrorFilterId,
          specifiedType: const FullType(String),
        ));
    }
    if (ingressFilterRules != null) {
      result$
        ..add(const _i3.XmlElementName('IngressFilterRuleSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ingressFilterRules,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TrafficMirrorFilterRule)],
          ),
        ));
    }
    if (egressFilterRules != null) {
      result$
        ..add(const _i3.XmlElementName('EgressFilterRuleSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          egressFilterRules,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TrafficMirrorFilterRule)],
          ),
        ));
    }
    if (networkServices != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkServiceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkServices,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TrafficMirrorNetworkService)],
          ),
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
