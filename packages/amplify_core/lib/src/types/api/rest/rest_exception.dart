// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template rest_exception}
/// An HTTP error encountered during a REST API call, i.e. for calls returning
/// non-2xx status codes.
/// {@endtemplate}
class RestException extends ApiException {
  /// The HTTP response from the server.
  final AWSHttpResponse response;

  /// {@macro rest_exception}
  RestException(this.response) : super(response.decodeBody());

  @override
  String toString() {
    return 'RestException{response=$response}';
  }
}
