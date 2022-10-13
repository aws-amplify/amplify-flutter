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
