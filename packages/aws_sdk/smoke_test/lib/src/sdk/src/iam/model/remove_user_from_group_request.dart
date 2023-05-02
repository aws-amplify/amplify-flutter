// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.remove_user_from_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'remove_user_from_group_request.g.dart';

abstract class RemoveUserFromGroupRequest
    with
        _i1.HttpInput<RemoveUserFromGroupRequest>,
        _i2.AWSEquatable<RemoveUserFromGroupRequest>
    implements
        Built<RemoveUserFromGroupRequest, RemoveUserFromGroupRequestBuilder> {
  factory RemoveUserFromGroupRequest({
    required String groupName,
    required String userName,
  }) {
    return _$RemoveUserFromGroupRequest._(
      groupName: groupName,
      userName: userName,
    );
  }

  factory RemoveUserFromGroupRequest.build(
          [void Function(RemoveUserFromGroupRequestBuilder) updates]) =
      _$RemoveUserFromGroupRequest;

  const RemoveUserFromGroupRequest._();

  factory RemoveUserFromGroupRequest.fromRequest(
    RemoveUserFromGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RemoveUserFromGroupRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemoveUserFromGroupRequestBuilder b) {}

  /// The name of the group to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get groupName;

  /// The name of the user to remove.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;
  @override
  RemoveUserFromGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        userName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemoveUserFromGroupRequest');
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'userName',
      userName,
    );
    return helper.toString();
  }
}

class RemoveUserFromGroupRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<RemoveUserFromGroupRequest> {
  const RemoveUserFromGroupRequestAwsQuerySerializer()
      : super('RemoveUserFromGroupRequest');

  @override
  Iterable<Type> get types => const [
        RemoveUserFromGroupRequest,
        _$RemoveUserFromGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RemoveUserFromGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoveUserFromGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'UserName':
          result.userName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as RemoveUserFromGroupRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RemoveUserFromGroupRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        payload.groupName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        payload.userName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
