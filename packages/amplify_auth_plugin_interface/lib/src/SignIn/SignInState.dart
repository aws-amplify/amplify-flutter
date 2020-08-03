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

enum SignInState {
  CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE,
  CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE,
  CONFIRM_SIGN_IN_WITH_NEW_PASSWORD,
  RESET_PASSWORD,
  DONE,
  ERROR
}
