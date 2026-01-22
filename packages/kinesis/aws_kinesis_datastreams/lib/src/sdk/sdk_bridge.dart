// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/kinesis_client.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_request.dart';
import 'package:aws_kinesis_datastreams/src/sdk/src/kinesis/model/put_records_response.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:smithy/smithy.dart';

/// {@template aws_kinesis_datastreams.sdk.wrapped_kinesis_client}
/// A wrapped [KinesisClient] which allows mockable HttpClient
/// {@endtemplate}
class WrappedKinesisClient implements KinesisClient {
  /// {@macro aws_kinesis_datastreams.sdk.wrapped_kinesis_client}
  WrappedKinesisClient({
    required String region,
    Uri? baseUri,
    required AWSCredentialsProvider credentialsProvider,
    AWSHttpClient? httpClient,
  })  : _base = KinesisClient(
          region: region,
          baseUri: baseUri,
          credentialsProvider: credentialsProvider,
        ),
        _httpClient = httpClient;

  final KinesisClient _base;
  final AWSHttpClient? _httpClient;

  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  DependencyManager? _dependencyManager;

  DependencyManager get _deps {
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    return _dependencyManager ??= Amplify.dependencies;
  }

  @override
  SmithyOperation<PutRecordsResponse> putRecords(
    PutRecordsRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    return _base.putRecords(
      input,
      client: client ?? _httpClient ?? _deps.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
  }
}
