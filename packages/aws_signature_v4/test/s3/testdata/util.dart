// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_signature_v4/aws_signature_v4.dart';

import '../../c_test_suite/context.dart';

Context buildContext() {
  const credentials = AWSCredentials(
    'AKIAIOSFODNN7EXAMPLE',
    'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
  );
  final timestamp = DateTime.parse('20130524T000000Z');
  const region = 'us-east-1';
  const service = 's3';
  return Context(
    credentials: credentials,
    expirationInSeconds: 0,
    normalize: true,
    timestamp: timestamp,
    service: service,
    region: region,
    signBody: true,
  );
}
