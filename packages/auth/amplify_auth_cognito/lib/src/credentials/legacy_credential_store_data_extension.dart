// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.legacy_credential_store_data_extension}
/// Extensions to convert credential store data stored by
/// the legacy Android SDK to [CredentialStoreData].
/// {@endtemplate}
extension LegacyCredentialStoreDataX on LegacyCredentialStoreData {
  /// {@macro amplify_auth_cognito.legacy_credential_store_data_extension}
  CredentialStoreData toCredentialStoreData() {
    final awsCredentialsData = accessKeyId != null && secretAccessKey != null
        ? AWSCredentials(
            accessKeyId!,
            secretAccessKey!,
            sessionToken,
            expirationMsSinceEpoch != null
                ? DateTime.fromMillisecondsSinceEpoch(expirationMsSinceEpoch!)
                : null,
          )
        : null;
    final userPoolTokensData =
        accessToken != null && refreshToken != null && idToken != null
            ? CognitoUserPoolTokens(
                accessToken: JsonWebToken.parse(accessToken!),
                refreshToken: refreshToken!,
                idToken: JsonWebToken.parse(idToken!),
              )
            : null;
    return CredentialStoreData(
      identityId: identityId,
      awsCredentials: awsCredentialsData,
      userPoolTokens: userPoolTokensData,
    );
  }
}
