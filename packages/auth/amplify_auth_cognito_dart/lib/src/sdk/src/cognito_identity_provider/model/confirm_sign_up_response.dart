// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_sign_up_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_sign_up_response.g.dart';

/// Represents the response from the server for the registration confirmation.
abstract class ConfirmSignUpResponse
    with _i1.AWSEquatable<ConfirmSignUpResponse>
    implements Built<ConfirmSignUpResponse, ConfirmSignUpResponseBuilder> {
  /// Represents the response from the server for the registration confirmation.
  factory ConfirmSignUpResponse({String? session}) {
    return _$ConfirmSignUpResponse._(session: session);
  }

  /// Represents the response from the server for the registration confirmation.
  factory ConfirmSignUpResponse.build([
    void Function(ConfirmSignUpResponseBuilder) updates,
  ]) = _$ConfirmSignUpResponse;

  const ConfirmSignUpResponse._();

  /// Constructs a [ConfirmSignUpResponse] from a [payload] and [response].
  factory ConfirmSignUpResponse.fromResponse(
    ConfirmSignUpResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i2.SmithySerializer<ConfirmSignUpResponse>> serializers = [
    ConfirmSignUpResponseAwsJson11Serializer(),
  ];

  /// A session identifier that you can use to immediately sign in the confirmed user. You can automatically sign users in with the one-time password that they provided in a successful `ConfirmSignUp` request.
  String? get session;
  @override
  List<Object?> get props => [session];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmSignUpResponse')
      ..add('session', '***SENSITIVE***');
    return helper.toString();
  }
}

class ConfirmSignUpResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfirmSignUpResponse> {
  const ConfirmSignUpResponseAwsJson11Serializer()
    : super('ConfirmSignUpResponse');

  @override
  Iterable<Type> get types => const [
    ConfirmSignUpResponse,
    _$ConfirmSignUpResponse,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  ConfirmSignUpResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmSignUpResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    ConfirmSignUpResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfirmSignUpResponse(:session) = object;
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
