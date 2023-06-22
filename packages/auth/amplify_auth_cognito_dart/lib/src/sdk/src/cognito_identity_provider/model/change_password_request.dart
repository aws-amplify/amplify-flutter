// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.change_password_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'change_password_request.g.dart';

/// Represents the request to change a user password.
abstract class ChangePasswordRequest
    with
        _i1.HttpInput<ChangePasswordRequest>,
        _i2.AWSEquatable<ChangePasswordRequest>
    implements Built<ChangePasswordRequest, ChangePasswordRequestBuilder> {
  /// Represents the request to change a user password.
  factory ChangePasswordRequest({
    required String previousPassword,
    required String proposedPassword,
    required String accessToken,
  }) {
    return _$ChangePasswordRequest._(
      previousPassword: previousPassword,
      proposedPassword: proposedPassword,
      accessToken: accessToken,
    );
  }

  /// Represents the request to change a user password.
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
    ChangePasswordRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChangePasswordRequestBuilder b) {}

  /// The old password.
  String get previousPassword;

  /// The new password.
  String get proposedPassword;

  /// A valid access token that Amazon Cognito issued to the user whose password you want to change.
  String get accessToken;
  @override
  ChangePasswordRequest getPayload() => this;
  @override
  List<Object?> get props => [
        previousPassword,
        proposedPassword,
        accessToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChangePasswordRequest')
      ..add(
        'previousPassword',
        '***SENSITIVE***',
      )
      ..add(
        'proposedPassword',
        '***SENSITIVE***',
      )
      ..add(
        'accessToken',
        '***SENSITIVE***',
      );
    return helper.toString();
  }
}

class ChangePasswordRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ChangePasswordRequest> {
  const ChangePasswordRequestAwsJson11Serializer()
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
          shape: 'awsJson1_1',
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
        case 'PreviousPassword':
          result.previousPassword = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProposedPassword':
          result.proposedPassword = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
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
    final result$ = <Object?>[];
    final ChangePasswordRequest(
      :previousPassword,
      :proposedPassword,
      :accessToken
    ) = object;
    result$.addAll([
      'PreviousPassword',
      serializers.serialize(
        previousPassword,
        specifiedType: const FullType(String),
      ),
      'ProposedPassword',
      serializers.serialize(
        proposedPassword,
        specifiedType: const FullType(String),
      ),
      'AccessToken',
      serializers.serialize(
        accessToken,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
