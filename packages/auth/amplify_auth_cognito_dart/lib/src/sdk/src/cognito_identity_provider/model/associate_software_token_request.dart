// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.associate_software_token_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_software_token_request.g.dart';

abstract class AssociateSoftwareTokenRequest
    with
        _i1.HttpInput<AssociateSoftwareTokenRequest>,
        _i2.AWSEquatable<AssociateSoftwareTokenRequest>
    implements
        Built<
          AssociateSoftwareTokenRequest,
          AssociateSoftwareTokenRequestBuilder
        > {
  factory AssociateSoftwareTokenRequest({
    String? accessToken,
    String? session,
  }) {
    return _$AssociateSoftwareTokenRequest._(
      accessToken: accessToken,
      session: session,
    );
  }

  factory AssociateSoftwareTokenRequest.build([
    void Function(AssociateSoftwareTokenRequestBuilder) updates,
  ]) = _$AssociateSoftwareTokenRequest;

  const AssociateSoftwareTokenRequest._();

  factory AssociateSoftwareTokenRequest.fromRequest(
    AssociateSoftwareTokenRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<AssociateSoftwareTokenRequest>>
  serializers = [AssociateSoftwareTokenRequestAwsJson11Serializer()];

  /// A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for `aws.cognito.signin.user.admin`.
  ///
  /// You can provide either an access token or a session ID in the request.
  String? get accessToken;

  /// The session identifier that maintains the state of authentication requests and challenge responses. In `AssociateSoftwareToken`, this is the session ID from a successful sign-in. You can provide either an access token or a session ID in the request.
  String? get session;
  @override
  AssociateSoftwareTokenRequest getPayload() => this;

  @override
  List<Object?> get props => [accessToken, session];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateSoftwareTokenRequest')
      ..add('accessToken', '***SENSITIVE***')
      ..add('session', '***SENSITIVE***');
    return helper.toString();
  }
}

class AssociateSoftwareTokenRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<AssociateSoftwareTokenRequest> {
  const AssociateSoftwareTokenRequestAwsJson11Serializer()
    : super('AssociateSoftwareTokenRequest');

  @override
  Iterable<Type> get types => const [
    AssociateSoftwareTokenRequest,
    _$AssociateSoftwareTokenRequest,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  AssociateSoftwareTokenRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateSoftwareTokenRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessToken':
          result.accessToken =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Session':
          result.session =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssociateSoftwareTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AssociateSoftwareTokenRequest(:accessToken, :session) = object;
    if (accessToken != null) {
      result$
        ..add('AccessToken')
        ..add(
          serializers.serialize(
            accessToken,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (session != null) {
      result$
        ..add('Session')
        ..add(
          serializers.serialize(session, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
