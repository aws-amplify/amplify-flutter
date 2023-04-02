// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

const dummyCredentials = AWSCredentials('accessKeyId', 'secretAccessKey');
final dummyCredentialScope =
    AWSCredentialScope(region: 'us-east-1', service: AWSService.iam);
