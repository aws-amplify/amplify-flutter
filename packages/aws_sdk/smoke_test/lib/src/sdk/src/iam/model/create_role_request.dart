// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'create_role_request.g.dart';

abstract class CreateRoleRequest
    with _i1.HttpInput<CreateRoleRequest>, _i2.AWSEquatable<CreateRoleRequest>
    implements Built<CreateRoleRequest, CreateRoleRequestBuilder> {
  factory CreateRoleRequest({
    String? path,
    required String roleName,
    required String assumeRolePolicyDocument,
    String? description,
    int? maxSessionDuration,
    String? permissionsBoundary,
    List<_i3.Tag>? tags,
  }) {
    return _$CreateRoleRequest._(
      path: path,
      roleName: roleName,
      assumeRolePolicyDocument: assumeRolePolicyDocument,
      description: description,
      maxSessionDuration: maxSessionDuration,
      permissionsBoundary: permissionsBoundary,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory CreateRoleRequest.build(
      [void Function(CreateRoleRequestBuilder) updates]) = _$CreateRoleRequest;

  const CreateRoleRequest._();

  factory CreateRoleRequest.fromRequest(
    CreateRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateRoleRequest>> serializers = [
    CreateRoleRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRoleRequestBuilder b) {}

  /// The path to the role. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/).
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get path;

  /// The name of the role to create.
  ///
  /// IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;

  /// The trust relationship policy document that grants an entity permission to assume the role.
  ///
  /// In IAM, you must provide a JSON policy that has been converted to a string. However, for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  ///
  ///
  /// Upon success, the response includes the same trust policy in JSON format.
  String get assumeRolePolicyDocument;

  /// A description of the role.
  String? get description;

  /// The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default value of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  ///
  /// Anyone who assumes the role from the CLI or API can use the `DurationSeconds` API parameter or the `duration-seconds` CLI parameter to request a longer session. The `MaxSessionDuration` setting determines the maximum duration that can be requested using the `DurationSeconds` parameter. If users don't specify a value for the `DurationSeconds` parameter, their security credentials are valid for one hour by default. This applies when you use the `AssumeRole*` API operations or the `assume-role*` CLI operations but does not apply when you use those operations to create a console URL. For more information, see [Using IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in the _IAM User Guide_.
  int? get maxSessionDuration;

  /// The ARN of the managed policy that is used to set the permissions boundary for the role.
  ///
  /// A permissions boundary policy defines the maximum permissions that identity-based policies can grant to an entity, but does not grant permissions. Permissions boundaries do not define the maximum permissions that a resource-based policy can grant to an entity. To learn more, see [Permissions boundaries for IAM entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  ///
  /// For more information about policy types, see [Policy types](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types) in the _IAM User Guide_.
  String? get permissionsBoundary;

  /// A list of tags that you want to attach to the new role. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  CreateRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        path,
        roleName,
        assumeRolePolicyDocument,
        description,
        maxSessionDuration,
        permissionsBoundary,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRoleRequest')
      ..add(
        'path',
        path,
      )
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'assumeRolePolicyDocument',
        assumeRolePolicyDocument,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'maxSessionDuration',
        maxSessionDuration,
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

class CreateRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateRoleRequest> {
  const CreateRoleRequestAwsQuerySerializer() : super('CreateRoleRequest');

  @override
  Iterable<Type> get types => const [
        CreateRoleRequest,
        _$CreateRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRoleRequestBuilder();
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
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AssumeRolePolicyDocument':
          result.assumeRolePolicyDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxSessionDuration':
          result.maxSessionDuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    CreateRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateRoleRequest(
      :path,
      :roleName,
      :assumeRolePolicyDocument,
      :description,
      :maxSessionDuration,
      :permissionsBoundary,
      :tags
    ) = object;
    if (path != null) {
      result$
        ..add(const _i1.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('AssumeRolePolicyDocument'))
      ..add(serializers.serialize(
        assumeRolePolicyDocument,
        specifiedType: const FullType(String),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (maxSessionDuration != null) {
      result$
        ..add(const _i1.XmlElementName('MaxSessionDuration'))
        ..add(serializers.serialize(
          maxSessionDuration,
          specifiedType: const FullType.nullable(int),
        ));
    }
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
