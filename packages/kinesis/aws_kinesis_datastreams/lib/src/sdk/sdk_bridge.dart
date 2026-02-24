// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;
import 'package:aws_common/aws_common.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/kinesis_client.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_request.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_response.dart';
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

/// {@template aws_kinesis_datastreams.sdk.wrapped_kinesis_client}
/// A wrapped [KinesisClient] which allows mockable HttpClient
/// {@endtemplate}
class WrappedKinesisClient implements KinesisClient {
  /// {@macro aws_kinesis_datastreams.sdk.wrapped_kinesis_client}
  WrappedKinesisClient({
    required String region,
    Uri? baseUri,
    required foundation.AWSCredentialsProvider<foundation.AWSCredentials>
        credentialsProvider,
    AWSHttpClient? httpClient,
  })  : _base = KinesisClient(
          region: region,
          baseUri: baseUri,
          credentialsProvider: _CredentialsProviderAdapter(credentialsProvider),
        ),
        _httpClient = httpClient;

  final KinesisClient _base;
  final AWSHttpClient? _httpClient;

  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  amplify_core.DependencyManager? _dependencyManager;

  amplify_core.DependencyManager get _deps {
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    return _dependencyManager ??= amplify_core.Amplify.dependencies;
  }

  @override
  SmithyOperation<PutRecordsResponse> putRecords(
    PutRecordsRequest input, {
    AWSHttpClient? client,
    amplify_core.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.putRecords(
      input,
      client: client ??
          _httpClient ??
          _deps.getOrCreate<amplify_core.AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }
}
