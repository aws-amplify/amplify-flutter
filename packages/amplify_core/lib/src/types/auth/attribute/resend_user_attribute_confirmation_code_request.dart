/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';

part 'resend_user_attribute_confirmation_code_request.g.dart';

/// {@template amplify_core.resend_user_attribute_confirmation_code_request}
/// Encapsulates parameters for a request to resend a user attribute
/// confirmation code.
/// {@endtemplate}
@zAmplifyGenericSerializable
class ResendUserAttributeConfirmationCodeRequest<Key extends UserAttributeKey,
        Options extends ResendUserAttributeConfirmationCodeOptions>
    with
        // TODO(dnys1): https://github.com/dart-lang/sdk/issues/49484
        AWSEquatable<ResendUserAttributeConfirmationCodeRequest<Key, Options>>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.resend_user_attribute_confirmation_code_request}
  const ResendUserAttributeConfirmationCodeRequest({
    required this.userAttributeKey,
    this.options,
  });

  factory ResendUserAttributeConfirmationCodeRequest.fromJson(
    Map<String, Object?> json,
    Key Function(String) fromJsonKey,
    Options Function(Map<String, Object?>) fromJsonOptions,
  ) =>
      _$ResendUserAttributeConfirmationCodeRequestFromJson(
        json,
        (key) => fromJsonKey(key as String),
        (json) => fromJsonOptions((json as Map).cast()),
      );

  /// The key of the user attribute to resend the confirmation code for.
  final Key userAttributeKey;

  /// Plugin-specific, advanced options such as information about the client.
  final Options? options;

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [userAttributeKey, options];

  @override
  String get runtimeTypeName => 'ResendUserAttributeConfirmationCodeRequest';

  @override
  Map<String, Object?> toJson() =>
      _$ResendUserAttributeConfirmationCodeRequestToJson(
        this,
        (Key key) => key.toJson(),
        (Options options) => options.toJson(),
      );
}
