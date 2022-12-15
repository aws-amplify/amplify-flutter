// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_user_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/attribute_type.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/mfa_option_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'get_user_response.g.dart';

/// Represents the response from the server from the request to get information about the user.
abstract class GetUserResponse
    with _i1.AWSEquatable<GetUserResponse>
    implements Built<GetUserResponse, GetUserResponseBuilder> {
  /// Represents the response from the server from the request to get information about the user.
  factory GetUserResponse({
    List<_i2.MfaOptionType>? mfaOptions,
    String? preferredMfaSetting,
    required List<_i3.AttributeType> userAttributes,
    List<String>? userMfaSettingList,
    required String username,
  }) {
    return _$GetUserResponse._(
      mfaOptions: mfaOptions == null ? null : _i4.BuiltList(mfaOptions),
      preferredMfaSetting: preferredMfaSetting,
      userAttributes: _i4.BuiltList(userAttributes),
      userMfaSettingList:
          userMfaSettingList == null ? null : _i4.BuiltList(userMfaSettingList),
      username: username,
    );
  }

  /// Represents the response from the server from the request to get information about the user.
  factory GetUserResponse.build(
      [void Function(GetUserResponseBuilder) updates]) = _$GetUserResponse;

  const GetUserResponse._();

  /// Constructs a [GetUserResponse] from a [payload] and [response].
  factory GetUserResponse.fromResponse(
    GetUserResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    GetUserResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserResponseBuilder b) {}

  /// _This response parameter is no longer supported._ It provides information only about SMS MFA configurations. It doesn't provide information about time-based one-time password (TOTP) software token MFA configurations. To look up information about either type of MFA configuration, use UserMFASettingList instead.
  _i4.BuiltList<_i2.MfaOptionType>? get mfaOptions;

  /// The user's preferred MFA setting.
  String? get preferredMfaSetting;

  /// An array of name-value pairs representing user attributes.
  ///
  /// For custom attributes, you must prepend the `custom:` prefix to the attribute name.
  _i4.BuiltList<_i3.AttributeType> get userAttributes;

  /// The MFA options that are activated for the user. The possible values in this list are `SMS_MFA` and `SOFTWARE\_TOKEN\_MFA`.
  _i4.BuiltList<String>? get userMfaSettingList;

  /// The user name of the user you want to retrieve from the get user request.
  String get username;
  @override
  List<Object?> get props => [
        mfaOptions,
        preferredMfaSetting,
        userAttributes,
        userMfaSettingList,
        username,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserResponse');
    helper.add(
      'mfaOptions',
      mfaOptions,
    );
    helper.add(
      'preferredMfaSetting',
      preferredMfaSetting,
    );
    helper.add(
      'userAttributes',
      userAttributes,
    );
    helper.add(
      'userMfaSettingList',
      userMfaSettingList,
    );
    helper.add(
      'username',
      '***SENSITIVE***',
    );
    return helper.toString();
  }
}

class GetUserResponseAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<GetUserResponse> {
  const GetUserResponseAwsJson11Serializer() : super('GetUserResponse');

  @override
  Iterable<Type> get types => const [
        GetUserResponse,
        _$GetUserResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
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
      switch (key) {
        case 'MFAOptions':
          if (value != null) {
            result.mfaOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.MfaOptionType)],
              ),
            ) as _i4.BuiltList<_i2.MfaOptionType>));
          }
          break;
        case 'PreferredMfaSetting':
          if (value != null) {
            result.preferredMfaSetting = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UserAttributes':
          result.userAttributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.AttributeType)],
            ),
          ) as _i4.BuiltList<_i3.AttributeType>));
          break;
        case 'UserMFASettingList':
          if (value != null) {
            result.userMfaSettingList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'Username':
          result.username = (serializers.deserialize(
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
    final payload = (object as GetUserResponse);
    final result = <Object?>[
      'UserAttributes',
      serializers.serialize(
        payload.userAttributes,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.AttributeType)],
        ),
      ),
      'Username',
      serializers.serialize(
        payload.username,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.mfaOptions != null) {
      result
        ..add('MFAOptions')
        ..add(serializers.serialize(
          payload.mfaOptions!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.MfaOptionType)],
          ),
        ));
    }
    if (payload.preferredMfaSetting != null) {
      result
        ..add('PreferredMfaSetting')
        ..add(serializers.serialize(
          payload.preferredMfaSetting!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userMfaSettingList != null) {
      result
        ..add('UserMFASettingList')
        ..add(serializers.serialize(
          payload.userMfaSettingList!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
