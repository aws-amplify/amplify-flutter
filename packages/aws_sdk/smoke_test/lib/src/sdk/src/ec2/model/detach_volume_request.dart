// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.detach_volume_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_volume_request.g.dart';

abstract class DetachVolumeRequest
    with
        _i1.HttpInput<DetachVolumeRequest>,
        _i2.AWSEquatable<DetachVolumeRequest>
    implements Built<DetachVolumeRequest, DetachVolumeRequestBuilder> {
  factory DetachVolumeRequest({
    String? device,
    bool? force,
    String? instanceId,
    String? volumeId,
    bool? dryRun,
  }) {
    force ??= false;
    dryRun ??= false;
    return _$DetachVolumeRequest._(
      device: device,
      force: force,
      instanceId: instanceId,
      volumeId: volumeId,
      dryRun: dryRun,
    );
  }

  factory DetachVolumeRequest.build(
          [void Function(DetachVolumeRequestBuilder) updates]) =
      _$DetachVolumeRequest;

  const DetachVolumeRequest._();

  factory DetachVolumeRequest.fromRequest(
    DetachVolumeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DetachVolumeRequest>> serializers = [
    DetachVolumeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachVolumeRequestBuilder b) {
    b
      ..force = false
      ..dryRun = false;
  }

  /// The device name.
  String? get device;

  /// Forces detachment if the previous detachment attempt did not occur cleanly (for example, logging into an instance, unmounting the volume, and detaching normally). This option can lead to data loss or a corrupted file system. Use this option only as a last resort to detach a volume from a failed instance. The instance won't have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures.
  bool get force;

  /// The ID of the instance. If you are detaching a Multi-Attach enabled volume, you must specify an instance ID.
  String? get instanceId;

  /// The ID of the volume.
  String? get volumeId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DetachVolumeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        device,
        force,
        instanceId,
        volumeId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachVolumeRequest')
      ..add(
        'device',
        device,
      )
      ..add(
        'force',
        force,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DetachVolumeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DetachVolumeRequest> {
  const DetachVolumeRequestEc2QuerySerializer() : super('DetachVolumeRequest');

  @override
  Iterable<Type> get types => const [
        DetachVolumeRequest,
        _$DetachVolumeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DetachVolumeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachVolumeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Device':
          result.device = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Force':
          result.force = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VolumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
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
    DetachVolumeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetachVolumeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DetachVolumeRequest(
      :device,
      :force,
      :instanceId,
      :volumeId,
      :dryRun
    ) = object;
    if (device != null) {
      result$
        ..add(const _i1.XmlElementName('Device'))
        ..add(serializers.serialize(
          device,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Force'))
      ..add(serializers.serialize(
        force,
        specifiedType: const FullType(bool),
      ));
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i1.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
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
