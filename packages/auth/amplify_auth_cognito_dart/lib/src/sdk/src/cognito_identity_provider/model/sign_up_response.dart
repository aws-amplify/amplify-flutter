// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.sign_up_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'sign_up_response.g.dart';

/// The response from the server for a registration request.
abstract class SignUpResponse
    with _i1.AWSEquatable<SignUpResponse>
    implements Built<SignUpResponse, SignUpResponseBuilder> {
  /// The response from the server for a registration request.
  factory SignUpResponse({
    _i2.CodeDeliveryDetailsType? codeDeliveryDetails,
    bool? userConfirmed,
    required String userSub,
  }) {
    userConfirmed ??= false;
    return _$SignUpResponse._(
      codeDeliveryDetails: codeDeliveryDetails,
      userConfirmed: userConfirmed,
      userSub: userSub,
    );
  }

  /// The response from the server for a registration request.
  factory SignUpResponse.build([void Function(SignUpResponseBuilder) updates]) =
      _$SignUpResponse;

  const SignUpResponse._();

  /// Constructs a [SignUpResponse] from a [payload] and [response].
  factory SignUpResponse.fromResponse(
    SignUpResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    SignUpResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SignUpResponseBuilder b) {
    b.userConfirmed = false;
  }

  /// The code delivery details returned by the server response to the user registration request.
  _i2.CodeDeliveryDetailsType? get codeDeliveryDetails;

  /// A response from the server indicating that a user registration has been confirmed.
  bool get userConfirmed;

  /// The UUID of the authenticated user. This isn't the same as `username`.
  String get userSub;
  @override
  List<Object?> get props => [
        codeDeliveryDetails,
        userConfirmed,
        userSub,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SignUpResponse');
    helper.add(
      'codeDeliveryDetails',
      codeDeliveryDetails,
    );
    helper.add(
      'userConfirmed',
      userConfirmed,
    );
    helper.add(
      'userSub',
      userSub,
    );
    return helper.toString();
  }
}

class SignUpResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<SignUpResponse> {
  const SignUpResponseAwsJson11Serializer() : super('SignUpResponse');

  @override
  Iterable<Type> get types => const [
        SignUpResponse,
        _$SignUpResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SignUpResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignUpResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CodeDeliveryDetails':
          if (value != null) {
            result.codeDeliveryDetails.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CodeDeliveryDetailsType),
            ) as _i2.CodeDeliveryDetailsType));
          }
          break;
        case 'UserConfirmed':
          result.userConfirmed = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'UserSub':
          result.userSub = (serializers.deserialize(
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
    final payload = (object as SignUpResponse);
    final result = <Object?>[
      'UserConfirmed',
      serializers.serialize(
        payload.userConfirmed,
        specifiedType: const FullType(bool),
      ),
      'UserSub',
      serializers.serialize(
        payload.userSub,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.codeDeliveryDetails != null) {
      result
        ..add('CodeDeliveryDetails')
        ..add(serializers.serialize(
          payload.codeDeliveryDetails!,
          specifiedType: const FullType(_i2.CodeDeliveryDetailsType),
        ));
    }
    return result;
  }
}
