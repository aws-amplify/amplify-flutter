// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_volume_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_detail.dart';

part 'import_volume_request.g.dart';

abstract class ImportVolumeRequest
    with
        _i1.HttpInput<ImportVolumeRequest>,
        _i2.AWSEquatable<ImportVolumeRequest>
    implements Built<ImportVolumeRequest, ImportVolumeRequestBuilder> {
  factory ImportVolumeRequest({
    String? availabilityZone,
    String? description,
    bool? dryRun,
    DiskImageDetail? image,
    VolumeDetail? volume,
  }) {
    dryRun ??= false;
    return _$ImportVolumeRequest._(
      availabilityZone: availabilityZone,
      description: description,
      dryRun: dryRun,
      image: image,
      volume: volume,
    );
  }

  factory ImportVolumeRequest.build(
          [void Function(ImportVolumeRequestBuilder) updates]) =
      _$ImportVolumeRequest;

  const ImportVolumeRequest._();

  factory ImportVolumeRequest.fromRequest(
    ImportVolumeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ImportVolumeRequest>> serializers = [
    ImportVolumeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportVolumeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The Availability Zone for the resulting EBS volume.
  String? get availabilityZone;

  /// A description of the volume.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The disk image.
  DiskImageDetail? get image;

  /// The volume size.
  VolumeDetail? get volume;
  @override
  ImportVolumeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZone,
        description,
        dryRun,
        image,
        volume,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportVolumeRequest')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'image',
        image,
      )
      ..add(
        'volume',
        volume,
      );
    return helper.toString();
  }
}

class ImportVolumeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ImportVolumeRequest> {
  const ImportVolumeRequestEc2QuerySerializer() : super('ImportVolumeRequest');

  @override
  Iterable<Type> get types => const [
        ImportVolumeRequest,
        _$ImportVolumeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportVolumeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportVolumeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'image':
          result.image.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DiskImageDetail),
          ) as DiskImageDetail));
        case 'volume':
          result.volume.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeDetail),
          ) as VolumeDetail));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportVolumeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ImportVolumeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportVolumeRequest(
      :availabilityZone,
      :description,
      :dryRun,
      :image,
      :volume
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (image != null) {
      result$
        ..add(const _i1.XmlElementName('Image'))
        ..add(serializers.serialize(
          image,
          specifiedType: const FullType(DiskImageDetail),
        ));
    }
    if (volume != null) {
      result$
        ..add(const _i1.XmlElementName('Volume'))
        ..add(serializers.serialize(
          volume,
          specifiedType: const FullType(VolumeDetail),
        ));
    }
    return result$;
  }
}
