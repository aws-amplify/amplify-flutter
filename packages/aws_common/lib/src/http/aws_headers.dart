// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Headers used in AWS requests.
abstract class AWSHeaders {
  const AWSHeaders._();

  /// The `Accept` header.
  static const accept = 'Accept';

  /// The `X-Amz-Algorithm` header.
  static const algorithm = 'X-Amz-Algorithm';

  /// The `X-Amz-User-Agent` header.
  static const amzUserAgent = 'X-Amz-User-Agent';

  /// The `Authorization` header.
  static const authorization = 'Authorization';

  /// The `Cache-Control` header.
  static const cacheControl = 'Cache-Control';

  /// The `Content-Encoding` header.
  static const contentEncoding = 'Content-Encoding';

  /// The `Content-Length` header.
  static const contentLength = 'Content-Length';

  /// The `Content-Type` header.
  static const contentType = 'Content-Type';

  /// The `X-Amz-Content-Sha256` header.
  static const contentSHA256 = 'X-Amz-Content-Sha256';

  /// The `X-Amz-Credential` header.
  static const credential = 'X-Amz-Credential';

  /// The `X-Amz-Date` header.
  static const date = 'X-Amz-Date';

  /// The `X-Amz-Decoded-Content-Length` header.
  static const decodedContentLength = 'X-Amz-Decoded-Content-Length';

  /// The `X-Amz-Expires` header.
  static const expires = 'X-Amz-Expires';

  /// The `Host` header.
  static const host = 'Host';

  /// The `Location` header.
  static const location = 'Location';

  /// The `X-Amz-Region-Set` header.
  static const regionSet = 'X-Amz-Region-Set';

  /// The `X-Amz-Retry-After` header.
  static const retryAfter = 'X-Amz-Retry-After';

  /// The `amz-sdk-invocation-id` header.
  static const sdkInvocationId = 'amz-sdk-invocation-id';

  /// The `amz-sdk-request` header.
  static const sdkRequest = 'amz-sdk-request';

  /// The `X-Amz-Security-Token` header.
  static const securityToken = 'X-Amz-Security-Token';

  /// The `X-Amz-Signature` header.
  static const signature = 'X-Amz-Signature';

  /// The `X-Amz-SignedHeaders` header.
  static const signedHeaders = 'X-Amz-SignedHeaders';

  /// The `X-Amz-Target` header.
  static const target = 'X-Amz-Target';

  /// The `Transfer-Encoding` header.
  static const transferEncoding = 'Transfer-Encoding';

  /// The `User-Agent` header.
  static const userAgent = 'User-Agent';
}
