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

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_common.resend_user_attribute_confirmation_code_result}
/// Wraps the result of a resend user confirmation code operation.
/// {@endtemplate}
class ResendUserAttributeConfirmationCodeResult {
  /// Contains the delivery details of the confirmation code that was sent to
  /// the user.
  final AuthCodeDeliveryDetails codeDeliveryDetails;

  /// {@macro amplify_common.resend_user_attribute_confirmation_code_result}
  ResendUserAttributeConfirmationCodeResult({
    required this.codeDeliveryDetails,
  });

  ResendUserAttributeConfirmationCodeResult.fromMap({
    required Map<String, String> codeDeliveryDetails,
  }) : codeDeliveryDetails = AuthCodeDeliveryDetails(
          attributeName: codeDeliveryDetails['attributeName'],
          deliveryMedium: codeDeliveryDetails['deliveryMedium'],
          destination: codeDeliveryDetails['destination'],
        );

  ResendUserAttributeConfirmationCodeResult.fromCodeDeliveryDetails({
    required this.codeDeliveryDetails,
  });
}
