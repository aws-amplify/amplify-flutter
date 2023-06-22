// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.change_password_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'change_password_request.g.dart';

abstract class ChangePasswordRequest
    with
        _i1.HttpInput<ChangePasswordRequest>,
        _i2.AWSEquatable<ChangePasswordRequest>
    implements Built<ChangePasswordRequest, ChangePasswordRequestBuilder> {
  factory ChangePasswordRequest({
    required String oldPassword,
    required String newPassword,
  }) {
    return _$ChangePasswordRequest._(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }

  factory ChangePasswordRequest.build(
          [void Function(ChangePasswordRequestBuilder) updates]) =
      _$ChangePasswordRequest;

  const ChangePasswordRequest._();

  factory ChangePasswordRequest.fromRequest(
    ChangePasswordRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ChangePasswordRequest>> serializers = [
    ChangePasswordRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChangePasswordRequestBuilder b) {}

  /// The IAM user's current password.
  String get oldPassword;

  /// The new password. The new password must conform to the Amazon Web Services account's password policy, if one exists.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (`\\u0020`) through the end of the ASCII character range (`\\u00FF`). You can also include the tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`) characters. Any of these characters are valid in a password. However, many tools, such as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.
  String get newPassword;
  @override
  ChangePasswordRequest getPayload() => this;
  @override
  List<Object?> get props => [
        oldPassword,
        newPassword,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChangePasswordRequest')
      ..add(
        'oldPassword',
        '***SENSITIVE***',
      )
      ..add(
        'newPassword',
        '***SENSITIVE***',
      );
    return helper.toString();
  }
}

class ChangePasswordRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ChangePasswordRequest> {
  const ChangePasswordRequestAwsQuerySerializer()
      : super('ChangePasswordRequest');

  @override
  Iterable<Type> get types => const [
        ChangePasswordRequest,
        _$ChangePasswordRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ChangePasswordRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangePasswordRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OldPassword':
          result.oldPassword = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NewPassword':
          result.newPassword = (serializers.deserialize(
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
    ChangePasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ChangePasswordRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ChangePasswordRequest(:oldPassword, :newPassword) = object;
    result$
      ..add(const _i1.XmlElementName('OldPassword'))
      ..add(serializers.serialize(
        oldPassword,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('NewPassword'))
      ..add(serializers.serialize(
        newPassword,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
