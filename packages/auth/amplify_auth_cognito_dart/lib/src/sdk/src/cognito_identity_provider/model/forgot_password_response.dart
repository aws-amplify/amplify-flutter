// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.forgot_password_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'forgot_password_response.g.dart';

/// The response from Amazon Cognito to a request to reset a password.
abstract class ForgotPasswordResponse
    with _i1.AWSEquatable<ForgotPasswordResponse>
    implements Built<ForgotPasswordResponse, ForgotPasswordResponseBuilder> {
  /// The response from Amazon Cognito to a request to reset a password.
  factory ForgotPasswordResponse(
      {_i2.CodeDeliveryDetailsType? codeDeliveryDetails}) {
    return _$ForgotPasswordResponse._(codeDeliveryDetails: codeDeliveryDetails);
  }

  /// The response from Amazon Cognito to a request to reset a password.
  factory ForgotPasswordResponse.build(
          [void Function(ForgotPasswordResponseBuilder) updates]) =
      _$ForgotPasswordResponse;

  const ForgotPasswordResponse._();

  /// Constructs a [ForgotPasswordResponse] from a [payload] and [response].
  factory ForgotPasswordResponse.fromResponse(
    ForgotPasswordResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ForgotPasswordResponse>> serializers =
      [ForgotPasswordResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ForgotPasswordResponseBuilder b) {}

  /// The code delivery details returned by the server in response to the request to reset a password.
  _i2.CodeDeliveryDetailsType? get codeDeliveryDetails;
  @override
  List<Object?> get props => [codeDeliveryDetails];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ForgotPasswordResponse')
      ..add(
        'codeDeliveryDetails',
        codeDeliveryDetails,
      );
    return helper.toString();
  }
}

class ForgotPasswordResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ForgotPasswordResponse> {
  const ForgotPasswordResponseAwsJson11Serializer()
      : super('ForgotPasswordResponse');

  @override
  Iterable<Type> get types => const [
        ForgotPasswordResponse,
        _$ForgotPasswordResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ForgotPasswordResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForgotPasswordResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CodeDeliveryDetails':
          result.codeDeliveryDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CodeDeliveryDetailsType),
          ) as _i2.CodeDeliveryDetailsType));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ForgotPasswordResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ForgotPasswordResponse(:codeDeliveryDetails) = object;
    if (codeDeliveryDetails != null) {
      result$
        ..add('CodeDeliveryDetails')
        ..add(serializers.serialize(
          codeDeliveryDetails,
          specifiedType: const FullType(_i2.CodeDeliveryDetailsType),
        ));
    }
    return result$;
  }
}
