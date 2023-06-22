// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.user; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/attached_permissions_boundary.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'user.g.dart';

/// Contains information about an IAM user entity.
///
/// This data type is used as a response element in the following operations:
///
/// *   CreateUser
///
/// *   GetUser
///
/// *   ListUsers
abstract class User
    with _i1.AWSEquatable<User>
    implements Built<User, UserBuilder> {
  /// Contains information about an IAM user entity.
  ///
  /// This data type is used as a response element in the following operations:
  ///
  /// *   CreateUser
  ///
  /// *   GetUser
  ///
  /// *   ListUsers
  factory User({
    required String path,
    required String userName,
    required String userId,
    required String arn,
    required DateTime createDate,
    DateTime? passwordLastUsed,
    _i2.AttachedPermissionsBoundary? permissionsBoundary,
    List<_i3.Tag>? tags,
  }) {
    return _$User._(
      path: path,
      userName: userName,
      userId: userId,
      arn: arn,
      createDate: createDate,
      passwordLastUsed: passwordLastUsed,
      permissionsBoundary: permissionsBoundary,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Contains information about an IAM user entity.
  ///
  /// This data type is used as a response element in the following operations:
  ///
  /// *   CreateUser
  ///
  /// *   GetUser
  ///
  /// *   ListUsers
  factory User.build([void Function(UserBuilder) updates]) = _$User;

  const User._();

  static const List<_i5.SmithySerializer<User>> serializers = [
    UserAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserBuilder b) {}

  /// The path to the user. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// The ARN of the policy used to set the permissions boundary for the user.
  String get path;

  /// The friendly name identifying the user.
  String get userName;

  /// The stable and unique string identifying the user. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get userId;

  /// The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and how to use ARNs in policies, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get arn;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the user was created.
  DateTime get createDate;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the user's password was last used to sign in to an Amazon Web Services website. For a list of Amazon Web Services websites that capture a user's last sign-in time, see the [Credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) topic in the _IAM User Guide_. If a password is used more than once in a five-minute span, only the first use is returned in this field. If the field is null (no value), then it indicates that they never signed in with a password. This can be because:
  ///
  /// *   The user never had a password.
  ///
  /// *   A password exists but has not been used since IAM started tracking this information on October 20, 2014.
  ///
  ///
  /// A null value does not mean that the user _never_ had a password. Also, if the user does not currently have a password but had one in the past, then this field contains the date and time the most recent password was used.
  ///
  /// This value is returned only in the GetUser and ListUsers operations.
  DateTime? get passwordLastUsed;

  /// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  _i2.AttachedPermissionsBoundary? get permissionsBoundary;

  /// A list of tags that are associated with the user. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        path,
        userName,
        userId,
        arn,
        createDate,
        passwordLastUsed,
        permissionsBoundary,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('User')
      ..add(
        'path',
        path,
      )
      ..add(
        'userName',
        userName,
      )
      ..add(
        'userId',
        userId,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'createDate',
        createDate,
      )
      ..add(
        'passwordLastUsed',
        passwordLastUsed,
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

class UserAwsQuerySerializer extends _i5.StructuredSmithySerializer<User> {
  const UserAwsQuerySerializer() : super('User');

  @override
  Iterable<Type> get types => const [
        User,
        _$User,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  User deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
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
        case 'UserId':
          result.userId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'PasswordLastUsed':
          result.passwordLastUsed = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'PermissionsBoundary':
          result.permissionsBoundary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AttachedPermissionsBoundary),
          ) as _i2.AttachedPermissionsBoundary));
        case 'Tags':
          result.tags.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
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
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'UserResponse',
        _i5.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final User(
      :path,
      :userName,
      :userId,
      :arn,
      :createDate,
      :passwordLastUsed,
      :permissionsBoundary,
      :tags
    ) = object;
    result$
      ..add(const _i5.XmlElementName('Path'))
      ..add(serializers.serialize(
        path,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i5.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i5.XmlElementName('UserId'))
      ..add(serializers.serialize(
        userId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i5.XmlElementName('Arn'))
      ..add(serializers.serialize(
        arn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i5.XmlElementName('CreateDate'))
      ..add(serializers.serialize(
        createDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    if (passwordLastUsed != null) {
      result$
        ..add(const _i5.XmlElementName('PasswordLastUsed'))
        ..add(serializers.serialize(
          passwordLastUsed,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (permissionsBoundary != null) {
      result$
        ..add(const _i5.XmlElementName('PermissionsBoundary'))
        ..add(serializers.serialize(
          permissionsBoundary,
          specifiedType: const FullType(_i2.AttachedPermissionsBoundary),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i5.XmlElementName('Tags'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
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
