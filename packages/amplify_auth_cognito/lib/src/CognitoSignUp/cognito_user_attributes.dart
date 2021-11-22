//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

/// Standard user attributes available for configuring via `Amplify.Auth.signUp`,
/// or updating via `Amplify.Auth.updateUserAttribute` and
/// `Amplify.Auth.updateUserAttributes`.
///
/// More information about these attributes can be found
/// [here](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html).
abstract class CognitoUserAttributes {
  static const address = 'address';
  static const email = 'email';
  static const familyName = 'family_name';
  static const gender = 'gender';
  static const givenName = 'given_name';
  static const locale = 'locale';
  static const middleName = 'middle_name';
  static const name = 'name';
  static const nickname = 'nickname';
  static const phoneNumber = 'phone_number';
  static const picture = 'picture';
  static const preferredUsername = 'preferred_username';
  static const profile = 'profile';
  static const updatedAt = 'updated_at';
  static const website = 'website';
  static const zoneinfo = 'zoneinfo';
}
