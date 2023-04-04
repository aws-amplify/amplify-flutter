// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_common.amplify_http_client}
/// Base client for Amplify HTTP operations.
/// {@endtemplate}
class AmplifyHttpClient extends AWSBaseHttpClient {
  /// {@macro amplify_common.amplify_http_client}
  AmplifyHttpClient(
    DependencyManager dependencies, {
    AWSHttpClient? baseClient,
  })  : _userAgent = dependencies.getOrCreate(),
        baseClient = baseClient ?? dependencies.getOrCreate();

  @override
  final AWSHttpClient baseClient;

  final AmplifyUserAgent _userAgent;

  @override
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  ) async {
    final scopedUserAgent = Zone.current[AmplifyUserAgent] as AmplifyUserAgent?;
    final userAgent = scopedUserAgent ?? _userAgent;
    request.headers.update(
      AWSHeaders.platformUserAgent,
      (value) => '$value $userAgent',
      ifAbsent: () => '$userAgent',
    );
    return request;
  }
}
