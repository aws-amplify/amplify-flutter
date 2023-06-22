// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_user_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'create_user_request.g.dart';

abstract class CreateUserRequest
    with _i1.HttpInput<CreateUserRequest>, _i2.AWSEquatable<CreateUserRequest>
    implements Built<CreateUserRequest, CreateUserRequestBuilder> {
  factory CreateUserRequest({
    String? path,
    required String userName,
    String? permissionsBoundary,
    List<_i3.Tag>? tags,
  }) {
    return _$CreateUserRequest._(
      path: path,
      userName: userName,
      permissionsBoundary: permissionsBoundary,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory CreateUserRequest.build(
      [void Function(CreateUserRequestBuilder) updates]) = _$CreateUserRequest;

  const CreateUserRequest._();

  factory CreateUserRequest.fromRequest(
    CreateUserRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateUserRequest>> serializers = [
    CreateUserRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateUserRequestBuilder b) {}

  /// The path for the user name. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/).
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get path;

  /// The name of the user to create.
  ///
  /// IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
  String get userName;

  /// The ARN of the managed policy that is used to set the permissions boundary for the user.
  ///
  /// A permissions boundary policy defines the maximum permissions that identity-based policies can grant to an entity, but does not grant permissions. Permissions boundaries do not define the maximum permissions that a resource-based policy can grant to an entity. To learn more, see [Permissions boundaries for IAM entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  ///
  /// For more information about policy types, see [Policy types](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types) in the _IAM User Guide_.
  String? get permissionsBoundary;

  /// A list of tags that you want to attach to the new user. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  CreateUserRequest getPayload() => this;
  @override
  List<Object?> get props => [
        path,
        userName,
        permissionsBoundary,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateUserRequest')
      ..add(
        'path',
        path,
      )
      ..add(
        'userName',
        userName,
      )
      ..add(
        'permissionsBoundary',
        permissionsBoundary,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CreateUserRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateUserRequest> {
  const CreateUserRequestAwsQuerySerializer() : super('CreateUserRequest');

  @override
  Iterable<Type> get types => const [
        CreateUserRequest,
        _$CreateUserRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateUserRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUserRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PermissionsBoundary':
          result.permissionsBoundary = (serializers.deserialize(
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
    CreateUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateUserRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateUserRequest(:path, :userName, :permissionsBoundary, :tags) =
        object;
    if (path != null) {
      result$
        ..add(const _i1.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    if (permissionsBoundary != null) {
      result$
        ..add(const _i1.XmlElementName('PermissionsBoundary'))
        ..add(serializers.serialize(
          permissionsBoundary,
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
