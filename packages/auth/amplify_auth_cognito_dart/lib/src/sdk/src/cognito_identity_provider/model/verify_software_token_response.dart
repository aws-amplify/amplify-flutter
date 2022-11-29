// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.verify_software_token_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_response_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'verify_software_token_response.g.dart';

abstract class VerifySoftwareTokenResponse
    with _i1.AWSEquatable<VerifySoftwareTokenResponse>
    implements
        Built<VerifySoftwareTokenResponse, VerifySoftwareTokenResponseBuilder> {
  factory VerifySoftwareTokenResponse({
    String? session,
    _i2.VerifySoftwareTokenResponseType? status,
  }) {
    return _$VerifySoftwareTokenResponse._(
      session: session,
      status: status,
    );
  }

  factory VerifySoftwareTokenResponse.build(
          [void Function(VerifySoftwareTokenResponseBuilder) updates]) =
      _$VerifySoftwareTokenResponse;

  const VerifySoftwareTokenResponse._();

  /// Constructs a [VerifySoftwareTokenResponse] from a [payload] and [response].
  factory VerifySoftwareTokenResponse.fromResponse(
    VerifySoftwareTokenResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    VerifySoftwareTokenResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifySoftwareTokenResponseBuilder b) {}

  /// The session that should be passed both ways in challenge-response calls to the service.
  String? get session;

  /// The status of the verify software token.
  _i2.VerifySoftwareTokenResponseType? get status;
  @override
  List<Object?> get props => [
        session,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifySoftwareTokenResponse');
    helper.add(
      'session',
      session,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class VerifySoftwareTokenResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<VerifySoftwareTokenResponse> {
  const VerifySoftwareTokenResponseAwsJson11Serializer()
      : super('VerifySoftwareTokenResponse');

  @override
  Iterable<Type> get types => const [
        VerifySoftwareTokenResponse,
        _$VerifySoftwareTokenResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  VerifySoftwareTokenResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifySoftwareTokenResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Session':
          if (value != null) {
            result.session = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.VerifySoftwareTokenResponseType),
            ) as _i2.VerifySoftwareTokenResponseType);
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
    final payload = (object as VerifySoftwareTokenResponse);
    final result = <Object?>[];
    if (payload.session != null) {
      result
        ..add('Session')
        ..add(serializers.serialize(
          payload.session!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add('Status')
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.VerifySoftwareTokenResponseType),
        ));
    }
    return result;
  }
}
