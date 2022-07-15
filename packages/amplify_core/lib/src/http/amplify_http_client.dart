// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/platform/platform.dart';
import 'package:http/http.dart' as http;

/// {@template amplify_common.amplify_http_client}
/// Base client for Amplify HTTP operations.
/// {@endtemplate}
class AmplifyHttpClient extends http.BaseClient {
  /// {@macro amplify_common.amplify_http_client}
  AmplifyHttpClient({
    http.Client? baseClient,
  }) : _baseClient = baseClient ?? http.Client();

  final http.Client _baseClient;

  late final String _userAgent = [
    'amplify-flutter/${Amplify.version}',
    osIdentifier,
  ].join(' ');

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers.update(
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent,
      (value) => '$value $_userAgent',
      ifAbsent: () => _userAgent,
    );
    return _baseClient.send(request);
  }
}
