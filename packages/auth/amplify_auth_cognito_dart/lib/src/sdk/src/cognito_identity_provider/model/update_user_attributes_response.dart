// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.update_user_attributes_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_details_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'update_user_attributes_response.g.dart';

/// Represents the response from the server for the request to update user attributes.
abstract class UpdateUserAttributesResponse
    with _i1.AWSEquatable<UpdateUserAttributesResponse>
    implements
        Built<
          UpdateUserAttributesResponse,
          UpdateUserAttributesResponseBuilder
        > {
  /// Represents the response from the server for the request to update user attributes.
  factory UpdateUserAttributesResponse({
    List<CodeDeliveryDetailsType>? codeDeliveryDetailsList,
  }) {
    return _$UpdateUserAttributesResponse._(
      codeDeliveryDetailsList: codeDeliveryDetailsList == null
          ? null
          : _i2.BuiltList(codeDeliveryDetailsList),
    );
  }

  /// Represents the response from the server for the request to update user attributes.
  factory UpdateUserAttributesResponse.build([
    void Function(UpdateUserAttributesResponseBuilder) updates,
  ]) = _$UpdateUserAttributesResponse;

  const UpdateUserAttributesResponse._();

  /// Constructs a [UpdateUserAttributesResponse] from a [payload] and [response].
  factory UpdateUserAttributesResponse.fromResponse(
    UpdateUserAttributesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i3.SmithySerializer<UpdateUserAttributesResponse>>
  serializers = [UpdateUserAttributesResponseAwsJson11Serializer()];

  /// When the attribute-update request includes an email address or phone number attribute, Amazon Cognito sends a message to users with a code that confirms ownership of the new value that they entered. The `CodeDeliveryDetails` object is information about the delivery destination for that link or code. This behavior happens in user pools configured to automatically verify changes to those attributes. For more information, see [Verifying when users change their email or phone number](https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#verifying-when-users-change-their-email-or-phone-number).
  _i2.BuiltList<CodeDeliveryDetailsType>? get codeDeliveryDetailsList;
  @override
  List<Object?> get props => [codeDeliveryDetailsList];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUserAttributesResponse')
      ..add('codeDeliveryDetailsList', codeDeliveryDetailsList);
    return helper.toString();
  }
}

class UpdateUserAttributesResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<UpdateUserAttributesResponse> {
  const UpdateUserAttributesResponseAwsJson11Serializer()
    : super('UpdateUserAttributesResponse');

  @override
  Iterable<Type> get types => const [
    UpdateUserAttributesResponse,
    _$UpdateUserAttributesResponse,
  ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  UpdateUserAttributesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateUserAttributesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CodeDeliveryDetailsList':
          result.codeDeliveryDetailsList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltList, [
                    FullType(CodeDeliveryDetailsType),
                  ]),
                )
                as _i2.BuiltList<CodeDeliveryDetailsType>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateUserAttributesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateUserAttributesResponse(:codeDeliveryDetailsList) = object;
    if (codeDeliveryDetailsList != null) {
      result$
        ..add('CodeDeliveryDetailsList')
        ..add(
          serializers.serialize(
            codeDeliveryDetailsList,
            specifiedType: const FullType(_i2.BuiltList, [
              FullType(CodeDeliveryDetailsType),
            ]),
          ),
        );
    }
    return result$;
  }
}
