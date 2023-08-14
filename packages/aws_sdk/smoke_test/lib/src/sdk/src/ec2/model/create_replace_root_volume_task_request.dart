// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_replace_root_volume_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_replace_root_volume_task_request.g.dart';

abstract class CreateReplaceRootVolumeTaskRequest
    with
        _i1.HttpInput<CreateReplaceRootVolumeTaskRequest>,
        _i2.AWSEquatable<CreateReplaceRootVolumeTaskRequest>
    implements
        Built<CreateReplaceRootVolumeTaskRequest,
            CreateReplaceRootVolumeTaskRequestBuilder> {
  factory CreateReplaceRootVolumeTaskRequest({
    String? instanceId,
    String? snapshotId,
    String? clientToken,
    bool? dryRun,
    List<TagSpecification>? tagSpecifications,
    String? imageId,
    bool? deleteReplacedRootVolume,
  }) {
    dryRun ??= false;
    deleteReplacedRootVolume ??= false;
    return _$CreateReplaceRootVolumeTaskRequest._(
      instanceId: instanceId,
      snapshotId: snapshotId,
      clientToken: clientToken,
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      imageId: imageId,
      deleteReplacedRootVolume: deleteReplacedRootVolume,
    );
  }

  factory CreateReplaceRootVolumeTaskRequest.build(
          [void Function(CreateReplaceRootVolumeTaskRequestBuilder) updates]) =
      _$CreateReplaceRootVolumeTaskRequest;

  const CreateReplaceRootVolumeTaskRequest._();

  factory CreateReplaceRootVolumeTaskRequest.fromRequest(
    CreateReplaceRootVolumeTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateReplaceRootVolumeTaskRequest>>
      serializers = [CreateReplaceRootVolumeTaskRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateReplaceRootVolumeTaskRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false
      ..deleteReplacedRootVolume = false;
  }

  /// The ID of the instance for which to replace the root volume.
  String? get instanceId;

  /// The ID of the snapshot from which to restore the replacement root volume. The specified snapshot must be a snapshot that you previously created from the original root volume.
  ///
  /// If you want to restore the replacement root volume to the initial launch state, or if you want to restore the replacement root volume from an AMI, omit this parameter.
  String? get snapshotId;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to apply to the root volume replacement task.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// The ID of the AMI to use to restore the root volume. The specified AMI must have the same product code, billing information, architecture type, and virtualization type as that of the instance.
  ///
  /// If you want to restore the replacement volume from a specific snapshot, or if you want to restore it to its launch state, omit this parameter.
  String? get imageId;

  /// Indicates whether to automatically delete the original root volume after the root volume replacement task completes. To delete the original root volume, specify `true`. If you choose to keep the original root volume after the replacement task completes, you must manually delete it when you no longer need it.
  bool get deleteReplacedRootVolume;
  @override
  CreateReplaceRootVolumeTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        snapshotId,
        clientToken,
        dryRun,
        tagSpecifications,
        imageId,
        deleteReplacedRootVolume,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateReplaceRootVolumeTaskRequest')
          ..add(
            'instanceId',
            instanceId,
          )
          ..add(
            'snapshotId',
            snapshotId,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'imageId',
            imageId,
          )
          ..add(
            'deleteReplacedRootVolume',
            deleteReplacedRootVolume,
          );
    return helper.toString();
  }
}

class CreateReplaceRootVolumeTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateReplaceRootVolumeTaskRequest> {
  const CreateReplaceRootVolumeTaskRequestEc2QuerySerializer()
      : super('CreateReplaceRootVolumeTaskRequest');

  @override
  Iterable<Type> get types => const [
        CreateReplaceRootVolumeTaskRequest,
        _$CreateReplaceRootVolumeTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateReplaceRootVolumeTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReplaceRootVolumeTaskRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SnapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeleteReplacedRootVolume':
          result.deleteReplacedRootVolume = (serializers.deserialize(
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
    CreateReplaceRootVolumeTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateReplaceRootVolumeTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateReplaceRootVolumeTaskRequest(
      :instanceId,
      :snapshotId,
      :clientToken,
      :dryRun,
      :tagSpecifications,
      :imageId,
      :deleteReplacedRootVolume
    ) = object;
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotId != null) {
      result$
        ..add(const _i1.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DeleteReplacedRootVolume'))
      ..add(serializers.serialize(
        deleteReplacedRootVolume,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
