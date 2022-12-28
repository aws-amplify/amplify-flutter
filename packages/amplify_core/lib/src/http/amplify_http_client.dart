// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_common.amplify_http_client}
/// Base client for Amplify HTTP operations.
/// {@endtemplate}
class AmplifyHttpClient extends AWSBaseHttpClient {
  /// {@macro amplify_common.amplify_http_client}
  AmplifyHttpClient({
    AWSHttpClient? baseClient,
  }) : baseClient = baseClient ?? AWSHttpClient();

  @override
  final AWSHttpClient baseClient;

  late final String _userAgent = [
    if (zIsFlutter)
      'amplify-flutter/${Amplify.version}'
    else
      'amplify-dart/${Amplify.version}',
    osIdentifier,
  ].join(' ');

  @override
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  ) async {
    request.headers.update(
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent,
      (value) => '$value $_userAgent',
      ifAbsent: () => _userAgent,
    );
    return request;
  }
}
