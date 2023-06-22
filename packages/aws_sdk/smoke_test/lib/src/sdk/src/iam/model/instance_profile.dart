// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.instance_profile; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/role.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'instance_profile.g.dart';

/// Contains information about an instance profile.
///
/// This data type is used as a response element in the following operations:
///
/// *   CreateInstanceProfile
///
/// *   GetInstanceProfile
///
/// *   ListInstanceProfiles
///
/// *   ListInstanceProfilesForRole
abstract class InstanceProfile
    with _i1.AWSEquatable<InstanceProfile>
    implements Built<InstanceProfile, InstanceProfileBuilder> {
  /// Contains information about an instance profile.
  ///
  /// This data type is used as a response element in the following operations:
  ///
  /// *   CreateInstanceProfile
  ///
  /// *   GetInstanceProfile
  ///
  /// *   ListInstanceProfiles
  ///
  /// *   ListInstanceProfilesForRole
  factory InstanceProfile({
    required String path,
    required String instanceProfileName,
    required String instanceProfileId,
    required String arn,
    required DateTime createDate,
    required List<_i2.Role> roles,
    List<_i3.Tag>? tags,
  }) {
    return _$InstanceProfile._(
      path: path,
      instanceProfileName: instanceProfileName,
      instanceProfileId: instanceProfileId,
      arn: arn,
      createDate: createDate,
      roles: _i4.BuiltList(roles),
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Contains information about an instance profile.
  ///
  /// This data type is used as a response element in the following operations:
  ///
  /// *   CreateInstanceProfile
  ///
  /// *   GetInstanceProfile
  ///
  /// *   ListInstanceProfiles
  ///
  /// *   ListInstanceProfilesForRole
  factory InstanceProfile.build(
      [void Function(InstanceProfileBuilder) updates]) = _$InstanceProfile;

  const InstanceProfile._();

  static const List<_i5.SmithySerializer<InstanceProfile>> serializers = [
    InstanceProfileAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceProfileBuilder b) {}

  /// The path to the instance profile. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get path;

  /// The name identifying the instance profile.
  String get instanceProfileName;

  /// The stable and unique string identifying the instance profile. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get instanceProfileId;

  /// The Amazon Resource Name (ARN) specifying the instance profile. For more information about ARNs and how to use them in policies, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get arn;

  /// The date when the instance profile was created.
  DateTime get createDate;

  /// The role associated with the instance profile.
  _i4.BuiltList<_i2.Role> get roles;

  /// A list of tags that are attached to the instance profile. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        path,
        instanceProfileName,
        instanceProfileId,
        arn,
        createDate,
        roles,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceProfile')
      ..add(
        'path',
        path,
      )
      ..add(
        'instanceProfileName',
        instanceProfileName,
      )
      ..add(
        'instanceProfileId',
        instanceProfileId,
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
        'roles',
        roles,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class InstanceProfileAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<InstanceProfile> {
  const InstanceProfileAwsQuerySerializer() : super('InstanceProfile');

  @override
  Iterable<Type> get types => const [
        InstanceProfile,
        _$InstanceProfile,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InstanceProfile deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceProfileBuilder();
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
        case 'InstanceProfileName':
          result.instanceProfileName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceProfileId':
          result.instanceProfileId = (serializers.deserialize(
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
        case 'Roles':
          result.roles.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.Role)],
            ),
          ) as _i4.BuiltList<_i2.Role>));
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
    InstanceProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'InstanceProfileResponse',
        _i5.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final InstanceProfile(
      :path,
      :instanceProfileName,
      :instanceProfileId,
      :arn,
      :createDate,
      :roles,
      :tags
    ) = object;
    result$
      ..add(const _i5.XmlElementName('Path'))
      ..add(serializers.serialize(
        path,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i5.XmlElementName('InstanceProfileName'))
      ..add(serializers.serialize(
        instanceProfileName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i5.XmlElementName('InstanceProfileId'))
      ..add(serializers.serialize(
        instanceProfileId,
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
    result$
      ..add(const _i5.XmlElementName('Roles'))
      ..add(
          const _i5.XmlBuiltListSerializer(indexer: _i5.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        roles,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i2.Role)],
        ),
      ));
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
