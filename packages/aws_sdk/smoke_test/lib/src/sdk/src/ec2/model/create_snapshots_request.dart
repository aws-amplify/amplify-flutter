// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_snapshots_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/copy_tags_from_source.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_snapshots_request.g.dart';

abstract class CreateSnapshotsRequest
    with
        _i1.HttpInput<CreateSnapshotsRequest>,
        _i2.AWSEquatable<CreateSnapshotsRequest>
    implements Built<CreateSnapshotsRequest, CreateSnapshotsRequestBuilder> {
  factory CreateSnapshotsRequest({
    String? description,
    InstanceSpecification? instanceSpecification,
    String? outpostArn,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
    CopyTagsFromSource? copyTagsFromSource,
  }) {
    dryRun ??= false;
    return _$CreateSnapshotsRequest._(
      description: description,
      instanceSpecification: instanceSpecification,
      outpostArn: outpostArn,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
      copyTagsFromSource: copyTagsFromSource,
    );
  }

  factory CreateSnapshotsRequest.build(
          [void Function(CreateSnapshotsRequestBuilder) updates]) =
      _$CreateSnapshotsRequest;

  const CreateSnapshotsRequest._();

  factory CreateSnapshotsRequest.fromRequest(
    CreateSnapshotsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateSnapshotsRequest>> serializers =
      [CreateSnapshotsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSnapshotsRequestBuilder b) {
    b.dryRun = false;
  }

  /// A description propagated to every snapshot specified by the instance.
  String? get description;

  /// The instance to specify which volumes should be included in the snapshots.
  InstanceSpecification? get instanceSpecification;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create the local snapshots.
  ///
  /// *   To create snapshots from an instance in a Region, omit this parameter. The snapshots are created in the same Region as the instance.
  ///
  /// *   To create snapshots from an instance on an Outpost and store the snapshots in the Region, omit this parameter. The snapshots are created in the Region for the Outpost.
  ///
  /// *   To create snapshots from an instance on an Outpost and store the snapshots on an Outpost, specify the ARN of the destination Outpost. The snapshots must be created on the same Outpost as the instance.
  ///
  ///
  /// For more information, see [Create multi-volume local snapshots from instances on an Outpost](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#create-multivol-snapshot) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get outpostArn;

  /// Tags to apply to every snapshot specified by the instance.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Copies the tags from the specified volume to corresponding snapshot.
  CopyTagsFromSource? get copyTagsFromSource;
  @override
  CreateSnapshotsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        instanceSpecification,
        outpostArn,
        tagSpecifications,
        dryRun,
        copyTagsFromSource,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSnapshotsRequest')
      ..add(
        'description',
        description,
      )
      ..add(
        'instanceSpecification',
        instanceSpecification,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'copyTagsFromSource',
        copyTagsFromSource,
      );
    return helper.toString();
  }
}

class CreateSnapshotsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateSnapshotsRequest> {
  const CreateSnapshotsRequestEc2QuerySerializer()
      : super('CreateSnapshotsRequest');

  @override
  Iterable<Type> get types => const [
        CreateSnapshotsRequest,
        _$CreateSnapshotsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSnapshotsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSnapshotsRequestBuilder();
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
        case 'InstanceSpecification':
          result.instanceSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceSpecification),
          ) as InstanceSpecification));
        case 'OutpostArn':
          result.outpostArn = (serializers.deserialize(
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'CopyTagsFromSource':
          result.copyTagsFromSource = (serializers.deserialize(
            value,
            specifiedType: const FullType(CopyTagsFromSource),
          ) as CopyTagsFromSource);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateSnapshotsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateSnapshotsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSnapshotsRequest(
      :description,
      :instanceSpecification,
      :outpostArn,
      :tagSpecifications,
      :dryRun,
      :copyTagsFromSource
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceSpecification != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceSpecification'))
        ..add(serializers.serialize(
          instanceSpecification,
          specifiedType: const FullType(InstanceSpecification),
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
    if (copyTagsFromSource != null) {
      result$
        ..add(const _i1.XmlElementName('CopyTagsFromSource'))
        ..add(serializers.serialize(
          copyTagsFromSource,
          specifiedType: const FullType(CopyTagsFromSource),
        ));
    }
    return result$;
  }
}
