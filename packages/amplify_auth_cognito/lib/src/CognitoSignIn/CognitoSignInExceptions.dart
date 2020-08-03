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

enum CognitoSignInException {
  INVALID_PARAMETER,
  INTERNAL_ERROR,
  INVALID_LAMBDA_RESPONSE,
  INVALID_SMS_ROLE_ACCESS_POLICY,
  INVALID_SMS_ROLE_TRUST_RELATIONSHIP,
  INVALID_USER_POOL_CONFIGURATION,
  NOT_AUTHORIZED,
  PASSWORD_RESET_REQUIRED,
  RESOURCE_NOT_FOUND,
  TOO_MANY_REQUESTS,
  UNEXPECTED_LAMBDA,
  USER_LAMBDA_VALIDATION,
  USER_NOT_CONFIRMED,
  USER_NOT_FOUND_EXCEPTION,
}
