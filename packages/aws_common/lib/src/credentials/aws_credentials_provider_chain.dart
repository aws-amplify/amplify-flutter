// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';

/// {@template aws_signature_v4.aws_credentials_provider_chain}
/// Attempts to load AWS credentials from a [chain] of credentials providers, in order.
/// {@endtemplate}
abstract base class AWSCredentialsProviderChain
    with AWSDebuggable, AWSLoggerMixin
    implements AWSCredentialsProvider {
  /// {@macro aws_signature_v4.aws_credentials_provider_chain}
  const AWSCredentialsProviderChain();

  /// The chain of [AWSCredentialsProvider] to iterate through.
  ///
  /// [retrieve] attempts each provider, in order, until one is successful.
  /// If none are successful, an [InvalidCredentialsException] is thrown.
  List<AWSCredentialsProvider> get chain;

  @override
  Future<AWSCredentials> retrieve() async {
    final chain = List.of(this.chain);
    for (final credentialsProvider in chain) {
      final providerType = credentialsProvider.runtimeTypeName;
      logger.verbose('Loading credentials from $providerType');
      try {
        final credentials = await credentialsProvider.retrieve();
        logger.verbose('Successfully loaded credentials from $providerType');
        return credentials;
      } on Object {
        logger.verbose('Failed to loaded credentials from $providerType');
        continue;
      }
    }
    throw InvalidCredentialsException.couldNotLoad(
      'Could not load credentials using chain: '
      '[${chain.map((p) => p.runtimeTypeName).join(', ')}]',
    );
  }
}

/// {@macro aws_signature_v4.default_credentials_provider_chain}
final class DefaultCredentialsProviderChain
    extends AWSCredentialsProviderChain {
  /// {@macro aws_signature_v4.default_credentials_provider_chain}
  const DefaultCredentialsProviderChain();

  @override
  List<AWSCredentialsProvider> get chain => const [
        EnvironmentCredentialsProvider(),
        ProfileCredentialsProvider(),
        // TODO(dnys1): EC2 IMDS + ECS
      ];

  @override
  String get runtimeTypeName => 'DefaultCredentialsProviderChain';
}
