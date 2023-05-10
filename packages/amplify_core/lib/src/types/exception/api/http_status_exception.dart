// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

@Deprecated('Use HttpStatusException instead')
typedef RestException = HttpStatusException;

/// {@template amplify_core.api.http_status_exception}
/// An HTTP error encountered during a REST API call, i.e. for calls returning
/// non-2xx status codes.
/// {@endtemplate}
class HttpStatusException extends ApiException {
  /// {@macro rest_exception}
  HttpStatusException(this.response)
      : super(
          response.decodeBody(),
          underlyingException: 'HTTP Status code: ${response.statusCode}',
        );

  /// The HTTP response from the server.
  final AWSHttpResponse response;
}
