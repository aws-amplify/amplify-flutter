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

// Collection
export 'src/collection/case_insensitive.dart';

// Config
export 'src/config/aws_service.dart';

// HTTP
export 'src/http/aws_headers.dart';
export 'src/http/aws_http_method.dart';
export 'src/http/aws_http_request.dart';
export 'src/http/aws_http_response.dart';

// Utils
export 'src/util/closeable.dart';
export 'src/util/debuggable.dart';
export 'src/util/equatable.dart';
export 'src/util/globals.dart';
export 'src/util/json.dart';
export 'src/util/print.dart';
export 'src/util/serializable.dart';
export 'src/util/uuid.dart';
