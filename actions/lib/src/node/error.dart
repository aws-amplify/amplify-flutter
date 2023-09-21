// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

@JS('Error')
@staticInterop
extension type JSError(JSObject it) {
  external String get message;
  external String get code;
  external String get stack;
  external JSAny? get cause;
}
