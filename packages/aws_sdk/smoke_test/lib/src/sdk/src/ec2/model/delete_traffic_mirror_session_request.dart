// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_traffic_mirror_session_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_traffic_mirror_session_request.g.dart';

abstract class DeleteTrafficMirrorSessionRequest
    with
        _i1.HttpInput<DeleteTrafficMirrorSessionRequest>,
        _i2.AWSEquatable<DeleteTrafficMirrorSessionRequest>
    implements
        Built<DeleteTrafficMirrorSessionRequest,
            DeleteTrafficMirrorSessionRequestBuilder> {
  factory DeleteTrafficMirrorSessionRequest({
    String? trafficMirrorSessionId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTrafficMirrorSessionRequest._(
      trafficMirrorSessionId: trafficMirrorSessionId,
      dryRun: dryRun,
    );
  }

  factory DeleteTrafficMirrorSessionRequest.build(
          [void Function(DeleteTrafficMirrorSessionRequestBuilder) updates]) =
      _$DeleteTrafficMirrorSessionRequest;

  const DeleteTrafficMirrorSessionRequest._();

  factory DeleteTrafficMirrorSessionRequest.fromRequest(
    DeleteTrafficMirrorSessionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteTrafficMirrorSessionRequest>>
      serializers = [DeleteTrafficMirrorSessionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorSessionRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Traffic Mirror session.
  String? get trafficMirrorSessionId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTrafficMirrorSessionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorSessionId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorSessionRequest')
          ..add(
            'trafficMirrorSessionId',
            trafficMirrorSessionId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteTrafficMirrorSessionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteTrafficMirrorSessionRequest> {
  const DeleteTrafficMirrorSessionRequestEc2QuerySerializer()
      : super('DeleteTrafficMirrorSessionRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorSessionRequest,
        _$DeleteTrafficMirrorSessionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorSessionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorSessionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrafficMirrorSessionId':
          result.trafficMirrorSessionId = (serializers.deserialize(
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
    DeleteTrafficMirrorSessionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTrafficMirrorSessionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTrafficMirrorSessionRequest(:trafficMirrorSessionId, :dryRun) =
        object;
    if (trafficMirrorSessionId != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorSessionId'))
        ..add(serializers.serialize(
          trafficMirrorSessionId,
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
