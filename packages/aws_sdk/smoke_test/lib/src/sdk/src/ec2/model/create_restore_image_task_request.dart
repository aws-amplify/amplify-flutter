// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_restore_image_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_restore_image_task_request.g.dart';

abstract class CreateRestoreImageTaskRequest
    with
        _i1.HttpInput<CreateRestoreImageTaskRequest>,
        _i2.AWSEquatable<CreateRestoreImageTaskRequest>
    implements
        Built<CreateRestoreImageTaskRequest,
            CreateRestoreImageTaskRequestBuilder> {
  factory CreateRestoreImageTaskRequest({
    String? bucket,
    String? objectKey,
    String? name,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateRestoreImageTaskRequest._(
      bucket: bucket,
      objectKey: objectKey,
      name: name,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateRestoreImageTaskRequest.build(
          [void Function(CreateRestoreImageTaskRequestBuilder) updates]) =
      _$CreateRestoreImageTaskRequest;

  const CreateRestoreImageTaskRequest._();

  factory CreateRestoreImageTaskRequest.fromRequest(
    CreateRestoreImageTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateRestoreImageTaskRequest>>
      serializers = [CreateRestoreImageTaskRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRestoreImageTaskRequestBuilder b) {
    b.dryRun = false;
  }

  /// The name of the Amazon S3 bucket that contains the stored AMI object.
  String? get bucket;

  /// The name of the stored AMI object in the bucket.
  String? get objectKey;

  /// The name for the restored AMI. The name must be unique for AMIs in the Region for this account. If you do not provide a name, the new AMI gets the same name as the original AMI.
  String? get name;

  /// The tags to apply to the AMI and snapshots on restoration. You can tag the AMI, the snapshots, or both.
  ///
  /// *   To tag the AMI, the value for `ResourceType` must be `image`.
  ///
  /// *   To tag the snapshots, the value for `ResourceType` must be `snapshot`. The same tag is applied to all of the snapshots that are created.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateRestoreImageTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [
        bucket,
        objectKey,
        name,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRestoreImageTaskRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'objectKey',
        objectKey,
      )
      ..add(
        'name',
        name,
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

class CreateRestoreImageTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateRestoreImageTaskRequest> {
  const CreateRestoreImageTaskRequestEc2QuerySerializer()
      : super('CreateRestoreImageTaskRequest');

  @override
  Iterable<Type> get types => const [
        CreateRestoreImageTaskRequest,
        _$CreateRestoreImageTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateRestoreImageTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRestoreImageTaskRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ObjectKey':
          result.objectKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Name':
          result.name = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateRestoreImageTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateRestoreImageTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateRestoreImageTaskRequest(
      :bucket,
      :objectKey,
      :name,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (bucket != null) {
      result$
        ..add(const _i1.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (objectKey != null) {
      result$
        ..add(const _i1.XmlElementName('ObjectKey'))
        ..add(serializers.serialize(
          objectKey,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
