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

/// Common types and utilities used across AWS and Amplify packages.
library aws_common;

// External types used in our public APIs
export 'package:async/async.dart' show CancelableOperation, CancelableCompleter;

// Collection
export 'src/collection/case_insensitive.dart';

// Config
export 'src/config/aws_config_value.dart' hide lookupPlatformEnv;
export 'src/config/aws_path_provider.dart';
export 'src/config/aws_profile_file.dart' hide AWSProfileFileType;
export 'src/config/aws_service.dart';

// Credentials
export 'src/credentials/aws_credentials.dart';
export 'src/credentials/credentials_provider.dart';
export 'src/credentials/credentials_provider_io.dart'
    if (dart.library.html) 'src/credentials/credentials_provider_html.dart';

// Exception
export 'src/exception/aws_http_exception.dart';
export 'src/exception/cancellation_exception.dart';

// HTTP
export 'src/http/alpn_protocol.dart';
export 'src/http/aws_headers.dart';
export 'src/http/aws_http_client.dart';
export 'src/http/aws_http_method.dart';
export 'src/http/aws_http_operation.dart';
export 'src/http/aws_http_request.dart';
export 'src/http/aws_http_response.dart';
export 'src/http/http_payload.dart';
export 'src/http/x509_certificate.dart';

// Logging
export 'src/logging/aws_logger.dart';
export 'src/logging/log_entry.dart';
export 'src/logging/log_level.dart';
export 'src/logging/simple_log_printer.dart';

// Operation
export 'src/operation/aws_operation.dart';
export 'src/operation/aws_progress_operation.dart';

// Utils
export 'src/util/cancelable.dart';
export 'src/util/closeable.dart';
export 'src/util/debuggable.dart';
export 'src/util/equatable.dart';
export 'src/util/globals.dart';
export 'src/util/json.dart';
export 'src/util/print.dart';
export 'src/util/recase.dart';
export 'src/util/serializable.dart';
export 'src/util/uuid.dart';
