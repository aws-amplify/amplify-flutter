// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.resend_confirmation_code_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resend_confirmation_code_response.g.dart';

/// The response from the server when Amazon Cognito makes the request to resend a confirmation code.
abstract class ResendConfirmationCodeResponse
    with
        _i1.AWSEquatable<ResendConfirmationCodeResponse>
    implements
        Built<ResendConfirmationCodeResponse,
            ResendConfirmationCodeResponseBuilder> {
  /// The response from the server when Amazon Cognito makes the request to resend a confirmation code.
  factory ResendConfirmationCodeResponse(
      {CodeDeliveryDetailsType? codeDeliveryDetails}) {
    return _$ResendConfirmationCodeResponse._(
        codeDeliveryDetails: codeDeliveryDetails);
  }

  /// The response from the server when Amazon Cognito makes the request to resend a confirmation code.
  factory ResendConfirmationCodeResponse.build(
          [void Function(ResendConfirmationCodeResponseBuilder) updates]) =
      _$ResendConfirmationCodeResponse;

  const ResendConfirmationCodeResponse._();

  /// Constructs a [ResendConfirmationCodeResponse] from a [payload] and [response].
  factory ResendConfirmationCodeResponse.fromResponse(
    ResendConfirmationCodeResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ResendConfirmationCodeResponse>>
      serializers = [ResendConfirmationCodeResponseAwsJson11Serializer()];

  /// The code delivery details returned by the server in response to the request to resend the confirmation code.
  CodeDeliveryDetailsType? get codeDeliveryDetails;
  @override
  List<Object?> get props => [codeDeliveryDetails];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResendConfirmationCodeResponse')
      ..add(
        'codeDeliveryDetails',
        codeDeliveryDetails,
      );
    return helper.toString();
  }
}

class ResendConfirmationCodeResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ResendConfirmationCodeResponse> {
  const ResendConfirmationCodeResponseAwsJson11Serializer()
      : super('ResendConfirmationCodeResponse');

  @override
  Iterable<Type> get types => const [
        ResendConfirmationCodeResponse,
        _$ResendConfirmationCodeResponse,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  ResendConfirmationCodeResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResendConfirmationCodeResponseBuilder();
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
            specifiedType: const FullType(CodeDeliveryDetailsType),
          ) as CodeDeliveryDetailsType));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResendConfirmationCodeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResendConfirmationCodeResponse(:codeDeliveryDetails) = object;
    if (codeDeliveryDetails != null) {
      result$
        ..add('CodeDeliveryDetails')
        ..add(serializers.serialize(
          codeDeliveryDetails,
          specifiedType: const FullType(CodeDeliveryDetailsType),
        ));
    }
    return result$;
  }
}
