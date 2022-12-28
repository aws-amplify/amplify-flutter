// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

AWSHttpClient get localClient {
  final client = AWSHttpClient()
    ..supportedProtocols = SupportedProtocols.http1
    ..onBadCertificate = (_, __, ___) => true;
  addTearDown(client.close);
  return client;
}
