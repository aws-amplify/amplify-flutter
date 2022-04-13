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

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:args/args.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

// This examples walks through the creation of an S3 bucket and the process of
// uploading a file to that bucket and retrieving a secure URL for reading back
// its contents.

Future<void> main(List<String> args) async {
  final argParser = ArgParser();

  const accessKeyIdArg = 'access-key-id';
  const secretAccessKeyArg = 'secret-access-key';
  const sessionTokenArg = 'session-token';

  const bucketArg = 'bucket';
  const regionArg = 'region';

  argParser.addOption(accessKeyIdArg,
      abbr: 'a', valueHelp: $awsAccessKeyId, mandatory: false);
  argParser.addOption(secretAccessKeyArg,
      abbr: 's', valueHelp: $awsSecretAccessKey, mandatory: false);
  argParser.addOption(sessionTokenArg,
      abbr: 't', valueHelp: $awsSessionToken, mandatory: false);
  argParser.addOption(
    bucketArg,
    abbr: 'b',
    help: 'The name of the bucket to create',
    valueHelp: 'BUCKET',
    mandatory: false,
  );
  argParser.addOption(
    regionArg,
    abbr: 'r',
    help: 'The region of the bucket',
    valueHelp: 'REGION',
    mandatory: true,
  );

  final pArgs = argParser.parse(args);
  final String? accessKeyId =
      Platform.environment[$awsAccessKeyId] ?? pArgs[accessKeyIdArg];
  final String? secretAccessKey =
      Platform.environment[$awsSecretAccessKey] ?? pArgs[secretAccessKeyArg];
  final String? sessionToken =
      Platform.environment[$awsSessionToken] ?? pArgs[sessionTokenArg];

  if (accessKeyId == null || secretAccessKey == null) {
    exitError('No AWS credentials found');
  }

  final bucket =
      pArgs[bucketArg] as String? ?? 'mybucket-${Random().nextInt(1 << 30)}';
  final region = pArgs[regionArg] as String;
  final filename = pArgs.rest.singleOrNull;

  if (filename == null) {
    exitError(
      'Usage: dart s3_example.dart --bucket=... --region=... <FILE_TO_UPLOAD>',
    );
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

  stdout.writeln('Creating bucket $bucket...');
  final AWSSignedRequest signedCreateRequest = await signer.sign(
    createRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  final http.StreamedResponse createResponse = await signedCreateRequest.send();
  final int createStatus = createResponse.statusCode;
  stdout.writeln('Create Bucket Response: $createStatus');
  if (createStatus == 409) {
    exitError('Bucket name already exists!');
  }
  if (createStatus != 200) {
    exitError('Bucket creation failed');
  }
  stdout.writeln('Bucket creation succeeded!');

  // Upload the file
  final Stream<List<int>> file = File(filename).openRead();
  final String path = '/${p.basename(filename)}';
  final AWSStreamedHttpRequest uploadRequest = AWSStreamedHttpRequest(
    method: HttpMethod.put,
    host: host,
    path: path,
    body: file,
    headers: {
      AWSHeaders.host: host,
      AWSHeaders.contentType: 'text/plain',
    },
  );

  stdout.writeln('Uploading file $filename to $path...');
  final AWSSignedRequest signedUploadRequest = await signer.sign(
    uploadRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  final http.StreamedResponse uploadResponse = await signedUploadRequest.send();
  final int uploadStatus = uploadResponse.statusCode;
  stdout.writeln('Upload File Response: $uploadStatus');
  if (uploadStatus != 200) {
    exitError('Could not upload file');
  }
  stdout.writeln('File uploaded successfully!');

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
    expiresIn: const Duration(minutes: 10),
  );
  stdout.writeln('Download URL: $signedUrl');
}

/// Exits the script with an [error].
Never exitError(String error) {
  stderr.writeln(error);
  exit(1);
}
