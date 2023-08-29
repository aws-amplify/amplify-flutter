// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.group_identifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'group_identifier.g.dart';

/// Describes a security group.
abstract class GroupIdentifier
    with _i1.AWSEquatable<GroupIdentifier>
    implements Built<GroupIdentifier, GroupIdentifierBuilder> {
  /// Describes a security group.
  factory GroupIdentifier({
    String? groupName,
    String? groupId,
  }) {
    return _$GroupIdentifier._(
      groupName: groupName,
      groupId: groupId,
    );
  }

  /// Describes a security group.
  factory GroupIdentifier.build(
      [void Function(GroupIdentifierBuilder) updates]) = _$GroupIdentifier;

  const GroupIdentifier._();

  static const List<_i2.SmithySerializer<GroupIdentifier>> serializers = [
    GroupIdentifierEc2QuerySerializer()
  ];

  /// The name of the security group.
  String? get groupName;

  /// The ID of the security group.
  String? get groupId;
  @override
  List<Object?> get props => [
        groupName,
        groupId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GroupIdentifier')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'groupId',
        groupId,
      );
    return helper.toString();
  }
}

class GroupIdentifierEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GroupIdentifier> {
  const GroupIdentifierEc2QuerySerializer() : super('GroupIdentifier');

  @override
  Iterable<Type> get types => const [
        GroupIdentifier,
        _$GroupIdentifier,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GroupIdentifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupIdentifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GroupIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GroupIdentifierResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GroupIdentifier(:groupName, :groupId) = object;
    if (groupName != null) {
      result$
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (groupId != null) {
      result$
        ..add(const _i2.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
