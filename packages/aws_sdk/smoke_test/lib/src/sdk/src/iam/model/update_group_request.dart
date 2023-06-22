// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_group_request.g.dart';

abstract class UpdateGroupRequest
    with _i1.HttpInput<UpdateGroupRequest>, _i2.AWSEquatable<UpdateGroupRequest>
    implements Built<UpdateGroupRequest, UpdateGroupRequestBuilder> {
  factory UpdateGroupRequest({
    required String groupName,
    String? newPath,
    String? newGroupName,
  }) {
    return _$UpdateGroupRequest._(
      groupName: groupName,
      newPath: newPath,
      newGroupName: newGroupName,
    );
  }

  factory UpdateGroupRequest.build(
          [void Function(UpdateGroupRequestBuilder) updates]) =
      _$UpdateGroupRequest;

  const UpdateGroupRequest._();

  factory UpdateGroupRequest.fromRequest(
    UpdateGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateGroupRequest>> serializers = [
    UpdateGroupRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateGroupRequestBuilder b) {}

  /// Name of the IAM group to update. If you're changing the name of the group, this is the original name.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get groupName;

  /// New path for the IAM group. Only include this if changing the group's path.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get newPath;

  /// New name for the IAM group. Only include this if changing the group's name.
  ///
  /// IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
  String? get newGroupName;
  @override
  UpdateGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        newPath,
        newGroupName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateGroupRequest')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'newPath',
        newPath,
      )
      ..add(
        'newGroupName',
        newGroupName,
      );
    return helper.toString();
  }
}

class UpdateGroupRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateGroupRequest> {
  const UpdateGroupRequestAwsQuerySerializer() : super('UpdateGroupRequest');

  @override
  Iterable<Type> get types => const [
        UpdateGroupRequest,
        _$UpdateGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NewPath':
          result.newPath = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NewGroupName':
          result.newGroupName = (serializers.deserialize(
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
    UpdateGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateGroupRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateGroupRequest(:groupName, :newPath, :newGroupName) = object;
    result$
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        groupName,
        specifiedType: const FullType(String),
      ));
    if (newPath != null) {
      result$
        ..add(const _i1.XmlElementName('NewPath'))
        ..add(serializers.serialize(
          newPath,
          specifiedType: const FullType(String),
        ));
    }
    if (newGroupName != null) {
      result$
        ..add(const _i1.XmlElementName('NewGroupName'))
        ..add(serializers.serialize(
          newGroupName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
