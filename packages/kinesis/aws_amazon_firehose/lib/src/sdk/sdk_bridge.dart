// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;
import 'package:aws_amazon_firehose/src/sdk/src/firehose/firehose_client.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_input.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_output.dart';
import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

/// Adapts the foundation [foundation.AWSCredentialsProvider] to the
/// `amplify_core` [amplify_core.AWSCredentialsProvider] expected by the
/// Smithy-generated SDK client.
class _CredentialsProviderAdapter
    implements amplify_core.AWSCredentialsProvider {
  const _CredentialsProviderAdapter(this._provider);

  final foundation.AWSCredentialsProvider<foundation.AWSCredentials> _provider;

  @override
  String get runtimeTypeName => '_CredentialsProviderAdapter';

  @override
  Future<amplify_core.AWSCredentials> retrieve() async {
    final creds = await _provider.resolve();
    if (creds is foundation.TemporaryCredentials) {
      return amplify_core.AWSCredentials(
        creds.accessKeyId,
        creds.secretAccessKey,
        creds.sessionToken,
        creds.expiration,
      );
    }
    return amplify_core.AWSCredentials(
      creds.accessKeyId,
      creds.secretAccessKey,
    );
  }
}

/// {@template aws_amazon_firehose.sdk.wrapped_firehose_client}
/// A wrapped [FirehoseClient] which allows mockable HttpClient
/// {@endtemplate}
class WrappedFirehoseClient implements FirehoseClient {
  /// {@macro aws_amazon_firehose.sdk.wrapped_firehose_client}
  WrappedFirehoseClient({
    required String region,
    Uri? baseUri,
    required foundation.AWSCredentialsProvider<foundation.AWSCredentials>
        credentialsProvider,
    AWSHttpClient? httpClient,
  })  : _base = FirehoseClient(
          region: region,
          baseUri: baseUri,
          credentialsProvider: _CredentialsProviderAdapter(credentialsProvider),
        ),
        _httpClient = httpClient;

  final FirehoseClient _base;
  final AWSHttpClient? _httpClient;

  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  amplify_core.DependencyManager? _dependencyManager;

  amplify_core.DependencyManager get _deps {
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    return _dependencyManager ??= amplify_core.Amplify.dependencies;
  }

  @override
  SmithyOperation<PutRecordBatchOutput> putRecordBatch(
    PutRecordBatchInput input, {
    AWSHttpClient? client,
    amplify_core.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.putRecordBatch(
      input,
      client: client ??
          _httpClient ??
          _deps.getOrCreate<amplify_core.AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }
}
