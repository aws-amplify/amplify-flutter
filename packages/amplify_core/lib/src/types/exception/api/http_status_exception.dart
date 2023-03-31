// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.api.http_status_exception}
/// An HTTP error encountered during a REST API call, i.e. for calls returning
/// non-2xx status codes.
/// {@endtemplate}
class HttpStatusException extends ApiException {
  /// The HTTP response from the server.
  final AWSHttpResponse response;

  /// {@macro rest_exception}
  HttpStatusException(this.response) : super(response.decodeBody());

  /// The HTTP response from the server.
  final AWSHttpResponse response;

  @override
  String toString() {
    return 'HttpStatusException{response=$response}';
  }
}
