// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;
import 'package:aws_common/aws_common.dart';
import 'package:aws_kinesis_datastreams_dart/src/sdk/src/kinesis/kinesis_client.dart';
import 'package:aws_kinesis_datastreams_dart/src/sdk/src/kinesis/model/put_records_request.dart';
import 'package:aws_kinesis_datastreams_dart/src/sdk/src/kinesis/model/put_records_response.dart';
import 'package:smithy/smithy.dart';

/// Adapts the foundation [foundation.AWSCredentialsProvider] to the
/// `amplify_core` [amplify_core.AWSCredentialsProvider] expected by the
/// Smithy-generated SDK client.
class _CredentialsProviderAdapter
    implements amplify_core.AWSCredentialsProvider {
  const _CredentialsProviderAdapter(this._provider);

  final foundation.AWSCredentialsProvider _provider;

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

/// Wraps an [AWSHttpClient] to append a library-specific user agent
/// component to every outgoing request.
class _UserAgentHttpClient extends AWSBaseHttpClient {
  _UserAgentHttpClient(this.baseClient);

  @override
  final AWSHttpClient baseClient;

  @override
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  ) async {
    request.headers.update(
      AWSHeaders.platformUserAgent,
      (value) => '$value ${WrappedKinesisClient.userAgentComponent}',
      ifAbsent: () => WrappedKinesisClient.userAgentComponent,
    );
    return request;
  }
}

/// {@template aws_kinesis_datastreams.sdk.wrapped_kinesis_client}
/// A wrapped [KinesisClient] which allows mockable HttpClient and
/// injects a library-specific user agent component.
/// {@endtemplate}
class WrappedKinesisClient implements KinesisClient {
  /// {@macro aws_kinesis_datastreams.sdk.wrapped_kinesis_client}
  WrappedKinesisClient({
    required String region,
    Uri? baseUri,
    required foundation.AWSCredentialsProvider credentialsProvider,
    AWSHttpClient? httpClient,
  }) : _base = KinesisClient(
         region: region,
         baseUri: baseUri,
         credentialsProvider: _CredentialsProviderAdapter(credentialsProvider),
       ),
       _httpClient = httpClient;

  /// User agent component identifying this library.
  static const userAgentComponent =
      'md/amplify-kinesis#0.1.0 lib/amplify-flutter#0.1.0';

  final KinesisClient _base;
  final AWSHttpClient? _httpClient;

  @override
  SmithyOperation<PutRecordsResponse> putRecords(
    PutRecordsRequest input, {
    AWSHttpClient? client,
    amplify_core.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.putRecords(
      input,
      client: client ?? _UserAgentHttpClient(_httpClient ?? AWSHttpClient()),
      credentialsProvider: credentialsProvider,
    );
  }
}
