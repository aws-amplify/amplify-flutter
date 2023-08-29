// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_traffic_mirror_filter_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_direction.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule_field.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_port_range_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_rule_action.dart';

part 'modify_traffic_mirror_filter_rule_request.g.dart';

abstract class ModifyTrafficMirrorFilterRuleRequest
    with
        _i1.HttpInput<ModifyTrafficMirrorFilterRuleRequest>,
        _i2.AWSEquatable<ModifyTrafficMirrorFilterRuleRequest>
    implements
        Built<ModifyTrafficMirrorFilterRuleRequest,
            ModifyTrafficMirrorFilterRuleRequestBuilder> {
  factory ModifyTrafficMirrorFilterRuleRequest({
    String? trafficMirrorFilterRuleId,
    TrafficDirection? trafficDirection,
    int? ruleNumber,
    TrafficMirrorRuleAction? ruleAction,
    TrafficMirrorPortRangeRequest? destinationPortRange,
    TrafficMirrorPortRangeRequest? sourcePortRange,
    int? protocol,
    String? destinationCidrBlock,
    String? sourceCidrBlock,
    String? description,
    List<TrafficMirrorFilterRuleField>? removeFields,
    bool? dryRun,
  }) {
    ruleNumber ??= 0;
    protocol ??= 0;
    dryRun ??= false;
    return _$ModifyTrafficMirrorFilterRuleRequest._(
      trafficMirrorFilterRuleId: trafficMirrorFilterRuleId,
      trafficDirection: trafficDirection,
      ruleNumber: ruleNumber,
      ruleAction: ruleAction,
      destinationPortRange: destinationPortRange,
      sourcePortRange: sourcePortRange,
      protocol: protocol,
      destinationCidrBlock: destinationCidrBlock,
      sourceCidrBlock: sourceCidrBlock,
      description: description,
      removeFields: removeFields == null ? null : _i3.BuiltList(removeFields),
      dryRun: dryRun,
    );
  }

  factory ModifyTrafficMirrorFilterRuleRequest.build(
      [void Function(ModifyTrafficMirrorFilterRuleRequestBuilder)
          updates]) = _$ModifyTrafficMirrorFilterRuleRequest;

  const ModifyTrafficMirrorFilterRuleRequest._();

  factory ModifyTrafficMirrorFilterRuleRequest.fromRequest(
    ModifyTrafficMirrorFilterRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyTrafficMirrorFilterRuleRequest>>
      serializers = [ModifyTrafficMirrorFilterRuleRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTrafficMirrorFilterRuleRequestBuilder b) {
    b
      ..ruleNumber = 0
      ..protocol = 0
      ..dryRun = false;
  }

  /// The ID of the Traffic Mirror rule.
  String? get trafficMirrorFilterRuleId;

  /// The type of traffic to assign to the rule.
  TrafficDirection? get trafficDirection;

  /// The number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
  int get ruleNumber;

  /// The action to assign to the rule.
  TrafficMirrorRuleAction? get ruleAction;

  /// The destination ports that are associated with the Traffic Mirror rule.
  TrafficMirrorPortRangeRequest? get destinationPortRange;

  /// The port range to assign to the Traffic Mirror rule.
  TrafficMirrorPortRangeRequest? get sourcePortRange;

  /// The protocol, for example TCP, to assign to the Traffic Mirror rule.
  int get protocol;

  /// The destination CIDR block to assign to the Traffic Mirror rule.
  String? get destinationCidrBlock;

  /// The source CIDR block to assign to the Traffic Mirror rule.
  String? get sourceCidrBlock;

  /// The description to assign to the Traffic Mirror rule.
  String? get description;

  /// The properties that you want to remove from the Traffic Mirror filter rule.
  ///
  /// When you remove a property from a Traffic Mirror filter rule, the property is set to the default.
  _i3.BuiltList<TrafficMirrorFilterRuleField>? get removeFields;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyTrafficMirrorFilterRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorFilterRuleId,
        trafficDirection,
        ruleNumber,
        ruleAction,
        destinationPortRange,
        sourcePortRange,
        protocol,
        destinationCidrBlock,
        sourceCidrBlock,
        description,
        removeFields,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyTrafficMirrorFilterRuleRequest')
          ..add(
            'trafficMirrorFilterRuleId',
            trafficMirrorFilterRuleId,
          )
          ..add(
            'trafficDirection',
            trafficDirection,
          )
          ..add(
            'ruleNumber',
            ruleNumber,
          )
          ..add(
            'ruleAction',
            ruleAction,
          )
          ..add(
            'destinationPortRange',
            destinationPortRange,
          )
          ..add(
            'sourcePortRange',
            sourcePortRange,
          )
          ..add(
            'protocol',
            protocol,
          )
          ..add(
            'destinationCidrBlock',
            destinationCidrBlock,
          )
          ..add(
            'sourceCidrBlock',
            sourceCidrBlock,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'removeFields',
            removeFields,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyTrafficMirrorFilterRuleRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyTrafficMirrorFilterRuleRequest> {
  const ModifyTrafficMirrorFilterRuleRequestEc2QuerySerializer()
      : super('ModifyTrafficMirrorFilterRuleRequest');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorFilterRuleRequest,
        _$ModifyTrafficMirrorFilterRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorFilterRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorFilterRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrafficMirrorFilterRuleId':
          result.trafficMirrorFilterRuleId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TrafficDirection':
          result.trafficDirection = (serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficDirection),
          ) as TrafficDirection);
        case 'RuleNumber':
          result.ruleNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'RuleAction':
          result.ruleAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorRuleAction),
          ) as TrafficMirrorRuleAction);
        case 'DestinationPortRange':
          result.destinationPortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorPortRangeRequest),
          ) as TrafficMirrorPortRangeRequest));
        case 'SourcePortRange':
          result.sourcePortRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorPortRangeRequest),
          ) as TrafficMirrorPortRangeRequest));
        case 'Protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DestinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceCidrBlock':
          result.sourceCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RemoveField':
          result.removeFields.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TrafficMirrorFilterRuleField)],
            ),
          ) as _i3.BuiltList<TrafficMirrorFilterRuleField>));
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
    ModifyTrafficMirrorFilterRuleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyTrafficMirrorFilterRuleRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTrafficMirrorFilterRuleRequest(
      :trafficMirrorFilterRuleId,
      :trafficDirection,
      :ruleNumber,
      :ruleAction,
      :destinationPortRange,
      :sourcePortRange,
      :protocol,
      :destinationCidrBlock,
      :sourceCidrBlock,
      :description,
      :removeFields,
      :dryRun
    ) = object;
    if (trafficMirrorFilterRuleId != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorFilterRuleId'))
        ..add(serializers.serialize(
          trafficMirrorFilterRuleId,
          specifiedType: const FullType(String),
        ));
    }
    if (trafficDirection != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficDirection'))
        ..add(serializers.serialize(
          trafficDirection,
          specifiedType: const FullType.nullable(TrafficDirection),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        ruleNumber,
        specifiedType: const FullType(int),
      ));
    if (ruleAction != null) {
      result$
        ..add(const _i1.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          ruleAction,
          specifiedType: const FullType.nullable(TrafficMirrorRuleAction),
        ));
    }
    if (destinationPortRange != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationPortRange'))
        ..add(serializers.serialize(
          destinationPortRange,
          specifiedType: const FullType(TrafficMirrorPortRangeRequest),
        ));
    }
    if (sourcePortRange != null) {
      result$
        ..add(const _i1.XmlElementName('SourcePortRange'))
        ..add(serializers.serialize(
          sourcePortRange,
          specifiedType: const FullType(TrafficMirrorPortRangeRequest),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Protocol'))
      ..add(serializers.serialize(
        protocol,
        specifiedType: const FullType(int),
      ));
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceCidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('SourceCidrBlock'))
        ..add(serializers.serialize(
          sourceCidrBlock,
          specifiedType: const FullType(String),
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
    if (removeFields != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveField'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          removeFields,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TrafficMirrorFilterRuleField)],
          ),
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
