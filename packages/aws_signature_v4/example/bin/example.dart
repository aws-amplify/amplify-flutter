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
  final accessKeyId = Platform.environment[$awsAccessKeyId] ??
      parsedArgs[accessKeyIdArg] as String?;
  final secretAccessKey = Platform.environment[$awsSecretAccessKey] ??
      parsedArgs[secretAccessKeyArg] as String?;
  final sessionToken = Platform.environment[$awsSessionToken] ??
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

  final credentials =
      AWSCredentials(accessKeyId, secretAccessKey, sessionToken);
  final signer = AWSSigV4Signer(
    credentialsProvider: AWSCredentialsProvider(credentials),
  );

  // Set up S3 values
  final scope = AWSCredentialScope(
    region: region,
    service: AWSService.s3,
  );
  final host = '$bucket.s3.$region.amazonaws.com';
  final serviceConfiguration = S3ServiceConfiguration();

  // Create the bucket
  final createBody = utf8.encode(
    '''
<CreateBucketConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
<LocationConstraint>$region</LocationConstraint>
</CreateBucketConfiguration>
''',
  );
  final createRequest = AWSHttpRequest.put(
    Uri.https(host, '/'),
    body: createBody,
    headers: {
      AWSHeaders.host: host,
      AWSHeaders.contentLength: createBody.length.toString(),
      AWSHeaders.contentType: 'application/xml',
    },
  );

  stdout.writeln('Creating bucket $bucket...');
  final signedCreateRequest = await signer.sign(
    createRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  final createResponse = await signedCreateRequest.send();
  final createStatus = createResponse.statusCode;
  stdout.writeln('Create Bucket Response: $createStatus');
  if (createStatus == 409) {
    exitWithError('Bucket name already exists!');
  }
  if (createStatus != 200) {
    exitWithError('Bucket creation failed');
  }
  stdout.writeln('Bucket creation succeeded!');

  // Upload the file
  final file = File(filename).openRead();
  final path = '/${p.basename(filename)}';
  final uploadRequest = AWSStreamedHttpRequest.put(
    Uri.https(host, path),
    body: file,
    headers: {
      AWSHeaders.host: host,
      AWSHeaders.contentType: 'text/plain',
    },
  );

  stdout.writeln('Uploading file $filename to $path...');
  final signedUploadRequest = await signer.sign(
    uploadRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  final uploadResponse = await signedUploadRequest.send();
  final uploadStatus = uploadResponse.statusCode;
  stdout.writeln('Upload File Response: $uploadStatus');
  if (uploadStatus != 200) {
    exitWithError('Could not upload file');
  }
  stdout.writeln('File uploaded successfully!');

  // Create a pre-signed URL for downloading the file
  final urlRequest = AWSHttpRequest.get(
    Uri.https(host, path),
    headers: {
      AWSHeaders.host: host,
    },
  );
  final signedUrl = await signer.presign(
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
