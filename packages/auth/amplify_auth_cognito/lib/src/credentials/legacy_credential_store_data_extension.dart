import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.dart';
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
