// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resend_user_attribute_confirmation_code_result.g.dart';

/// {@template amplify_core.resend_user_attribute_confirmation_code_result}
/// Wraps the result of a resend user confirmation code operation.
/// {@endtemplate}
@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  // TODO(dnys1): Fix generic serialization
  createFactory: false,
)
class ResendUserAttributeConfirmationCodeResult
    with
        AWSEquatable<ResendUserAttributeConfirmationCodeResult>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.resend_user_attribute_confirmation_code_result}
  const ResendUserAttributeConfirmationCodeResult({
    required this.codeDeliveryDetails,
  });

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
