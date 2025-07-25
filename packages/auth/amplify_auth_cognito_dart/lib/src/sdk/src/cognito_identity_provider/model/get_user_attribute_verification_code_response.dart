// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_user_attribute_verification_code_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_user_attribute_verification_code_response.g.dart';

/// The verification code response returned by the server response to get the user attribute verification code.
abstract class GetUserAttributeVerificationCodeResponse
    with _i1.AWSEquatable<GetUserAttributeVerificationCodeResponse>
    implements
        Built<
          GetUserAttributeVerificationCodeResponse,
          GetUserAttributeVerificationCodeResponseBuilder
        > {
  /// The verification code response returned by the server response to get the user attribute verification code.
  factory GetUserAttributeVerificationCodeResponse({
    CodeDeliveryDetailsType? codeDeliveryDetails,
  }) {
    return _$GetUserAttributeVerificationCodeResponse._(
      codeDeliveryDetails: codeDeliveryDetails,
    );
  }

  /// The verification code response returned by the server response to get the user attribute verification code.
  factory GetUserAttributeVerificationCodeResponse.build([
    void Function(GetUserAttributeVerificationCodeResponseBuilder) updates,
  ]) = _$GetUserAttributeVerificationCodeResponse;

  const GetUserAttributeVerificationCodeResponse._();

  /// Constructs a [GetUserAttributeVerificationCodeResponse] from a [payload] and [response].
  factory GetUserAttributeVerificationCodeResponse.fromResponse(
    GetUserAttributeVerificationCodeResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<
    _i2.SmithySerializer<GetUserAttributeVerificationCodeResponse>
  >
  serializers = [GetUserAttributeVerificationCodeResponseAwsJson11Serializer()];

  /// Information about the delivery destination of the user attribute verification code.
  CodeDeliveryDetailsType? get codeDeliveryDetails;
  @override
  List<Object?> get props => [codeDeliveryDetails];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
      'GetUserAttributeVerificationCodeResponse',
    )..add('codeDeliveryDetails', codeDeliveryDetails);
    return helper.toString();
  }
}

class GetUserAttributeVerificationCodeResponseAwsJson11Serializer
    extends
        _i2.StructuredSmithySerializer<
          GetUserAttributeVerificationCodeResponse
        > {
  const GetUserAttributeVerificationCodeResponseAwsJson11Serializer()
    : super('GetUserAttributeVerificationCodeResponse');

  @override
  Iterable<Type> get types => const [
    GetUserAttributeVerificationCodeResponse,
    _$GetUserAttributeVerificationCodeResponse,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  GetUserAttributeVerificationCodeResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUserAttributeVerificationCodeResponseBuilder();
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
          result.codeDeliveryDetails.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(CodeDeliveryDetailsType),
                )
                as CodeDeliveryDetailsType),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetUserAttributeVerificationCodeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetUserAttributeVerificationCodeResponse(:codeDeliveryDetails) =
        object;
    if (codeDeliveryDetails != null) {
      result$
        ..add('CodeDeliveryDetails')
        ..add(
          serializers.serialize(
            codeDeliveryDetails,
            specifiedType: const FullType(CodeDeliveryDetailsType),
          ),
        );
    }
    return result$;
  }
}
