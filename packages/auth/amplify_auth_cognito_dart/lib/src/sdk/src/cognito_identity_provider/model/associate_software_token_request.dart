// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
        Built<AssociateSoftwareTokenRequest,
            AssociateSoftwareTokenRequestBuilder> {
  factory AssociateSoftwareTokenRequest({
    String? accessToken,
    String? session,
  }) {
    return _$AssociateSoftwareTokenRequest._(
      accessToken: accessToken,
      session: session,
    );
  }

  factory AssociateSoftwareTokenRequest.build(
          [void Function(AssociateSoftwareTokenRequestBuilder) updates]) =
      _$AssociateSoftwareTokenRequest;

  const AssociateSoftwareTokenRequest._();

  factory AssociateSoftwareTokenRequest.fromRequest(
    AssociateSoftwareTokenRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AssociateSoftwareTokenRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateSoftwareTokenRequestBuilder b) {}

  /// A valid access token that Amazon Cognito issued to the user whose software token you want to generate.
  String? get accessToken;

  /// The session that should be passed both ways in challenge-response calls to the service. This allows authentication of the user as part of the MFA setup process.
  String? get session;
  @override
  AssociateSoftwareTokenRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accessToken,
        session,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateSoftwareTokenRequest');
    helper.add(
      'accessToken',
      '***SENSITIVE***',
    );
    helper.add(
      'session',
      session,
    );
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
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
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
      switch (key) {
        case 'AccessToken':
          if (value != null) {
            result.accessToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Session':
          if (value != null) {
            result.session = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as AssociateSoftwareTokenRequest);
    final result = <Object?>[];
    if (payload.accessToken != null) {
      result
        ..add('AccessToken')
        ..add(serializers.serialize(
          payload.accessToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.session != null) {
      result
        ..add('Session')
        ..add(serializers.serialize(
          payload.session!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
