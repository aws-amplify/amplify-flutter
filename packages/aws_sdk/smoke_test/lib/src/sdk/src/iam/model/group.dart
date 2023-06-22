// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'group.g.dart';

/// Contains information about an IAM group entity.
///
/// This data type is used as a response element in the following operations:
///
/// *   CreateGroup
///
/// *   GetGroup
///
/// *   ListGroups
abstract class Group
    with _i1.AWSEquatable<Group>
    implements Built<Group, GroupBuilder> {
  /// Contains information about an IAM group entity.
  ///
  /// This data type is used as a response element in the following operations:
  ///
  /// *   CreateGroup
  ///
  /// *   GetGroup
  ///
  /// *   ListGroups
  factory Group({
    required String path,
    required String groupName,
    required String groupId,
    required String arn,
    required DateTime createDate,
  }) {
    return _$Group._(
      path: path,
      groupName: groupName,
      groupId: groupId,
      arn: arn,
      createDate: createDate,
    );
  }

  /// Contains information about an IAM group entity.
  ///
  /// This data type is used as a response element in the following operations:
  ///
  /// *   CreateGroup
  ///
  /// *   GetGroup
  ///
  /// *   ListGroups
  factory Group.build([void Function(GroupBuilder) updates]) = _$Group;

  const Group._();

  static const List<_i2.SmithySerializer<Group>> serializers = [
    GroupAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GroupBuilder b) {}

  /// The path to the group. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get path;

  /// The friendly name that identifies the group.
  String get groupName;

  /// The stable and unique string identifying the group. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get groupId;

  /// The Amazon Resource Name (ARN) specifying the group. For more information about ARNs and how to use them in policies, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get arn;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the group was created.
  DateTime get createDate;
  @override
  List<Object?> get props => [
        path,
        groupName,
        groupId,
        arn,
        createDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Group')
      ..add(
        'path',
        path,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'createDate',
        createDate,
      );
    return helper.toString();
  }
}

class GroupAwsQuerySerializer extends _i2.StructuredSmithySerializer<Group> {
  const GroupAwsQuerySerializer() : super('Group');

  @override
  Iterable<Type> get types => const [
        Group,
        _$Group,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Group deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupBuilder();
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
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GroupId':
          result.groupId = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Group object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GroupResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final Group(:path, :groupName, :groupId, :arn, :createDate) = object;
    result$
      ..add(const _i2.XmlElementName('Path'))
      ..add(serializers.serialize(
        path,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        groupName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('GroupId'))
      ..add(serializers.serialize(
        groupId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Arn'))
      ..add(serializers.serialize(
        arn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('CreateDate'))
      ..add(serializers.serialize(
        createDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result$;
  }
}
