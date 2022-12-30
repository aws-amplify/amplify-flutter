// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// AWS runtime for Smithy.
library smithy_aws;

// Endpoint
export 'src/endpoint/aws_endpoint.dart';
export 'src/endpoint/aws_endpoint_resolver.dart';
export 'src/endpoint/credential_scope.dart';
export 'src/endpoint/partition.dart';
// HTTP
export 'src/http/interceptors/s3/check_error_on_success.dart';
export 'src/http/interceptors/s3/check_partial_response.dart';
export 'src/http/interceptors/with_checksum.dart';
export 'src/http/interceptors/with_sdk_invocation.dart';
export 'src/http/interceptors/with_sdk_request.dart';
export 'src/http/interceptors/with_sig_v4.dart';
export 'src/http/retry/aws_retryer.dart' hide zMaxAttempts, zRetryAttempt;
// AWS Protocols
export 'src/protocol/aws_json_1_0.dart';
export 'src/protocol/aws_json_1_1.dart';
export 'src/protocol/rest_json_1.dart';
export 'src/protocol/rest_xml.dart';
export 'src/s3/s3_client_config.dart';
