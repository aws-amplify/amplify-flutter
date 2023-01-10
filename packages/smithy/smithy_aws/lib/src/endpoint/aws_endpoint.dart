// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
