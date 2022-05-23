// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.get_user_response;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/attribute_type.dart'
    as _i4;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/mfa_option_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'get_user_response.g.dart';

/// Represents the response from the server from the request to get information about the user.
abstract class GetUserResponse
    with _i1.AWSEquatable<GetUserResponse>
    implements Built<GetUserResponse, GetUserResponseBuilder> {
  /// Represents the response from the server from the request to get information about the user.
  factory GetUserResponse(
      {_i2.BuiltList<_i3.MfaOptionType>? mfaOptions,
      String? preferredMfaSetting,
      required _i2.BuiltList<_i4.AttributeType> userAttributes,
      _i2.BuiltList<String>? userMfaSettingList,
      required String username}) {
    return _$GetUserResponse._(
        mfaOptions: mfaOptions,
        preferredMfaSetting: preferredMfaSetting,
        userAttributes: userAttributes,
        userMfaSettingList: userMfaSettingList,
        username: username);
  }

  /// Represents the response from the server from the request to get information about the user.
  factory GetUserResponse.build(
      [void Function(GetUserResponseBuilder) updates]) = _$GetUserResponse;

  const GetUserResponse._();

  /// Constructs a [GetUserResponse] from a [payload] and [response].
  factory GetUserResponse.fromResponse(
          GetUserResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    _GetUserResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserResponseBuilder b) {}

  /// _This response parameter is no longer supported._ It provides information only about SMS MFA configurations. It doesn't provide information about TOTP software token MFA configurations. To look up information about either type of MFA configuration, use UserMFASettingList instead.
  _i2.BuiltList<_i3.MfaOptionType>? get mfaOptions;

  /// The user's preferred MFA setting.
  String? get preferredMfaSetting;

  /// An array of name-value pairs representing user attributes.
  ///
  /// For custom attributes, you must prepend the `custom:` prefix to the attribute name.
  _i2.BuiltList<_i4.AttributeType> get userAttributes;

  /// The MFA options that are enabled for the user. The possible values in this list are `SMS_MFA` and `SOFTWARE\_TOKEN\_MFA`.
  _i2.BuiltList<String>? get userMfaSettingList;

  /// The user name of the user you wish to retrieve from the get user request.
  String get username;
  @override
  List<Object?> get props => [
        mfaOptions,
        preferredMfaSetting,
        userAttributes,
        userMfaSettingList,
        username
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserResponse');
    helper.add('mfaOptions', mfaOptions);
    helper.add('preferredMfaSetting', preferredMfaSetting);
    helper.add('userAttributes', userAttributes);
    helper.add('userMfaSettingList', userMfaSettingList);
    helper.add('username', '***SENSITIVE***');
    return helper.toString();
  }
}

class _GetUserResponseAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<GetUserResponse> {
  const _GetUserResponseAwsJson11Serializer() : super('GetUserResponse');

  @override
  Iterable<Type> get types => const [GetUserResponse, _$GetUserResponse];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  GetUserResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetUserResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'MFAOptions':
          if (value != null) {
            result.mfaOptions.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i3.MfaOptionType)]))
                as _i2.BuiltList<_i3.MfaOptionType>));
          }
          break;
        case 'PreferredMfaSetting':
          if (value != null) {
            result.preferredMfaSetting = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'UserAttributes':
          result.userAttributes.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i2.BuiltList, [FullType(_i4.AttributeType)]))
              as _i2.BuiltList<_i4.AttributeType>));
          break;
        case 'UserMFASettingList':
          if (value != null) {
            result.userMfaSettingList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i2.BuiltList, [FullType(String)]))
                as _i2.BuiltList<String>));
          }
          break;
        case 'Username':
          result.username = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GetUserResponse);
    final result = <Object?>[
      'UserAttributes',
      serializers.serialize(payload.userAttributes,
          specifiedType:
              const FullType(_i2.BuiltList, [FullType(_i4.AttributeType)])),
      'Username',
      serializers.serialize(payload.username,
          specifiedType: const FullType(String))
    ];
    if (payload.mfaOptions != null) {
      result
        ..add('MFAOptions')
        ..add(serializers.serialize(payload.mfaOptions!,
            specifiedType:
                const FullType(_i2.BuiltList, [FullType(_i3.MfaOptionType)])));
    }
    if (payload.preferredMfaSetting != null) {
      result
        ..add('PreferredMfaSetting')
        ..add(serializers.serialize(payload.preferredMfaSetting!,
            specifiedType: const FullType(String)));
    }
    if (payload.userMfaSettingList != null) {
      result
        ..add('UserMFASettingList')
        ..add(serializers.serialize(payload.userMfaSettingList!,
            specifiedType: const FullType(_i2.BuiltList, [FullType(String)])));
    }
    return result;
  }
}
