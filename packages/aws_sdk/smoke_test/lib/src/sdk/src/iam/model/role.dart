// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.role; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/attached_permissions_boundary.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/role_last_used.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'role.g.dart';

/// Contains information about an IAM role. This structure is returned as a response element in several API operations that interact with roles.
abstract class Role
    with _i1.AWSEquatable<Role>
    implements Built<Role, RoleBuilder> {
  /// Contains information about an IAM role. This structure is returned as a response element in several API operations that interact with roles.
  factory Role({
    required String path,
    required String roleName,
    required String roleId,
    required String arn,
    required DateTime createDate,
    String? assumeRolePolicyDocument,
    String? description,
    int? maxSessionDuration,
    _i2.AttachedPermissionsBoundary? permissionsBoundary,
    List<_i3.Tag>? tags,
    _i4.RoleLastUsed? roleLastUsed,
  }) {
    return _$Role._(
      path: path,
      roleName: roleName,
      roleId: roleId,
      arn: arn,
      createDate: createDate,
      assumeRolePolicyDocument: assumeRolePolicyDocument,
      description: description,
      maxSessionDuration: maxSessionDuration,
      permissionsBoundary: permissionsBoundary,
      tags: tags == null ? null : _i5.BuiltList(tags),
      roleLastUsed: roleLastUsed,
    );
  }

  /// Contains information about an IAM role. This structure is returned as a response element in several API operations that interact with roles.
  factory Role.build([void Function(RoleBuilder) updates]) = _$Role;

  const Role._();

  static const List<_i6.SmithySerializer> serializers = [
    RoleAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RoleBuilder b) {}

  /// The path to the role. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get path;

  /// The friendly name that identifies the role.
  String get roleName;

  /// The stable and unique string identifying the role. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get roleId;

  /// The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and how to use them in policies, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_ guide.
  String get arn;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the role was created.
  DateTime get createDate;

  /// The policy that grants an entity permission to assume the role.
  String? get assumeRolePolicyDocument;

  /// A description of the role that you provide.
  String? get description;

  /// The maximum session duration (in seconds) for the specified role. Anyone who uses the CLI, or API to assume the role can specify the duration using the optional `DurationSeconds` API parameter or `duration-seconds` CLI parameter.
  int? get maxSessionDuration;

  /// The ARN of the policy used to set the permissions boundary for the role.
  ///
  /// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  _i2.AttachedPermissionsBoundary? get permissionsBoundary;

  /// A list of tags that are attached to the role. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i5.BuiltList<_i3.Tag>? get tags;

  /// Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period) in the _IAM User Guide_.
  _i4.RoleLastUsed? get roleLastUsed;
  @override
  List<Object?> get props => [
        path,
        roleName,
        roleId,
        arn,
        createDate,
        assumeRolePolicyDocument,
        description,
        maxSessionDuration,
        permissionsBoundary,
        tags,
        roleLastUsed,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Role');
    helper.add(
      'path',
      path,
    );
    helper.add(
      'roleName',
      roleName,
    );
    helper.add(
      'roleId',
      roleId,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'assumeRolePolicyDocument',
      assumeRolePolicyDocument,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'maxSessionDuration',
      maxSessionDuration,
    );
    helper.add(
      'permissionsBoundary',
      permissionsBoundary,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'roleLastUsed',
      roleLastUsed,
    );
    return helper.toString();
  }
}

class RoleAwsQuerySerializer extends _i6.StructuredSmithySerializer<Role> {
  const RoleAwsQuerySerializer() : super('Role');

  @override
  Iterable<Type> get types => const [
        Role,
        _$Role,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Role deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Path':
          result.path = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'RoleId':
          result.roleId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Arn':
          result.arn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'AssumeRolePolicyDocument':
          if (value != null) {
            result.assumeRolePolicyDocument = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxSessionDuration':
          if (value != null) {
            result.maxSessionDuration = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'PermissionsBoundary':
          if (value != null) {
            result.permissionsBoundary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttachedPermissionsBoundary),
            ) as _i2.AttachedPermissionsBoundary));
          }
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i5.BuiltList<_i3.Tag>));
          }
          break;
        case 'RoleLastUsed':
          if (value != null) {
            result.roleLastUsed.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.RoleLastUsed),
            ) as _i4.RoleLastUsed));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Role);
    final result = <Object?>[
      const _i6.XmlElementName(
        'RoleResponse',
        _i6.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i6.XmlElementName('Path'))
      ..add(serializers.serialize(
        payload.path,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i6.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        payload.roleName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i6.XmlElementName('RoleId'))
      ..add(serializers.serialize(
        payload.roleId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i6.XmlElementName('Arn'))
      ..add(serializers.serialize(
        payload.arn,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i6.XmlElementName('CreateDate'))
      ..add(serializers.serialize(
        payload.createDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    if (payload.assumeRolePolicyDocument != null) {
      result
        ..add(const _i6.XmlElementName('AssumeRolePolicyDocument'))
        ..add(serializers.serialize(
          payload.assumeRolePolicyDocument!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i6.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxSessionDuration != null) {
      result
        ..add(const _i6.XmlElementName('MaxSessionDuration'))
        ..add(serializers.serialize(
          payload.maxSessionDuration!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.permissionsBoundary != null) {
      result
        ..add(const _i6.XmlElementName('PermissionsBoundary'))
        ..add(serializers.serialize(
          payload.permissionsBoundary!,
          specifiedType: const FullType(_i2.AttachedPermissionsBoundary),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('Tags'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    if (payload.roleLastUsed != null) {
      result
        ..add(const _i6.XmlElementName('RoleLastUsed'))
        ..add(serializers.serialize(
          payload.roleLastUsed!,
          specifiedType: const FullType(_i4.RoleLastUsed),
        ));
    }
    return result;
  }
}
