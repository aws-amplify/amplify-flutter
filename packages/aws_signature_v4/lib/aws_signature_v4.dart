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
