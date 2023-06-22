// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_user_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_user_request.g.dart';

abstract class UpdateUserRequest
    with _i1.HttpInput<UpdateUserRequest>, _i2.AWSEquatable<UpdateUserRequest>
    implements Built<UpdateUserRequest, UpdateUserRequestBuilder> {
  factory UpdateUserRequest({
    required String userName,
    String? newPath,
    String? newUserName,
  }) {
    return _$UpdateUserRequest._(
      userName: userName,
      newPath: newPath,
      newUserName: newUserName,
    );
  }

  factory UpdateUserRequest.build(
      [void Function(UpdateUserRequestBuilder) updates]) = _$UpdateUserRequest;

  const UpdateUserRequest._();

  factory UpdateUserRequest.fromRequest(
    UpdateUserRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateUserRequest>> serializers = [
    UpdateUserRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUserRequestBuilder b) {}

  /// Name of the user to update. If you're changing the name of the user, this is the original user name.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// New path for the IAM user. Include this parameter only if you're changing the user's path.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get newPath;

  /// New name for the user. Include this parameter only if you're changing the user's name.
  ///
  /// IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both "MyResource" and "myresource".
  String? get newUserName;
  @override
  UpdateUserRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        newPath,
        newUserName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUserRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'newPath',
        newPath,
      )
      ..add(
        'newUserName',
        newUserName,
      );
    return helper.toString();
  }
}

class UpdateUserRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateUserRequest> {
  const UpdateUserRequestAwsQuerySerializer() : super('UpdateUserRequest');

  @override
  Iterable<Type> get types => const [
        UpdateUserRequest,
        _$UpdateUserRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateUserRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateUserRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NewPath':
          result.newPath = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NewUserName':
          result.newUserName = (serializers.deserialize(
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
    UpdateUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateUserRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateUserRequest(:userName, :newPath, :newUserName) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
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
    if (newUserName != null) {
      result$
        ..add(const _i1.XmlElementName('NewUserName'))
        ..add(serializers.serialize(
          newUserName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
