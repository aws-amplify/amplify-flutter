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

import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/endpoint/credential_scope.dart';

/// {@template smithy_aws.aws_endpoint}
/// Represents the endpoint a service client should make API operation calls to.
/// The SDK will automatically resolve these endpoints per API client using an
/// internal resolver.
/// {@endtemplate}
class AWSEndpoint {
  /// {@macro smithy_aws.aws_endpoint}
  const AWSEndpoint({
    required this.endpoint,
    this.credentialScope,
  });

  /// The endpoint clients will use to make API calls to e.g.
  /// "{service-id}.{region}.amazonaws.com".
  final Endpoint endpoint;

  /// Custom signing constraint overrides.
  final CredentialScope? credentialScope;
}
