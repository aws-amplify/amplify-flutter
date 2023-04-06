// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Auth Cognito
library amplify_auth_cognito;

export 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide
        AmplifyAuthCognitoDart,
        // TODO(Jordan-Nelson): determine if the following models should be
        /// exported from amplify_auth_cognito_dart.
        HostedUiPlatform,
        HostedUiPlatformFactory,
        OAuthErrorCode,
        OAuthParameters,
        oauthSerializers,
        CognitoUserPoolTokensBuilder,
        OAuthParametersBuilder,
        JsonWebTokenSerializer;

export 'src/auth_plugin_impl.dart';
