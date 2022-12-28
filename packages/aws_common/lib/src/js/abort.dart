// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_classes_with_only_static_members

@JS()
library aws_common.js.abort;

import 'package:js/js.dart';
import 'package:js/js_util.dart' as js_util;

/// {@template aws_http.js.abort_signal}
/// A signal object that allows you to communicate with a DOM request (such as
/// a fetch request) and abort it if required via an [AbortController] object.
/// {@endtemplate}
@JS()
abstract class AbortSignal {
  /// An [AbortSignal] instance that is already set as aborted.
  external static AbortSignal abort([String? reason]);

  /// An [AbortSignal] instance that will automatically abort after a specified
  /// time.
  external static AbortSignal timeout(int millis);
}

/// {@macro aws_http.js.abort_signal}
extension PropsAbortSignal on AbortSignal {
  /// Whether the request(s) the signal is communicating with is/are aborted
  /// (`true`) or not (`false`).
  external bool get aborted;

  /// The abort reason, once the signal has aborted.
  String? get reason =>
      js_util.getProperty<Object?>(this, 'reason')?.toString();
}

/// {@template aws_http.js.abort_controller}
/// A controller object that allows you to abort one or more Web requests as
/// and when desired.
/// {@endtemplate}
@JS()
class AbortController {
  /// {@macro aws_http.js.abort_controller}
  external factory AbortController();

  /// The [AbortSignal], which can be used to communicate with, or to abort,
  /// a DOM request.
  external AbortSignal get signal;

  /// Aborts a DOM request before it has completed.
  external void abort([String? reason]);
}

/// {@macro aws_http.js.abort_controller}
extension PropsAbortController on AbortController {
  // TODO(dnys1): Move methods here when staticInterop is enabled.
}
