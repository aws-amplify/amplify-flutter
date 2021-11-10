/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:amplify_flutter/src/categories/amplify_categories.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_resources/amplifyconfiguration_all_resources.dart';
import '../test_resources/amplifyconfiguration_userpool_only.dart';
import '../test_resources/test_values.dart';

void main() {
  const channel = MethodChannel('com.amazonaws.amplify/amplify');
  const authChannel = MethodChannel('com.amazonaws.amplify/auth_cognito');

  var platformConfigured = false;

  TestWidgetsFlutterBinding.ensureInitialized();

  // Class under test
  late AmplifyClass amplify;

  // Amplify config files
  var allResources = allResourcesConfig;
  var userpoolOnly = userpoolOnlyConfig;

  setUp(() async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (!platformConfigured) {
        return true;
      } else {
        throw PlatformException(code: 'AmplifyAlreadyConfiguredException');
      }
    });
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'addPlugin') {
        return true;
      }
    });
    amplify = AmplifyClass.protected();
    await Amplify.addPlugin(AmplifyAuthCognito());
  });

  tearDown(() {
    AuthCategory.plugins.clear();
  });

  /// FULL COMPLEMENT OF AUTH-ENABLED RESOURCES
  test('CredentialsProvider.CognitoIdentity should be instantiated', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    var credentialProvider = config.auth!.awsCognitoAuthPlugin!
        .credentialProvider!['CognitoIdentity']!['Default']!;
    expect(credentialProvider.poolId, IDPOOL_ID);
    expect(credentialProvider.region, REGION);
  });

  test('CognitoUserPool should be instantiated', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    var userpool =
        config.auth!.awsCognitoAuthPlugin!.cognitoUserPool!['Default'];
    expect(userpool!.poolId, USERPOOL_ID);
    expect(userpool.region, REGION);
  });

  test('Auth block should be instantiated', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    var auth = config.auth!.awsCognitoAuthPlugin!.auth!['Default'];
    expect(auth!.authenticationFlowType, AUTHFLOW_SRP);
    expect(auth.oAuth!.appClientId, APPCLIENT_ID);
    expect(auth.oAuth!.scopes!.length, 5);
    expect(auth.oAuth!.signInRedirectURI, OAUTH_SIGNIN);
    expect(auth.oAuth!.signOutRedirectURI, OAUTH_SIGNOUT);
  });

  test('AppSync should be instantiated', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    var appsync = config.auth!.awsCognitoAuthPlugin!.appsync!['Default'];
    expect(appsync!.apiUrl, GRAPHQL_ENDPOINT);
    expect(appsync.region, REGION);
    expect(appsync.authMode, COGNITO_AUTH_TYPE);
    expect(appsync.clientDatabasePrefix, DATABASE_PREFIX);
  });

  test('PinpointAnalytics should be instantiated', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    var pinpoint =
        config.auth!.awsCognitoAuthPlugin!.pinpointAnalytics!['Default'];
    expect(pinpoint!.appId, ANALYTICS_APP_ID);
    expect(pinpoint.region, REGION);
  });

  test('PinpointTargeting should be instantiated', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    var pinpoint =
        config.auth!.awsCognitoAuthPlugin!.pinpointTargeting!['Default'];
    expect(pinpoint!.region, REGION);
  });

  test('S3TransferUtility should be instantiated', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    var s3 = config.auth!.awsCognitoAuthPlugin!.s3TransferUtility!['Default'];
    expect(s3!.region, REGION);
    expect(s3.bucket, BUCKET);
  });

  /// USERPOOL ONLY
  test('CognitoUserPool should be instantiated', () async {
    await amplify.configure(userpoolOnly);
    var config = await amplify.asyncConfig;
    var userpool =
        config.auth!.awsCognitoAuthPlugin!.cognitoUserPool!['Default'];
    expect(userpool!.poolId, USERPOOL_ID);
    expect(userpool.region, REGION);
  });

  test('CredentialsProvider.CognitoIdentity should be null', () async {
    await amplify.configure(userpoolOnly);
    var config = await amplify.asyncConfig;
    var credentialProvider =
        config.auth!.awsCognitoAuthPlugin!.credentialProvider;
    expect(credentialProvider, null);
  });

  test('Auth block should be instantiated but OAuth null', () async {
    await amplify.configure(userpoolOnly);
    var config = await amplify.asyncConfig;
    var auth = config.auth!.awsCognitoAuthPlugin!.auth!['Default'];
    expect(auth!.authenticationFlowType, AUTHFLOW_SRP);
    expect(auth.oAuth, null);
  });

  test('AppSync should be null', () async {
    await amplify.configure(userpoolOnly);
    var config = await amplify.asyncConfig;
    var appsync = config.auth!.awsCognitoAuthPlugin!.appsync;
    expect(appsync, null);
  });

  test('PinpointAnalytics should be null', () async {
    await amplify.configure(userpoolOnly);
    var config = await amplify.asyncConfig;
    var pinpoint = config.auth!.awsCognitoAuthPlugin!.pinpointAnalytics;
    expect(pinpoint, null);
  });

  test('PinpointTargeting should be null', () async {
    await amplify.configure(userpoolOnly);
    var config = await amplify.asyncConfig;
    var pinpoint = config.auth!.awsCognitoAuthPlugin!.pinpointTargeting;
    expect(pinpoint, null);
  });

  test('S3TransferUtility should be null', () async {
    await amplify.configure(userpoolOnly);
    var config = await amplify.asyncConfig;
    var s3 = config.auth!.awsCognitoAuthPlugin!.s3TransferUtility;
    expect(s3, null);
  });
}
