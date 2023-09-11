// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_snapshot_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_snapshot_request.g.dart';

abstract class CreateSnapshotRequest
    with
        _i1.HttpInput<CreateSnapshotRequest>,
        _i2.AWSEquatable<CreateSnapshotRequest>
    implements Built<CreateSnapshotRequest, CreateSnapshotRequestBuilder> {
  factory CreateSnapshotRequest({
    String? description,
    String? outpostArn,
    String? volumeId,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateSnapshotRequest._(
      description: description,
      outpostArn: outpostArn,
      volumeId: volumeId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateSnapshotRequest.build(
          [void Function(CreateSnapshotRequestBuilder) updates]) =
      _$CreateSnapshotRequest;

  const CreateSnapshotRequest._();

  factory CreateSnapshotRequest.fromRequest(
    CreateSnapshotRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateSnapshotRequest>> serializers = [
    CreateSnapshotRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSnapshotRequestBuilder b) {
    b.dryRun = false;
  }

  /// A description for the snapshot.
  String? get description;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  ///
  /// *   To create a snapshot of a volume in a Region, omit this parameter. The snapshot is created in the same Region as the volume.
  ///
  /// *   To create a snapshot of a volume on an Outpost and store the snapshot in the Region, omit this parameter. The snapshot is created in the Region for the Outpost.
  ///
  /// *   To create a snapshot of a volume on an Outpost and store the snapshot on an Outpost, specify the ARN of the destination Outpost. The snapshot must be created on the same Outpost as the volume.
  ///
  ///
  /// For more information, see [Create local snapshots from volumes on an Outpost](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#create-snapshot) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get outpostArn;

  /// The ID of the Amazon EBS volume.
  String? get volumeId;

  /// The tags to apply to the snapshot during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateSnapshotRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        outpostArn,
        volumeId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSnapshotRequest')
      ..add(
        'description',
        description,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class CreateSnapshotRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateSnapshotRequest> {
  const CreateSnapshotRequestEc2QuerySerializer()
      : super('CreateSnapshotRequest');

  @override
  Iterable<Type> get types => const [
        CreateSnapshotRequest,
        _$CreateSnapshotRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSnapshotRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSnapshotRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OutpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VolumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    CreateSnapshotRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateSnapshotRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSnapshotRequest(
      :description,
      :outpostArn,
      :volumeId,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i1.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
