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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

final _hex = '[0-9a-f]';
final _uuidMatch = '$_hex{8}-$_hex{4}-$_hex{4}-$_hex{4}-$_hex{12}';
final _regionMatch = '[a-z]{2}-[a-z]{4,9}-[0-9]{1}';

// validates that the user sub exists and is a valid uuid
bool isValidUserSub(String? value) {
  if (value == null) {
    return false;
  }
  final uuidRegExp = RegExp('^$_uuidMatch\$');
  return uuidRegExp.hasMatch(value);
}

// validates that the identityId exists and matches the pattern region:uuid
bool isValidIdentityId(String? value) {
  if (value == null) {
    return false;
  }
  final identityIdRegExp = RegExp('^$_regionMatch:$_uuidMatch\$');
  return identityIdRegExp.hasMatch(value);
}

// validates that the keys/tokens exist and are non empty strings
bool isValidAWSCredentials(AWSCredentials? credentials) {
  return credentials is AWSCredentials &&
      credentials.awsAccessKey != null &&
      credentials.awsSecretKey != null &&
      credentials.sessionToken != null &&
      credentials.awsAccessKey!.isNotEmpty &&
      credentials.awsSecretKey!.isNotEmpty &&
      credentials.sessionToken!.isNotEmpty;
}

// validates that the tokens exist and are non empty strings
bool isValidAWSCognitoUserPoolTokens(AWSCognitoUserPoolTokens? tokens) {
  return tokens is AWSCognitoUserPoolTokens &&
      tokens.accessToken.isNotEmpty &&
      tokens.idToken.isNotEmpty &&
      tokens.refreshToken.isNotEmpty;
}
