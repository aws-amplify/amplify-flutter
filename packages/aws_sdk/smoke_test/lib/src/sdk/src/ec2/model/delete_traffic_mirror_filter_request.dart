// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_traffic_mirror_filter_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_traffic_mirror_filter_request.g.dart';

abstract class DeleteTrafficMirrorFilterRequest
    with
        _i1.HttpInput<DeleteTrafficMirrorFilterRequest>,
        _i2.AWSEquatable<DeleteTrafficMirrorFilterRequest>
    implements
        Built<DeleteTrafficMirrorFilterRequest,
            DeleteTrafficMirrorFilterRequestBuilder> {
  factory DeleteTrafficMirrorFilterRequest({
    String? trafficMirrorFilterId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTrafficMirrorFilterRequest._(
      trafficMirrorFilterId: trafficMirrorFilterId,
      dryRun: dryRun,
    );
  }

  factory DeleteTrafficMirrorFilterRequest.build(
          [void Function(DeleteTrafficMirrorFilterRequestBuilder) updates]) =
      _$DeleteTrafficMirrorFilterRequest;

  const DeleteTrafficMirrorFilterRequest._();

  factory DeleteTrafficMirrorFilterRequest.fromRequest(
    DeleteTrafficMirrorFilterRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteTrafficMirrorFilterRequest>>
      serializers = [DeleteTrafficMirrorFilterRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorFilterRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTrafficMirrorFilterRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorFilterId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorFilterRequest')
          ..add(
            'trafficMirrorFilterId',
            trafficMirrorFilterId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteTrafficMirrorFilterRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteTrafficMirrorFilterRequest> {
  const DeleteTrafficMirrorFilterRequestEc2QuerySerializer()
      : super('DeleteTrafficMirrorFilterRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorFilterRequest,
        _$DeleteTrafficMirrorFilterRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorFilterRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorFilterRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
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
    DeleteTrafficMirrorFilterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTrafficMirrorFilterRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTrafficMirrorFilterRequest(:trafficMirrorFilterId, :dryRun) =
        object;
    if (trafficMirrorFilterId != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          trafficMirrorFilterId,
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
