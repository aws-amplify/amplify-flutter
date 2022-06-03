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

// ignore_for_file: omit_local_variable_types

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:args/args.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

// This examples walks through the creation of an S3 bucket and the process of
// uploading a file to that bucket and retrieving a pre-signed URL for reading
// back its contents.

Future<void> main(List<String> args) async {
  final argParser = ArgParser();

  const accessKeyIdArg = 'access-key-id';
  const secretAccessKeyArg = 'secret-access-key';
  const sessionTokenArg = 'session-token';

  const bucketArg = 'bucket';
  const regionArg = 'region';

  argParser
    ..addOption(
      accessKeyIdArg,
      abbr: 'a',
      valueHelp: $awsAccessKeyId,
      mandatory: false,
    )
    ..addOption(
      secretAccessKeyArg,
      abbr: 's',
      valueHelp: $awsSecretAccessKey,
      mandatory: false,
    )
    ..addOption(
      sessionTokenArg,
      abbr: 't',
      valueHelp: $awsSessionToken,
      mandatory: false,
    )
    ..addOption(
      bucketArg,
      abbr: 'b',
      help: 'The name of the bucket to create',
      valueHelp: 'BUCKET',
      mandatory: false,
    )
    ..addOption(
      regionArg,
      abbr: 'r',
      help: 'The region of the bucket',
      valueHelp: 'REGION',
      mandatory: true,
    );

  final parsedArgs = argParser.parse(args);
  final String? accessKeyId = Platform.environment[$awsAccessKeyId] ??
      parsedArgs[accessKeyIdArg] as String?;
  final String? secretAccessKey = Platform.environment[$awsSecretAccessKey] ??
      parsedArgs[secretAccessKeyArg] as String?;
  final String? sessionToken = Platform.environment[$awsSessionToken] ??
      parsedArgs[sessionTokenArg] as String?;

  if (accessKeyId == null || secretAccessKey == null) {
    exitWithError('No AWS credentials found');
  }

  final bucket = parsedArgs[bucketArg] as String? ??
      'mybucket-${Random().nextInt(1 << 30)}';
  final region = parsedArgs[regionArg] as String;
  final filename = parsedArgs.rest.singleOrNull;

  if (filename == null) {
    exitWithError(
      'Usage: dart s3_example.dart --bucket=... --region=... <FILE_TO_UPLOAD>',
    );
  }

  final AWSCredentials credentials =
      AWSCredentials(accessKeyId, secretAccessKey, sessionToken);
  final AWSSigV4Signer signer = AWSSigV4Signer(
    credentialsProvider: AWSCredentialsProvider(credentials),
  );

  // Set up S3 values
  final AWSCredentialScope scope = AWSCredentialScope(
    region: region,
    service: AWSService.s3,
  );
  final String host = '$bucket.s3.$region.amazonaws.com';
  final ServiceConfiguration serviceConfiguration = S3ServiceConfiguration();

  // Create the bucket
  final List<int> createBody = utf8.encode(
    '''
<CreateBucketConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
<LocationConstraint>$region</LocationConstraint>
</CreateBucketConfiguration>
''',
  );
  final AWSHttpRequest createRequest = AWSHttpRequest.put(
    Uri.https(host, '/'),
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
  final AWSStreamedHttpResponse createResponse =
      await signedCreateRequest.send();
  final int createStatus = createResponse.statusCode;
  stdout.writeln('Create Bucket Response: $createStatus');
  if (createStatus == 409) {
    exitWithError('Bucket name already exists!');
  }
  if (createStatus != 200) {
    exitWithError('Bucket creation failed');
  }
  stdout.writeln('Bucket creation succeeded!');

  // Upload the file
  final Stream<List<int>> file = File(filename).openRead();
  final String path = '/${p.basename(filename)}';
  final AWSStreamedHttpRequest uploadRequest = AWSStreamedHttpRequest.put(
    Uri.https(host, path),
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
  final AWSStreamedHttpResponse uploadResponse =
      await signedUploadRequest.send();
  final int uploadStatus = uploadResponse.statusCode;
  stdout.writeln('Upload File Response: $uploadStatus');
  if (uploadStatus != 200) {
    exitWithError('Could not upload file');
  }
  stdout.writeln('File uploaded successfully!');

  // Create a pre-signed URL for downloading the file
  final AWSHttpRequest urlRequest = AWSHttpRequest.get(
    Uri.https(host, path),
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
Never exitWithError(String error) {
  stderr.writeln(error);
  exit(1);
}
