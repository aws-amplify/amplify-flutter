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
import 'AuthCodeDeliveryDetails.dart';

class AuthNextStep {
  Map<dynamic, dynamic> additionalInfo;
  AuthCodeDeliveryDetails codeDeliveryDetails;
  AuthNextStep({@required codeDeliveryDetails, additionalInfo = const {}}) {
    this.additionalInfo = additionalInfo;
    this.codeDeliveryDetails = AuthCodeDeliveryDetails(
      attributeName: codeDeliveryDetails["attributeName"] ?? "",
      deliveryMedium: codeDeliveryDetails["deliveryMedium"] ?? "",
      destination: codeDeliveryDetails["destination"]?? ""
    );
  }
}