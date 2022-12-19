// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// HTTP request signer for AWS (Version 4).
library aws_signature_v4;

export 'package:aws_common/src/credentials/aws_credentials.dart';
export 'package:aws_common/src/credentials/credentials_provider.dart';

export 'src/configuration/service_configuration.dart';
export 'src/configuration/services/s3.dart';
export 'src/request/aws_credential_scope.dart';
export 'src/request/aws_date_time.dart';
export 'src/request/aws_signed_request.dart';
export 'src/request/canonical_request/canonical_request.dart';
export 'src/signer/aws_algorithm.dart';
export 'src/signer/aws_signer.dart';
