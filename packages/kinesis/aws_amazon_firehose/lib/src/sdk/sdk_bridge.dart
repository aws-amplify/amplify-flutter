// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/firehose_client.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_input.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_output.dart';
import 'package:smithy/smithy.dart';

/// {@template aws_amazon_firehose.sdk.wrapped_firehose_client}
/// A wrapped [FirehoseClient] which allows mockable HttpClient
/// {@endtemplate}
class WrappedFirehoseClient implements FirehoseClient {
  /// {@macro aws_amazon_firehose.sdk.wrapped_firehose_client}
  WrappedFirehoseClient({
    required String region,
    Uri? baseUri,
    required AWSCredentialsProvider credentialsProvider,
    AWSHttpClient? httpClient,
  })  : _base = FirehoseClient(
          region: region,
          baseUri: baseUri,
          credentialsProvider: credentialsProvider,
        ),
        _httpClient = httpClient;

  final FirehoseClient _base;
  final AWSHttpClient? _httpClient;

  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  DependencyManager? _dependencyManager;

  DependencyManager get _deps {
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    return _dependencyManager ??= Amplify.dependencies;
  }

  @override
  SmithyOperation<PutRecordBatchOutput> putRecordBatch(
    PutRecordBatchInput input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.putRecordBatch(
      input,
      client: client ?? _httpClient ?? _deps.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }
}
