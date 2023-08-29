// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_fast_launch_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_launch_template_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_snapshot_configuration_request.dart';

part 'enable_fast_launch_request.g.dart';

abstract class EnableFastLaunchRequest
    with
        _i1.HttpInput<EnableFastLaunchRequest>,
        _i2.AWSEquatable<EnableFastLaunchRequest>
    implements Built<EnableFastLaunchRequest, EnableFastLaunchRequestBuilder> {
  factory EnableFastLaunchRequest({
    String? imageId,
    String? resourceType,
    FastLaunchSnapshotConfigurationRequest? snapshotConfiguration,
    FastLaunchLaunchTemplateSpecificationRequest? launchTemplate,
    int? maxParallelLaunches,
    bool? dryRun,
  }) {
    maxParallelLaunches ??= 0;
    dryRun ??= false;
    return _$EnableFastLaunchRequest._(
      imageId: imageId,
      resourceType: resourceType,
      snapshotConfiguration: snapshotConfiguration,
      launchTemplate: launchTemplate,
      maxParallelLaunches: maxParallelLaunches,
      dryRun: dryRun,
    );
  }

  factory EnableFastLaunchRequest.build(
          [void Function(EnableFastLaunchRequestBuilder) updates]) =
      _$EnableFastLaunchRequest;

  const EnableFastLaunchRequest._();

  factory EnableFastLaunchRequest.fromRequest(
    EnableFastLaunchRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<EnableFastLaunchRequest>> serializers =
      [EnableFastLaunchRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableFastLaunchRequestBuilder b) {
    b
      ..maxParallelLaunches = 0
      ..dryRun = false;
  }

  /// The ID of the image for which you’re enabling faster launching.
  String? get imageId;

  /// The type of resource to use for pre-provisioning the Windows AMI for faster launching. Supported values include: `snapshot`, which is the default value.
  String? get resourceType;

  /// Configuration settings for creating and managing the snapshots that are used for pre-provisioning the Windows AMI for faster launching. The associated `ResourceType` must be `snapshot`.
  FastLaunchSnapshotConfigurationRequest? get snapshotConfiguration;

  /// The launch template to use when launching Windows instances from pre-provisioned snapshots. Launch template parameters can include either the name or ID of the launch template, but not both.
  FastLaunchLaunchTemplateSpecificationRequest? get launchTemplate;

  /// The maximum number of instances that Amazon EC2 can launch at the same time to create pre-provisioned snapshots for Windows faster launching. Value must be `6` or greater.
  int get maxParallelLaunches;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  EnableFastLaunchRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageId,
        resourceType,
        snapshotConfiguration,
        launchTemplate,
        maxParallelLaunches,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnableFastLaunchRequest')
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'snapshotConfiguration',
        snapshotConfiguration,
      )
      ..add(
        'launchTemplate',
        launchTemplate,
      )
      ..add(
        'maxParallelLaunches',
        maxParallelLaunches,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class EnableFastLaunchRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<EnableFastLaunchRequest> {
  const EnableFastLaunchRequestEc2QuerySerializer()
      : super('EnableFastLaunchRequest');

  @override
  Iterable<Type> get types => const [
        EnableFastLaunchRequest,
        _$EnableFastLaunchRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastLaunchRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastLaunchRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SnapshotConfiguration':
          result.snapshotConfiguration.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(FastLaunchSnapshotConfigurationRequest),
          ) as FastLaunchSnapshotConfigurationRequest));
        case 'LaunchTemplate':
          result.launchTemplate.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(FastLaunchLaunchTemplateSpecificationRequest),
          ) as FastLaunchLaunchTemplateSpecificationRequest));
        case 'MaxParallelLaunches':
          result.maxParallelLaunches = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    EnableFastLaunchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableFastLaunchRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableFastLaunchRequest(
      :imageId,
      :resourceType,
      :snapshotConfiguration,
      :launchTemplate,
      :maxParallelLaunches,
      :dryRun
    ) = object;
    if (imageId != null) {
      result$
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotConfiguration != null) {
      result$
        ..add(const _i1.XmlElementName('SnapshotConfiguration'))
        ..add(serializers.serialize(
          snapshotConfiguration,
          specifiedType: const FullType(FastLaunchSnapshotConfigurationRequest),
        ));
    }
    if (launchTemplate != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplate'))
        ..add(serializers.serialize(
          launchTemplate,
          specifiedType:
              const FullType(FastLaunchLaunchTemplateSpecificationRequest),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxParallelLaunches'))
      ..add(serializers.serialize(
        maxParallelLaunches,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
