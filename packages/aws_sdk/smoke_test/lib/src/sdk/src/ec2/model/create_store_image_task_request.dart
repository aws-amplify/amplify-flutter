// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_store_image_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/s3_object_tag.dart';

part 'create_store_image_task_request.g.dart';

abstract class CreateStoreImageTaskRequest
    with
        _i1.HttpInput<CreateStoreImageTaskRequest>,
        _i2.AWSEquatable<CreateStoreImageTaskRequest>
    implements
        Built<CreateStoreImageTaskRequest, CreateStoreImageTaskRequestBuilder> {
  factory CreateStoreImageTaskRequest({
    String? imageId,
    String? bucket,
    List<S3ObjectTag>? s3ObjectTags,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateStoreImageTaskRequest._(
      imageId: imageId,
      bucket: bucket,
      s3ObjectTags: s3ObjectTags == null ? null : _i3.BuiltList(s3ObjectTags),
      dryRun: dryRun,
    );
  }

  factory CreateStoreImageTaskRequest.build(
          [void Function(CreateStoreImageTaskRequestBuilder) updates]) =
      _$CreateStoreImageTaskRequest;

  const CreateStoreImageTaskRequest._();

  factory CreateStoreImageTaskRequest.fromRequest(
    CreateStoreImageTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateStoreImageTaskRequest>>
      serializers = [CreateStoreImageTaskRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStoreImageTaskRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the AMI.
  String? get imageId;

  /// The name of the Amazon S3 bucket in which the AMI object will be stored. The bucket must be in the Region in which the request is being made. The AMI object appears in the bucket only after the upload task has completed.
  String? get bucket;

  /// The tags to apply to the AMI object that will be stored in the Amazon S3 bucket.
  _i3.BuiltList<S3ObjectTag>? get s3ObjectTags;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateStoreImageTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageId,
        bucket,
        s3ObjectTags,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStoreImageTaskRequest')
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        's3ObjectTags',
        s3ObjectTags,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class CreateStoreImageTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateStoreImageTaskRequest> {
  const CreateStoreImageTaskRequestEc2QuerySerializer()
      : super('CreateStoreImageTaskRequest');

  @override
  Iterable<Type> get types => const [
        CreateStoreImageTaskRequest,
        _$CreateStoreImageTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateStoreImageTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStoreImageTaskRequestBuilder();
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
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3ObjectTag':
          result.s3ObjectTags.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(S3ObjectTag)],
            ),
          ) as _i3.BuiltList<S3ObjectTag>));
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
    CreateStoreImageTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateStoreImageTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateStoreImageTaskRequest(
      :imageId,
      :bucket,
      :s3ObjectTags,
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
    if (bucket != null) {
      result$
        ..add(const _i1.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (s3ObjectTags != null) {
      result$
        ..add(const _i1.XmlElementName('S3ObjectTag'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          s3ObjectTags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(S3ObjectTag)],
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
