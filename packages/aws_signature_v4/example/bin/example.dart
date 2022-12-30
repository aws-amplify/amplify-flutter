// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

  const bucketArg = 'bucket';
  const regionArg = 'region';

  argParser
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

  final bucket = parsedArgs[bucketArg] as String? ??
      'mybucket-${Random().nextInt(1 << 30)}';
  final region = parsedArgs[regionArg] as String;
  final filename = parsedArgs.rest.singleOrNull;

  if (filename == null) {
    exitWithError(
      'Usage: dart s3_example.dart --region=... <FILE_TO_UPLOAD>',
    );
  }

  // Create a signer which uses the `default` profile from the shared
  // credentials file.
  const signer = AWSSigV4Signer(
    credentialsProvider: AWSCredentialsProvider.profile(),
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
  final createResponse = await signedCreateRequest.send().response;
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
  final uploadResponse = await signedUploadRequest.send().response;
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
