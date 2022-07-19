/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the 'License').
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the 'license' file accompanying this file. This file is distributed
 * on an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/src/types/auth/auth_code_delivery_details.dart';
import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';

part 'resend_user_attribute_confirmation_code_result.g.dart';

/// {@template amplify_core.resend_user_attribute_confirmation_code_result}
/// Wraps the result of a resend user confirmation code operation.
/// {@endtemplate}
@zAmplifySerializable
class ResendUserAttributeConfirmationCodeResult
    with
        AWSEquatable<ResendUserAttributeConfirmationCodeResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.resend_user_attribute_confirmation_code_result}
  const ResendUserAttributeConfirmationCodeResult({
    required this.codeDeliveryDetails,
  });

  factory ResendUserAttributeConfirmationCodeResult.fromJson(
    Map<String, Object?> json,
  ) =>
      _$ResendUserAttributeConfirmationCodeResultFromJson(json);

  /// Contains the delivery details of the confirmation code that was sent to
  /// the user.
  final AuthCodeDeliveryDetails codeDeliveryDetails;

  @override
  List<Object?> get props => [codeDeliveryDetails];

  @override
  String get runtimeTypeName => 'ResendUserAttributeConfirmationCodeResult';

  @override
  Map<String, Object?> toJson() =>
      _$ResendUserAttributeConfirmationCodeResultToJson(this);
}
