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

// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

Future<void> main(List<String> args) async {
  final argParser = ArgParser();

  const accessKeyIdArg = 'access-key-id';
  const accessKeyIdEnv = 'AWS_ACCESS_KEY_ID';

  const secretAccessKeyArg = 'secret-access-key';
  const secretAccessKeyEnv = 'AWS_SECRET_ACCESS_KEY';

  const sessionTokenArg = 'session-token';
  const sessionTokenEnv = 'AWS_SESSION_TOKEN';

  const userPoolIdArg = 'user-pool-id';
  const regionArg = 'region';

  argParser.addOption(accessKeyIdArg,
      abbr: 'a', valueHelp: accessKeyIdEnv, mandatory: false);
  argParser.addOption(secretAccessKeyArg,
      abbr: 's', valueHelp: secretAccessKeyEnv, mandatory: false);
  argParser.addOption(sessionTokenArg,
      abbr: 't', valueHelp: sessionTokenEnv, mandatory: false);
  argParser.addOption(userPoolIdArg,
      abbr: 'u', valueHelp: 'USER_POOL_ID', mandatory: true);
  argParser.addOption(
    regionArg,
    abbr: 'r',
    valueHelp: 'REGION',
    mandatory: true,
  );

  final pArgs = argParser.parse(args);
  final String? accessKeyId =
      Platform.environment[accessKeyIdEnv] ?? pArgs[accessKeyIdArg];
  final String? secretAccessKey =
      Platform.environment[secretAccessKeyEnv] ?? pArgs[secretAccessKeyArg];
  final String? sessionToken =
      Platform.environment[sessionTokenEnv] ?? pArgs[sessionTokenArg];

  if (accessKeyId == null || secretAccessKey == null) {
    stderr.writeln('No AWS credentials found');
    exit(1);
  }

  final userPoolId = pArgs[userPoolIdArg] as String;
  final region = pArgs[regionArg] as String;

  final AWSCredentials credentials =
      AWSCredentials(accessKeyId, secretAccessKey, sessionToken);
  final AWSSigV4Signer signer = AWSSigV4Signer(
    credentialsProvider: AWSCredentialsProvider(credentials),
  );

  // Create a request to Cognito
  final AWSCredentialScope scope =
      AWSCredentialScope(region: region, service: 'cognito-idp');
  final List<int> body = json.encode({
    'UserPoolId': userPoolId,
  }).codeUnits;
  final AWSHttpRequest sigRequest = AWSHttpRequest(
    method: HttpMethod.post,
    host: 'cognito-idp.$region.amazonaws.com',
    path: '/',
    headers: {
      AWSHeaders.target: 'AWSCognitoIdentityProviderService.DescribeUserPool',
      AWSHeaders.contentType: 'application/x-amz-json-1.1',
      AWSHeaders.contentLength: body.length.toString(),
    },
    body: body,
  );

  // Using `sign` (preferred)
  final AWSSignedRequest signedRequest = await signer.sign(
    sigRequest,
    credentialScope: scope,
  );
  final resp = await signedRequest.send();
  final respBody = await resp.stream.bytesToString();
  print(respBody);

  // Using `signSync` (only valid for non-streaming requests)
  // final AWSSignedRequest syncSignedRequest = signer.signSync(
  //   sigRequest,
  //   credentialScope: scope,
  // );
  // final syncResp = await syncSignedRequest.send();
  // final syncRespBody = await syncResp.stream.bytesToString();
  // print(syncRespBody);
}
