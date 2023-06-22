// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_login_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_login_profile_request.g.dart';

abstract class CreateLoginProfileRequest
    with
        _i1.HttpInput<CreateLoginProfileRequest>,
        _i2.AWSEquatable<CreateLoginProfileRequest>
    implements
        Built<CreateLoginProfileRequest, CreateLoginProfileRequestBuilder> {
  factory CreateLoginProfileRequest({
    required String userName,
    required String password,
    bool? passwordResetRequired,
  }) {
    passwordResetRequired ??= false;
    return _$CreateLoginProfileRequest._(
      userName: userName,
      password: password,
      passwordResetRequired: passwordResetRequired,
    );
  }

  factory CreateLoginProfileRequest.build(
          [void Function(CreateLoginProfileRequestBuilder) updates]) =
      _$CreateLoginProfileRequest;

  const CreateLoginProfileRequest._();

  factory CreateLoginProfileRequest.fromRequest(
    CreateLoginProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateLoginProfileRequest>>
      serializers = [CreateLoginProfileRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLoginProfileRequestBuilder b) {
    b.passwordResetRequired = false;
  }

  /// The name of the IAM user to create a password for. The user must already exist.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The new password for the user.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (`\\u0020`) through the end of the ASCII character range (`\\u00FF`). You can also include the tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`) characters. Any of these characters are valid in a password. However, many tools, such as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.
  String get password;

  /// Specifies whether the user is required to set a new password on next sign-in.
  bool get passwordResetRequired;
  @override
  CreateLoginProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        password,
        passwordResetRequired,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateLoginProfileRequest')
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

class CreateLoginProfileRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateLoginProfileRequest> {
  const CreateLoginProfileRequestAwsQuerySerializer()
      : super('CreateLoginProfileRequest');

  @override
  Iterable<Type> get types => const [
        CreateLoginProfileRequest,
        _$CreateLoginProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateLoginProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLoginProfileRequestBuilder();
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
    CreateLoginProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateLoginProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateLoginProfileRequest(
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
    result$
      ..add(const _i1.XmlElementName('Password'))
      ..add(serializers.serialize(
        password,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PasswordResetRequired'))
      ..add(serializers.serialize(
        passwordResetRequired,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
