// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_traffic_mirror_target_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_traffic_mirror_target_request.g.dart';

abstract class DeleteTrafficMirrorTargetRequest
    with
        _i1.HttpInput<DeleteTrafficMirrorTargetRequest>,
        _i2.AWSEquatable<DeleteTrafficMirrorTargetRequest>
    implements
        Built<DeleteTrafficMirrorTargetRequest,
            DeleteTrafficMirrorTargetRequestBuilder> {
  factory DeleteTrafficMirrorTargetRequest({
    String? trafficMirrorTargetId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTrafficMirrorTargetRequest._(
      trafficMirrorTargetId: trafficMirrorTargetId,
      dryRun: dryRun,
    );
  }

  factory DeleteTrafficMirrorTargetRequest.build(
          [void Function(DeleteTrafficMirrorTargetRequestBuilder) updates]) =
      _$DeleteTrafficMirrorTargetRequest;

  const DeleteTrafficMirrorTargetRequest._();

  factory DeleteTrafficMirrorTargetRequest.fromRequest(
    DeleteTrafficMirrorTargetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteTrafficMirrorTargetRequest>>
      serializers = [DeleteTrafficMirrorTargetRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorTargetRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Traffic Mirror target.
  String? get trafficMirrorTargetId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTrafficMirrorTargetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorTargetId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorTargetRequest')
          ..add(
            'trafficMirrorTargetId',
            trafficMirrorTargetId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteTrafficMirrorTargetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteTrafficMirrorTargetRequest> {
  const DeleteTrafficMirrorTargetRequestEc2QuerySerializer()
      : super('DeleteTrafficMirrorTargetRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorTargetRequest,
        _$DeleteTrafficMirrorTargetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorTargetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorTargetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrafficMirrorTargetId':
          result.trafficMirrorTargetId = (serializers.deserialize(
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
    DeleteTrafficMirrorTargetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTrafficMirrorTargetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTrafficMirrorTargetRequest(:trafficMirrorTargetId, :dryRun) =
        object;
    if (trafficMirrorTargetId != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorTargetId'))
        ..add(serializers.serialize(
          trafficMirrorTargetId,
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
