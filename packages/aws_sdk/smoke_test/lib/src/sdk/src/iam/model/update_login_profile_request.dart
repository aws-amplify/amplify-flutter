// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_login_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_login_profile_request.g.dart';

abstract class UpdateLoginProfileRequest
    with
        _i1.HttpInput<UpdateLoginProfileRequest>,
        _i2.AWSEquatable<UpdateLoginProfileRequest>
    implements
        Built<UpdateLoginProfileRequest, UpdateLoginProfileRequestBuilder> {
  factory UpdateLoginProfileRequest({
    required String userName,
    String? password,
    bool? passwordResetRequired,
  }) {
    return _$UpdateLoginProfileRequest._(
      userName: userName,
      password: password,
      passwordResetRequired: passwordResetRequired,
    );
  }

  factory UpdateLoginProfileRequest.build(
          [void Function(UpdateLoginProfileRequestBuilder) updates]) =
      _$UpdateLoginProfileRequest;

  const UpdateLoginProfileRequest._();

  factory UpdateLoginProfileRequest.fromRequest(
    UpdateLoginProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateLoginProfileRequest>>
      serializers = [UpdateLoginProfileRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateLoginProfileRequestBuilder b) {}

  /// The name of the user whose password you want to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The new password for the specified IAM user.
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
  /// However, the format can be further restricted by the account administrator by setting a password policy on the Amazon Web Services account. For more information, see UpdateAccountPasswordPolicy.
  String? get password;

  /// Allows this new password to be used only once by requiring the specified IAM user to set a new password on next sign-in.
  bool? get passwordResetRequired;
  @override
  UpdateLoginProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        password,
        passwordResetRequired,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateLoginProfileRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'password',
        '***SENSITIVE***',
      )
      ..add(
        'passwordResetRequired',
        passwordResetRequired,
      );
    return helper.toString();
  }
}

class UpdateLoginProfileRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateLoginProfileRequest> {
  const UpdateLoginProfileRequestAwsQuerySerializer()
      : super('UpdateLoginProfileRequest');

  @override
  Iterable<Type> get types => const [
        UpdateLoginProfileRequest,
        _$UpdateLoginProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateLoginProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateLoginProfileRequestBuilder();
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
        case 'Password':
          result.password = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PasswordResetRequired':
          result.passwordResetRequired = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateLoginProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateLoginProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateLoginProfileRequest(
      :userName,
      :password,
      :passwordResetRequired
    ) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    if (password != null) {
      result$
        ..add(const _i1.XmlElementName('Password'))
        ..add(serializers.serialize(
          password,
          specifiedType: const FullType(String),
        ));
    }
    if (passwordResetRequired != null) {
      result$
        ..add(const _i1.XmlElementName('PasswordResetRequired'))
        ..add(serializers.serialize(
          passwordResetRequired,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
