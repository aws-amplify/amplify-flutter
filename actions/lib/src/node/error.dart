// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

@JS('Error')
@staticInterop
extension type JSError(JSObject it) {
  external JSString get message;
  external JSString get code;
  external JSString get stack;
  external JSAny? get cause;
}
