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
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

Future<void> main(List<String> args) async {
  final argParser = ArgParser();

  const accessKeyIdArg = 'access-key-id';
  const accessKeyIdEnv = 'AWS_ACCESS_KEY_ID';

  const secretAccessKeyArg = 'secret-access-key';
  const secretAccessKeyEnv = 'AWS_SECRET_ACCESS_KEY';

  const sessionTokenArg = 'session-token';
  const sessionTokenEnv = 'AWS_SESSION_TOKEN';

  const bucketArg = 'bucket';
  const regionArg = 'region';

  argParser.addOption(accessKeyIdArg,
      abbr: 'a', valueHelp: accessKeyIdEnv, mandatory: false);
  argParser.addOption(secretAccessKeyArg,
      abbr: 's', valueHelp: secretAccessKeyEnv, mandatory: false);
  argParser.addOption(sessionTokenArg,
      abbr: 't', valueHelp: sessionTokenEnv, mandatory: false);
  argParser.addOption(bucketArg,
      abbr: 'b', valueHelp: 'BUCKET', mandatory: true);
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

  final bucket = pArgs[bucketArg] as String;
  final region = pArgs[regionArg] as String;
  final filename = pArgs.rest.singleOrNull;

  if (filename == null) {
    stderr.writeln(
      'Usage: dart s3_example.dart --bucket=... --region=... <FILE_TO_UPLOAD>',
    );
    exit(1);
  }

  final AWSCredentials credentials =
      AWSCredentials(accessKeyId, secretAccessKey, sessionToken);
  final AWSSigV4Signer signer = AWSSigV4Signer(
    credentialsProvider: AWSCredentialsProvider(credentials),
  );

  // Set up S3 values
  final AWSCredentialScope scope =
      AWSCredentialScope(region: region, service: 's3');
  final String host = '$bucket.s3.$region.amazonaws.com';
  final ServiceConfiguration serviceConfiguration = S3ServiceConfiguration();

  // Create the bucket
  final List<int> createBody = utf8.encode('''
<CreateBucketConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
<LocationConstraint>$region</LocationConstraint>
</CreateBucketConfiguration>
''');
  final AWSHttpRequest createRequest = AWSHttpRequest(
    method: HttpMethod.put,
    host: host,
    path: '/',
    body: createBody,
    headers: {
      AWSHeaders.host: host,
      AWSHeaders.contentLength: createBody.length.toString(),
      AWSHeaders.contentType: 'application/xml',
    },
  );

  final AWSSignedRequest signedCreateRequest = await signer.sign(
    createRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  final createResponse = await signedCreateRequest.send();
  final createStatus = createResponse.statusCode;
  print('Create Bucket Response: $createStatus');
  if (createStatus == 409) {
    print('Bucket name already exists!');
  }
  if (createStatus != 200) {
    exit(1);
  }

  // Upload the file
  final Stream<List<int>> file = File(filename).openRead();
  final path = '/${p.basename(filename)}';
  final AWSStreamedHttpRequest uploadRequest = AWSStreamedHttpRequest(
    method: HttpMethod.put,
    host: host,
    path: path,
    body: file,
    headers: {
      AWSHeaders.host: host,
    },
  );

  final AWSSignedRequest signedUploadRequest = await signer.sign(
    uploadRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  final uploadResponse = await signedUploadRequest.send();
  final uploadStatus = uploadResponse.statusCode;
  print('Upload File Response: $uploadStatus');
  if (uploadStatus != 200) {
    stderr.writeln('Could not upload file');
    exit(1);
  }

  // Create a pre-signed URL for downloading the file
  final AWSHttpRequest urlRequest = AWSHttpRequest(
    method: HttpMethod.get,
    host: host,
    path: path,
    headers: {
      AWSHeaders.host: host,
    },
  );
  final Uri signedUrl = await signer.presign(
    urlRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  print('Download URL: $signedUrl');
}
