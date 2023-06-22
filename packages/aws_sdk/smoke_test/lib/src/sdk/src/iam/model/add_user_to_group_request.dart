// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.add_user_to_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'add_user_to_group_request.g.dart';

abstract class AddUserToGroupRequest
    with
        _i1.HttpInput<AddUserToGroupRequest>,
        _i2.AWSEquatable<AddUserToGroupRequest>
    implements Built<AddUserToGroupRequest, AddUserToGroupRequestBuilder> {
  factory AddUserToGroupRequest({
    required String groupName,
    required String userName,
  }) {
    return _$AddUserToGroupRequest._(
      groupName: groupName,
      userName: userName,
    );
  }

  factory AddUserToGroupRequest.build(
          [void Function(AddUserToGroupRequestBuilder) updates]) =
      _$AddUserToGroupRequest;

  const AddUserToGroupRequest._();

  factory AddUserToGroupRequest.fromRequest(
    AddUserToGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AddUserToGroupRequest>> serializers = [
    AddUserToGroupRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AddUserToGroupRequestBuilder b) {}

  /// The name of the group to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get groupName;

  /// The name of the user to add.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;
  @override
  AddUserToGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        userName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AddUserToGroupRequest')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'userName',
        userName,
      );
    return helper.toString();
  }
}

class AddUserToGroupRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<AddUserToGroupRequest> {
  const AddUserToGroupRequestAwsQuerySerializer()
      : super('AddUserToGroupRequest');

  @override
  Iterable<Type> get types => const [
        AddUserToGroupRequest,
        _$AddUserToGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AddUserToGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddUserToGroupRequestBuilder();
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
        case 'UserName':
          result.userName = (serializers.deserialize(
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
    AddUserToGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AddUserToGroupRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final AddUserToGroupRequest(:groupName, :userName) = object;
    result$
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        groupName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
