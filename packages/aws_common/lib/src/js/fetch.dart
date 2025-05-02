// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

import 'package:aws_common/src/js/common.dart';
import 'package:web/web.dart';

/// How to handle a redirect response of a [Request].
enum RequestRedirectValues with JSEnum {
  /// The default behavior.
  default$,

  /// Automatically follow redirects.
  follow,

  /// Abort with an error if a redirect occurs.
  error,

  /// Caller intends to process the response in another context.
  manual,
}

@JS('fetch')
external JSPromise<Response> _fetch(String url, [RequestInit? init]);

/// The global fetch() method starts the process of fetching a resource from
/// the network, returning a promise which is fulfilled once the response is
/// available.
Future<Response> fetch(String url, [RequestInit? init]) {
  return _fetch(url, init).toDart;
}
