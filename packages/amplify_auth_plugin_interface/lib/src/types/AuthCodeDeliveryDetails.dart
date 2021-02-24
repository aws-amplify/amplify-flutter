/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:flutter/foundation.dart';

/// Wrapper class for representing the various aspects of a confirmation code sent to a user.
class AuthCodeDeliveryDetails {
  /// What attribute was being verified, if any
  String attributeName;

  /// What method was used to send the code
  String deliveryMedium;

  /// The address the code was sent to
  String destination;

  // ignore: public_member_api_docs
  AuthCodeDeliveryDetails({@required this.attributeName,  @required this.deliveryMedium, @required this.destination});
}