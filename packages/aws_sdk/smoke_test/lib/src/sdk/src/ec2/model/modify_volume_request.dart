// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_volume_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart';

part 'modify_volume_request.g.dart';

abstract class ModifyVolumeRequest
    with
        _i1.HttpInput<ModifyVolumeRequest>,
        _i2.AWSEquatable<ModifyVolumeRequest>
    implements Built<ModifyVolumeRequest, ModifyVolumeRequestBuilder> {
  factory ModifyVolumeRequest({
    bool? dryRun,
    String? volumeId,
    int? size,
    VolumeType? volumeType,
    int? iops,
    int? throughput,
    bool? multiAttachEnabled,
  }) {
    dryRun ??= false;
    size ??= 0;
    iops ??= 0;
    throughput ??= 0;
    multiAttachEnabled ??= false;
    return _$ModifyVolumeRequest._(
      dryRun: dryRun,
      volumeId: volumeId,
      size: size,
      volumeType: volumeType,
      iops: iops,
      throughput: throughput,
      multiAttachEnabled: multiAttachEnabled,
    );
  }

  factory ModifyVolumeRequest.build(
          [void Function(ModifyVolumeRequestBuilder) updates]) =
      _$ModifyVolumeRequest;

  const ModifyVolumeRequest._();

  factory ModifyVolumeRequest.fromRequest(
    ModifyVolumeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyVolumeRequest>> serializers = [
    ModifyVolumeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVolumeRequestBuilder b) {
    b
      ..dryRun = false
      ..size = 0
      ..iops = 0
      ..throughput = 0
      ..multiAttachEnabled = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the volume.
  String? get volumeId;

  /// The target size of the volume, in GiB. The target volume size must be greater than or equal to the existing size of the volume.
  ///
  /// The following are the supported volumes sizes for each volume type:
  ///
  /// *   `gp2` and `gp3`: 1-16,384
  ///
  /// *   `io1` and `io2`: 4-16,384
  ///
  /// *   `st1` and `sc1`: 125-16,384
  ///
  /// *   `standard`: 1-1,024
  ///
  ///
  /// Default: The existing size is retained.
  int get size;

  /// The target EBS volume type of the volume. For more information, see [Amazon EBS volume types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Default: The existing type is retained.
  VolumeType? get volumeType;

  /// The target IOPS rate of the volume. This parameter is valid only for `gp3`, `io1`, and `io2` volumes.
  ///
  /// The following are the supported values for each volume type:
  ///
  /// *   `gp3`: 3,000-16,000 IOPS
  ///
  /// *   `io1`: 100-64,000 IOPS
  ///
  /// *   `io2`: 100-64,000 IOPS
  ///
  ///
  /// Default: The existing value is retained if you keep the same volume type. If you change the volume type to `io1`, `io2`, or `gp3`, the default is 3,000.
  int get iops;

  /// The target throughput of the volume, in MiB/s. This parameter is valid only for `gp3` volumes. The maximum value is 1,000.
  ///
  /// Default: The existing value is retained if the source and target volume type is `gp3`. Otherwise, the default value is 125.
  ///
  /// Valid Range: Minimum value of 125. Maximum value of 1000.
  int get throughput;

  /// Specifies whether to enable Amazon EBS Multi-Attach. If you enable Multi-Attach, you can attach the volume to up to 16 [Nitro-based instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances) in the same Availability Zone. This parameter is supported with `io1` and `io2` volumes only. For more information, see [Amazon EBS Multi-Attach](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes-multi.html) in the _Amazon Elastic Compute Cloud User Guide_.
  bool get multiAttachEnabled;
  @override
  ModifyVolumeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        volumeId,
        size,
        volumeType,
        iops,
        throughput,
        multiAttachEnabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVolumeRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'size',
        size,
      )
      ..add(
        'volumeType',
        volumeType,
      )
      ..add(
        'iops',
        iops,
      )
      ..add(
        'throughput',
        throughput,
      )
      ..add(
        'multiAttachEnabled',
        multiAttachEnabled,
      );
    return helper.toString();
  }
}

class ModifyVolumeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVolumeRequest> {
  const ModifyVolumeRequestEc2QuerySerializer() : super('ModifyVolumeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVolumeRequest,
        _$ModifyVolumeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVolumeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVolumeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'VolumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'VolumeType':
          result.volumeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeType),
          ) as VolumeType);
        case 'Iops':
          result.iops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Throughput':
          result.throughput = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MultiAttachEnabled':
          result.multiAttachEnabled = (serializers.deserialize(
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
    ModifyVolumeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVolumeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVolumeRequest(
      :dryRun,
      :volumeId,
      :size,
      :volumeType,
      :iops,
      :throughput,
      :multiAttachEnabled
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (volumeId != null) {
      result$
        ..add(const _i1.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Size'))
      ..add(serializers.serialize(
        size,
        specifiedType: const FullType(int),
      ));
    if (volumeType != null) {
      result$
        ..add(const _i1.XmlElementName('VolumeType'))
        ..add(serializers.serialize(
          volumeType,
          specifiedType: const FullType.nullable(VolumeType),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Iops'))
      ..add(serializers.serialize(
        iops,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('Throughput'))
      ..add(serializers.serialize(
        throughput,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('MultiAttachEnabled'))
      ..add(serializers.serialize(
        multiAttachEnabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
