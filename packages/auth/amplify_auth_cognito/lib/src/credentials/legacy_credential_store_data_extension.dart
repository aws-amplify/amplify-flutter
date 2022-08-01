import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.dart';
import 'package:amplify_core/amplify_core.dart';

/// Extensions to convert legacy credential store data to [CredentialStoreData].
extension LegacyCredentialStoreDataX on LegacyCredentialStoreData {
  /// Converts [LegacyCredentialStoreData] to [CredentialStoreData].
  CredentialStoreData toCredentialStoreData() {
    final sessionToken = awsCredentials?.sessionToken;
    final expirationIso8601Utc = awsCredentials?.expirationIso8601Utc;
    final awsCredentialsData = awsCredentials != null
        ? AWSCredentials(
            awsCredentials!.accessKeyId,
            awsCredentials!.secretAccessKey,
            sessionToken,
            expirationIso8601Utc != null
                ? DateTime.parse(expirationIso8601Utc)
                : null,
          )
        : null;
    final userPoolTokensData = userPoolTokens != null
        ? CognitoUserPoolTokens(
            accessToken: JsonWebToken.parse(userPoolTokens!.accessToken),
            refreshToken: userPoolTokens!.refreshToken,
            idToken: JsonWebToken.parse(userPoolTokens!.idToken),
          )
        : null;
    return CredentialStoreData(
      identityId: identityId,
      awsCredentials: awsCredentialsData,
      userPoolTokens: userPoolTokensData,
    );
  }
}
