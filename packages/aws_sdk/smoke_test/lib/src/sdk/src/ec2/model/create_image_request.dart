// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_image_request.g.dart';

abstract class CreateImageRequest
    with _i1.HttpInput<CreateImageRequest>, _i2.AWSEquatable<CreateImageRequest>
    implements Built<CreateImageRequest, CreateImageRequestBuilder> {
  factory CreateImageRequest({
    List<BlockDeviceMapping>? blockDeviceMappings,
    String? description,
    bool? dryRun,
    String? instanceId,
    String? name,
    bool? noReboot,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    noReboot ??= false;
    return _$CreateImageRequest._(
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i3.BuiltList(blockDeviceMappings),
      description: description,
      dryRun: dryRun,
      instanceId: instanceId,
      name: name,
      noReboot: noReboot,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateImageRequest.build(
          [void Function(CreateImageRequestBuilder) updates]) =
      _$CreateImageRequest;

  const CreateImageRequest._();

  factory CreateImageRequest.fromRequest(
    CreateImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateImageRequest>> serializers = [
    CreateImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateImageRequestBuilder b) {
    b
      ..dryRun = false
      ..noReboot = false;
  }

  /// The block device mappings. This parameter cannot be used to modify the encryption status of existing volumes or snapshots. To create an AMI with encrypted snapshots, use the CopyImage action.
  _i3.BuiltList<BlockDeviceMapping>? get blockDeviceMappings;

  /// A description for the new image.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String? get instanceId;

  /// A name for the new image.
  ///
  /// Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)
  String? get name;

  /// Indicates whether or not the instance should be automatically rebooted before creating the image. Specify one of the following values:
  ///
  /// *   `true` \- The instance is not rebooted before creating the image. This creates crash-consistent snapshots that include only the data that has been written to the volumes at the time the snapshots are created. Buffered data and data in memory that has not yet been written to the volumes is not included in the snapshots.
  ///
  /// *   `false` \- The instance is rebooted before creating the image. This ensures that all buffered data and data in memory is written to the volumes before the snapshots are created.
  ///
  ///
  /// Default: `false`
  bool get noReboot;

  /// The tags to apply to the AMI and snapshots on creation. You can tag the AMI, the snapshots, or both.
  ///
  /// *   To tag the AMI, the value for `ResourceType` must be `image`.
  ///
  /// *   To tag the snapshots that are created of the root volume and of other Amazon EBS volumes that are attached to the instance, the value for `ResourceType` must be `snapshot`. The same tag is applied to all of the snapshots that are created.
  ///
  ///
  /// If you specify other values for `ResourceType`, the request fails.
  ///
  /// To tag an AMI or snapshot after it has been created, see [CreateTags](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        blockDeviceMappings,
        description,
        dryRun,
        instanceId,
        name,
        noReboot,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateImageRequest')
      ..add(
        'blockDeviceMappings',
        blockDeviceMappings,
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
        'instanceId',
        instanceId,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'noReboot',
        noReboot,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class CreateImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateImageRequest> {
  const CreateImageRequestEc2QuerySerializer() : super('CreateImageRequest');

  @override
  Iterable<Type> get types => const [
        CreateImageRequest,
        _$CreateImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'blockDeviceMapping':
          result.blockDeviceMappings.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'BlockDeviceMapping',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(BlockDeviceMapping)],
            ),
          ) as _i3.BuiltList<BlockDeviceMapping>));
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
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'noReboot':
          result.noReboot = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateImageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateImageRequest(
      :blockDeviceMappings,
      :description,
      :dryRun,
      :instanceId,
      :name,
      :noReboot,
      :tagSpecifications
    ) = object;
    if (blockDeviceMappings != null) {
      result$
        ..add(const _i1.XmlElementName('BlockDeviceMapping'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          blockDeviceMappings,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(BlockDeviceMapping)],
          ),
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
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('NoReboot'))
      ..add(serializers.serialize(
        noReboot,
        specifiedType: const FullType(bool),
      ));
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
