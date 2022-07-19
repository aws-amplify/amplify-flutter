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

import 'package:amplify_core/src/types/auth/auth_code_delivery_details.dart';
import 'package:aws_common/aws_common.dart';

abstract class AuthNextStep with AWSSerializable<Map<String, Object?>> {
  const AuthNextStep({this.codeDeliveryDetails, this.additionalInfo});

  final Map<String, String>? additionalInfo;
  final AuthCodeDeliveryDetails? codeDeliveryDetails;
}
