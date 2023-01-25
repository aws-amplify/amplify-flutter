// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_signature_v4/aws_signature_v4.dart';

/// {@template smithy_aws.s3_client_config}
/// Configuration options for S3 clients.
/// {@endtemplate}
class S3ClientConfig {
  /// {@macro smithy_aws.s3_client_config}
  const S3ClientConfig({
    this.usePathStyle = false,
    this.useDualStack = false,
    this.useAcceleration = false,
    this.signerConfiguration,
  });

  /// Allows you to enable dual-stack endpoint support for the service.
  final bool useDualStack;

  /// Allows you to enable S3 Accelerate feature. All operations compatible with S3
  /// Accelerate will use the accelerate endpoint for requests. Requests not
  /// compatible will fall back to normal S3 requests. The bucket must be enabled for
  /// accelerate to be used with S3 client with accelerate enabled. If the bucket is
  /// not enabled for accelerate an error will be returned. The bucket name must be
  /// DNS compatible to work with accelerate.
  final bool useAcceleration;

  /// Allows you to enable the client to use path-style addressing, i.e.,
  /// https://s3.amazonaws.com/BUCKET/KEY. By default, the S3 client will use virtual
  /// hosted bucket addressing when possible(https://BUCKET.s3.amazonaws.com/KEY).
  final bool usePathStyle;

  /// The configuration for signing requests using [AWSSigV4Signer].
  ///
  /// Defaults to [S3ServiceConfiguration.new].
  final S3ServiceConfiguration? signerConfiguration;

  /// Returns a new [S3ClientConfig] with overrides.
  S3ClientConfig copyWith({
    bool? usePathStyle,
    bool? useDualStack,
    bool? useAcceleration,
    S3ServiceConfiguration? signerConfiguration,
  }) {
    return S3ClientConfig(
      usePathStyle: usePathStyle ?? this.useAcceleration,
      useDualStack: useDualStack ?? this.useDualStack,
      useAcceleration: useAcceleration ?? this.useAcceleration,
      signerConfiguration: signerConfiguration ?? this.signerConfiguration,
    );
  }
}
