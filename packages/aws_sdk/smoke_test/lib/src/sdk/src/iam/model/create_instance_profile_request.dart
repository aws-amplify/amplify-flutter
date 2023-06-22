// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_instance_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'create_instance_profile_request.g.dart';

abstract class CreateInstanceProfileRequest
    with
        _i1.HttpInput<CreateInstanceProfileRequest>,
        _i2.AWSEquatable<CreateInstanceProfileRequest>
    implements
        Built<CreateInstanceProfileRequest,
            CreateInstanceProfileRequestBuilder> {
  factory CreateInstanceProfileRequest({
    required String instanceProfileName,
    String? path,
    List<_i3.Tag>? tags,
  }) {
    return _$CreateInstanceProfileRequest._(
      instanceProfileName: instanceProfileName,
      path: path,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory CreateInstanceProfileRequest.build(
          [void Function(CreateInstanceProfileRequestBuilder) updates]) =
      _$CreateInstanceProfileRequest;

  const CreateInstanceProfileRequest._();

  factory CreateInstanceProfileRequest.fromRequest(
    CreateInstanceProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateInstanceProfileRequest>>
      serializers = [CreateInstanceProfileRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInstanceProfileRequestBuilder b) {}

  /// The name of the instance profile to create.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get instanceProfileName;

  /// The path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/).
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get path;

  /// A list of tags that you want to attach to the newly created IAM instance profile. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  CreateInstanceProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceProfileName,
        path,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateInstanceProfileRequest')
      ..add(
        'instanceProfileName',
        instanceProfileName,
      )
      ..add(
        'path',
        path,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CreateInstanceProfileRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateInstanceProfileRequest> {
  const CreateInstanceProfileRequestAwsQuerySerializer()
      : super('CreateInstanceProfileRequest');

  @override
  Iterable<Type> get types => const [
        CreateInstanceProfileRequest,
        _$CreateInstanceProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateInstanceProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceProfileRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceProfileName':
          result.instanceProfileName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateInstanceProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateInstanceProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateInstanceProfileRequest(:instanceProfileName, :path, :tags) =
        object;
    result$
      ..add(const _i1.XmlElementName('InstanceProfileName'))
      ..add(serializers.serialize(
        instanceProfileName,
        specifiedType: const FullType(String),
      ));
    if (path != null) {
      result$
        ..add(const _i1.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i1.XmlElementName('Tags'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result$;
  }
}
