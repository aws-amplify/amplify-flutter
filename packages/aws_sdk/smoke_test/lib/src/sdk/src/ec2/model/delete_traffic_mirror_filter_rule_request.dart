// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_traffic_mirror_filter_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_traffic_mirror_filter_rule_request.g.dart';

abstract class DeleteTrafficMirrorFilterRuleRequest
    with
        _i1.HttpInput<DeleteTrafficMirrorFilterRuleRequest>,
        _i2.AWSEquatable<DeleteTrafficMirrorFilterRuleRequest>
    implements
        Built<DeleteTrafficMirrorFilterRuleRequest,
            DeleteTrafficMirrorFilterRuleRequestBuilder> {
  factory DeleteTrafficMirrorFilterRuleRequest({
    String? trafficMirrorFilterRuleId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTrafficMirrorFilterRuleRequest._(
      trafficMirrorFilterRuleId: trafficMirrorFilterRuleId,
      dryRun: dryRun,
    );
  }

  factory DeleteTrafficMirrorFilterRuleRequest.build(
      [void Function(DeleteTrafficMirrorFilterRuleRequestBuilder)
          updates]) = _$DeleteTrafficMirrorFilterRuleRequest;

  const DeleteTrafficMirrorFilterRuleRequest._();

  factory DeleteTrafficMirrorFilterRuleRequest.fromRequest(
    DeleteTrafficMirrorFilterRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteTrafficMirrorFilterRuleRequest>>
      serializers = [DeleteTrafficMirrorFilterRuleRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorFilterRuleRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Traffic Mirror rule.
  String? get trafficMirrorFilterRuleId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTrafficMirrorFilterRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorFilterRuleId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorFilterRuleRequest')
          ..add(
            'trafficMirrorFilterRuleId',
            trafficMirrorFilterRuleId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteTrafficMirrorFilterRuleRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteTrafficMirrorFilterRuleRequest> {
  const DeleteTrafficMirrorFilterRuleRequestEc2QuerySerializer()
      : super('DeleteTrafficMirrorFilterRuleRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorFilterRuleRequest,
        _$DeleteTrafficMirrorFilterRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorFilterRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorFilterRuleRequestBuilder();
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
    DeleteTrafficMirrorFilterRuleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTrafficMirrorFilterRuleRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTrafficMirrorFilterRuleRequest(
      :trafficMirrorFilterRuleId,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
