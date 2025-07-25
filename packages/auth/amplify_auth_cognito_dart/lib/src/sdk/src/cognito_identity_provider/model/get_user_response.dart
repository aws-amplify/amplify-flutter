// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_user_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/attribute_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/mfa_option_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'get_user_response.g.dart';

/// Represents the response from the server from the request to get information about the user.
abstract class GetUserResponse
    with _i1.AWSEquatable<GetUserResponse>
    implements Built<GetUserResponse, GetUserResponseBuilder> {
  /// Represents the response from the server from the request to get information about the user.
  factory GetUserResponse({
    required String username,
    required List<AttributeType> userAttributes,
    List<MfaOptionType>? mfaOptions,
    String? preferredMfaSetting,
    List<String>? userMfaSettingList,
  }) {
    return _$GetUserResponse._(
      username: username,
      userAttributes: _i2.BuiltList(userAttributes),
      mfaOptions: mfaOptions == null ? null : _i2.BuiltList(mfaOptions),
      preferredMfaSetting: preferredMfaSetting,
      userMfaSettingList: userMfaSettingList == null
          ? null
          : _i2.BuiltList(userMfaSettingList),
    );
  }

  /// Represents the response from the server from the request to get information about the user.
  factory GetUserResponse.build([
    void Function(GetUserResponseBuilder) updates,
  ]) = _$GetUserResponse;

  const GetUserResponse._();

  /// Constructs a [GetUserResponse] from a [payload] and [response].
  factory GetUserResponse.fromResponse(
    GetUserResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i3.SmithySerializer<GetUserResponse>> serializers = [
    GetUserResponseAwsJson11Serializer(),
  ];

  /// The name of the user that you requested.
  String get username;

  /// An array of name-value pairs representing user attributes.
  ///
  /// Custom attributes are prepended with the `custom:` prefix.
  _i2.BuiltList<AttributeType> get userAttributes;

  /// _This response parameter is no longer supported._ It provides information only about SMS MFA configurations. It doesn't provide information about time-based one-time password (TOTP) software token MFA configurations. To look up information about either type of MFA configuration, use UserMFASettingList instead.
  _i2.BuiltList<MfaOptionType>? get mfaOptions;

  /// The user's preferred MFA. Users can prefer SMS message, email message, or TOTP MFA.
  String? get preferredMfaSetting;

  /// The MFA options that are activated for the user. The possible values in this list are `SMS_MFA`, `EMAIL_OTP`, and `SOFTWARE\_TOKEN\_MFA`.
  _i2.BuiltList<String>? get userMfaSettingList;
  @override
  List<Object?> get props => [
    username,
    userAttributes,
    mfaOptions,
    preferredMfaSetting,
    userMfaSettingList,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserResponse')
      ..add('username', '***SENSITIVE***')
      ..add('userAttributes', userAttributes)
      ..add('mfaOptions', mfaOptions)
      ..add('preferredMfaSetting', preferredMfaSetting)
      ..add('userMfaSettingList', userMfaSettingList);
    return helper.toString();
  }
}

class GetUserResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<GetUserResponse> {
  const GetUserResponseAwsJson11Serializer() : super('GetUserResponse');

  @override
  Iterable<Type> get types => const [GetUserResponse, _$GetUserResponse];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  GetUserResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUserResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Username':
          result.username =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'UserAttributes':
          result.userAttributes.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltList, [
                    FullType(AttributeType),
                  ]),
                )
                as _i2.BuiltList<AttributeType>),
          );
        case 'MFAOptions':
          result.mfaOptions.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltList, [
                    FullType(MfaOptionType),
                  ]),
                )
                as _i2.BuiltList<MfaOptionType>),
          );
        case 'PreferredMfaSetting':
          result.preferredMfaSetting =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'UserMFASettingList':
          result.userMfaSettingList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltList, [
                    FullType(String),
                  ]),
                )
                as _i2.BuiltList<String>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetUserResponse(
      :username,
      :userAttributes,
      :mfaOptions,
      :preferredMfaSetting,
      :userMfaSettingList,
    ) = object;
    result$.addAll([
      'Username',
      serializers.serialize(username, specifiedType: const FullType(String)),
      'UserAttributes',
      serializers.serialize(
        userAttributes,
        specifiedType: const FullType(_i2.BuiltList, [FullType(AttributeType)]),
      ),
    ]);
    if (mfaOptions != null) {
      result$
        ..add('MFAOptions')
        ..add(
          serializers.serialize(
            mfaOptions,
            specifiedType: const FullType(_i2.BuiltList, [
              FullType(MfaOptionType),
            ]),
          ),
        );
    }
    if (preferredMfaSetting != null) {
      result$
        ..add('PreferredMfaSetting')
        ..add(
          serializers.serialize(
            preferredMfaSetting,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (userMfaSettingList != null) {
      result$
        ..add('UserMFASettingList')
        ..add(
          serializers.serialize(
            userMfaSettingList,
            specifiedType: const FullType(_i2.BuiltList, [FullType(String)]),
          ),
        );
    }
    return result$;
  }
}
