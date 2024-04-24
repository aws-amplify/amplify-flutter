// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'send_user_attribute_verification_code_result.g.dart';

/// {@category Auth}
/// {@template amplify_core.send_user_attribute_verification_code_result}
/// Wraps the result of a send user verification code operation.
/// {@endtemplate}
@zAmplifySerializable
class SendUserAttributeVerificationCodeResult
    with
        AWSEquatable<SendUserAttributeVerificationCodeResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.send_user_attribute_verification_code_result}
  const SendUserAttributeVerificationCodeResult({
    required this.codeDeliveryDetails,
  });

  /// {@macro amplify_core.send_user_attribute_verification_code_result}
  factory SendUserAttributeVerificationCodeResult.fromJson(
    Map<String, Object?> json,
  ) =>
      _$SendUserAttributeVerificationCodeResultFromJson(json);

  /// Contains the delivery details of the confirmation code that was sent to
  /// the user.
  final AuthCodeDeliveryDetails codeDeliveryDetails;

  @override
  List<Object?> get props => [codeDeliveryDetails];

  @override
  String get runtimeTypeName => 'SendUserAttributeVerificationCodeResult';

  @override
  Map<String, Object?> toJson() =>
      _$SendUserAttributeVerificationCodeResultToJson(this);
}
